import os
import keras
import random
import numpy as np
import tensorflow as tf

class Generator:
    def __init__(self, boardLength, filePath, fileShape, batchSize):
        self.length = boardLength
        self.size = boardLength ** 2
        self.path = filePath
        self.batchSize = batchSize
        self.fileShape = fileShape

    def extractNpy(self, fileName):
        XY = np.load(fileName)
        Y = XY[:,0]
        Y = tf.keras.utils.to_categorical(Y, self.size)
        X = XY[:,1:self.size+1]
        X = np.reshape(X, (np.shape(X)[0], self.length, self.length))
        X = np.expand_dims(X, axis=1)
        return X, Y

    def shapeFileList(self, fileList):
        return fileList[self.fileShape[0]:self.fileShape[1]]

    def generator(self):
    
        fileList =  self.shapeFileList(os.listdir(self.path))

        i = 0
        while True:
            if i == len(fileList):
                i = 0
                random.shuffle(fileList)
            sample = fileList[i]
        
            wholePath = self.path + '/' + sample

            XX, YY = self.extractNpy(wholePath)
            X = np.zeros((self.batchSize, 1, self.length, self.length))
            Y = np.zeros((self.batchSize, self.size))


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

            #for b in range(self.batchSize):

           #     roll = random.randint(0, np.shape(XX)[0]-1)
            
           #     X[b] = XX[roll]
           #     Y[b] = YY[roll]

            yield X, Y
            i += 1

    # Count the number of samples for each file we're using
    def stepsPerEpoch(self):

        fileList = self.shapeFileList(os.listdir(self.path))
        
        numFiles = len(fileList)
    
        count = 0
        for file in fileList:
            wholePath = self.path + '/' + file
            X, Y = self.extractNpy(wholePath)
            count += np.shape(X)[0]

        return count / self.batchSize