import os
import keras
import random
import numpy as np
import tensorflow as tf

class Generator:
    def __init__(self, boardLength, filePath, batchSize):
        self.length = boardLength
        self.size = boardLength ** 2
        self.path = filePath
        self.batchSize = batchSize

    def extractNpy(self, fileName):
        XY = np.load(fileName)
        Y = XY[:,0]
        Y = tf.keras.utils.to_categorical(Y, self.size)
        X = XY[:,1:self.size+1]
        X = np.reshape(X, (np.shape(X)[0], self.length, self.length))
        X = np.expand_dims(X, axis=1)
        return X, Y

    def generator(self):
    
        fileList = os.listdir(self.path)

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
            for b in range(self.batchSize):

                roll = random.randint(0, np.shape(XX)[0]-1)

                X[b] = XX[roll]
                Y[b] = YY[roll]

            yield X, Y
            i += 1

    # Count the number of samples for each file we're using
    def stepsPerEpoch(self):

        fileList = os.listdir(self.path)
        numFiles = len(fileList)
    
        count = 0
        for file in fileList:
            wholePath = self.path + '/' + file
            X, Y = self.extractNpy(wholePath)
            count += np.shape(X)[0]

        return count / self.batchSize