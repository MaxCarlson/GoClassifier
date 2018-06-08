import os
import keras
import random
import numpy as np
import tensorflow as tf
from Globals import BoardSize, BoardLength, BoardDepth, BLACK, WHITE

import multiprocessing, threading, queue

class threadsafe_iter:
    """Takes an iterator/generator and makes it thread-safe by
    serializing call to the `next` method of given iterator/generator.
    """
    def __init__(self, it):
        self.it = it
        self.lock = threading.Lock()

    def __iter__(self):
        return self

    def __next__(self):
        with self.lock:
            return self.it.__next__()


def threadsafe_generator(f):
    """A decorator that takes a generator function and makes it thread-safe.
    """
    def g(*a, **kw):
        return threadsafe_iter(f(*a, **kw))
    return g

class Generator():
    def __init__(self, featurePath, labelPath, fileShape, batchSize):
        self.featurePath = featurePath
        self.labelPath = labelPath
        self.batchSize = batchSize
        self.fileShape = fileShape

    # Set the first layer of the feature maps 
    # to the side-to-move color code (all ones for black, 0's for white)
    def setColorLayer(self, X, C, m):
        for i in range(0, m):
            X[i, 0] = C[i] - 1

    def extractNpy(self, xFile, yFile):
        XComp = np.load(xFile)
        YCol  = np.load(yFile)
        m = np.shape(YCol)[0]
        Y = YCol[0:m, 0]
        C = YCol[0:m, 1]
        Y = tf.keras.utils.to_categorical(Y, BoardSize)

        X = np.zeros((m, BoardDepth, BoardLength, BoardLength))

        self.setColorLayer(X, C, m)
        
        # Build the binary feature maps for all recorded board states
        # for each example
        for i in range(0, m):
            # Add both layers representing player and opponent stones
            color = C[i]
            opponent = WHITE if color == BLACK else BLACK
            index = 0
            for j in range(1, BoardDepth, 2):
                X[i, j]   = XComp[i, index] == color
                X[i, j+1] = XComp[i, index] == opponent
                index += 1

        return X, Y

    # Use only the # of files we're told to
    def shapeFileList(self, fileList):
        return fileList[self.fileShape[0]:self.fileShape[1]]


    def fillQueue(self, q, inidicies, i):
        return

    def loadFile(self, fList, lList, indicies, i):
        sampleF = fList[indices[i]]
        sampleL = lList[indices[i]]
        
        wholePathF = self.featurePath + '/' + sampleF
        wholePathL = self.labelPath + '/' + sampleL

        XX, YY = self.extractNpy(wholePathF, wholePathL)
        X = np.zeros((self.batchSize, BoardDepth, BoardLength, BoardLength))
        Y = np.zeros((self.batchSize, BoardSize))
        return X, Y

    # Continuously read and generate data for the model
    # As it likely can't fit in memory
    def generator(self):
    
        fList = self.shapeFileList(os.listdir(self.featurePath))
        lList = self.shapeFileList(os.listdir(self.labelPath))

        indices = np.arange(0, len(fList))

        featQ = queue()

        i = 0
        while True:
            if i >= len(fList):
                i = 0
                random.shuffle(indices)

            #thread.start_new_thread(fillQueue, (featQ, indices, i))

            XX, YY = self.loadFile(fList, lList, indices, i)

            # Roll for a random spot to start the batch range slice
            m = np.shape(XX)[0] 
            roll = random.randint(0, m - 1)

            if roll + self.batchSize < m:
                X = XX[roll:roll + self.batchSize]
                Y = YY[roll:roll + self.batchSize]

            # This shouldn't happen all that often,
            # Should curate data to avoid it infact!
            elif self.batchSize > m:
                for b in range(self.batchSize):
                    roll = random.randint(0, np.shape(XX)[0]-1)        
                    X[b] = XX[roll]
                    Y[b] = YY[roll]

            else:
                # If it's not a good fit, take the upper slice then the lower one
                m1 = np.shape(XX[roll:m])[0]
                m2 = self.batchSize - m1
                X[0:m1] = XX[roll:m]
                Y[0:m1] = YY[roll:m]
                X[m1:self.batchSize] = XX[0:m2]
                Y[m1:self.batchSize] = YY[0:m2]

            yield X, Y
            i += 1

    # Count the number of samples for each file we're using
    def stepsPerEpoch(self):

        featureList = self.shapeFileList(os.listdir(self.featurePath))
        labelList = self.shapeFileList(os.listdir(self.labelPath))
        
        numFiles = len(labelList)  
        count = 0
        for i in range(0 , numFiles):
            featurePath = self.featurePath + '/' + featureList[i]
            labelPath = self.labelPath + '/' + labelList[i]
            X, Y = self.extractNpy(featurePath, labelPath)
            count += np.shape(Y)[0]

        return count / self.batchSize