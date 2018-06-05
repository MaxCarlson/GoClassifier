import os
import keras
import random
import numpy as np
import tensorflow as tf
from Globals import BoardSize, BoardLength, BoardDepth

class Generator:
    def __init__(self, featurePath, labelPath, fileShape, batchSize):
        self.featurePath = featurePath
        self.labelPath = labelPath
        self.batchSize = batchSize
        self.fileShape = fileShape

    # Shape the data
    # Ideally we'd do this on saving it. 
    # Possibly need to split up features and lables to do this effeciantly?
    #def extractNpy(self, fileName):
    #    XY = np.load(fileName)
    #    Y = XY[:,0]
    #    Y = tf.keras.utils.to_categorical(Y, BoardSize)
    #    X = XY[:,1:BoardSize+1]
    #    X = np.reshape(X, (np.shape(X)[0], BoardLength, BoardLength))
    #    X = np.expand_dims(X, axis=1)
    #    return X, Y

    def extractNpy(self, xFile, yFile):
        X = np.load(xFile)
        Y = np.load(yFile)
        Y = tf.keras.utils.to_categorical(Y, BoardSize)
        return X, Y

    # Use only the # of files we're told to
    def shapeFileList(self, fileList):
        return fileList[self.fileShape[0]:self.fileShape[1]]

    # Continuously read and generate data for the model
    # As it likely can't fit in memory
    def generator(self):
    
        fList = os.listdir(self.featurePath)
        lList = os.listdir(self.labelPath)

        indices = np.arange(0, len(fList))

        i = 0
        while True:
            if i >= len(fileList):
                i = 0
                random.shuffle(fileList)
            sample = fileList[i]
        
            wholePath = self.path + '/' + sample
            wholePathy = self.path + '/'

            XX, YY = self.extractNpy(wholePath)
            X = np.zeros((self.batchSize, BoardDepth, BoardLength, BoardLength))
            Y = np.zeros((self.batchSize, BoardSize))

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