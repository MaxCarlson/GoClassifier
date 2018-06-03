from __future__ import absolute_import, division, print_function

import os
import matplotlib.pyplot as plt

import tensorflow as tf
import tensorflow.contrib.eager as tfe

import numpy as np
import random
import keras
from keras import backend as K

from DataGenerator import DataGenerator


sess = tf.Session()
K.set_session(sess)

sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))

BoardLength = 19
BoardSize = BoardLength ** 2

gdataSize = str(70)
testDataSz = str(15)
fileNameXY = 'goData' + gdataSize + '.csv'
fileNameXYt = 'testData' + testDataSz + '.csv'

WeightPath = "Weights.h5"


# Get our data in the proper format for the Conv2D
def extractDatasets(fileName):
    XY = np.genfromtxt(fileName, delimiter=',')
    Y = XY[:,0]
    Y = tf.keras.utils.to_categorical(Y, BoardSize)
    X = XY[:,1:BoardSize+1]
    X = np.reshape(X, (np.shape(X)[0], BoardLength, BoardLength))
    X = np.expand_dims(X, axis=1)
    return X, Y


X , Y  = extractDatasets(fileNameXY)
Xt, Yt = extractDatasets(fileNameXYt)

params = {'dim': (1, BoardLength, BoardLength),
         'batch_size': 1,
         'n_classes': BoardSize,
         'n_channels': 1,
         'shuffle': True }

partition = {'train': ['data1', 'data2']}
labels = {'train': ['data1', 'data2']}

#trainingGen = DataGenerator(partition['train'], labels, **params)

def extractNpy(fileName):
    XY = np.load(fileName)
    Y = XY[:,0]
    Y = tf.keras.utils.to_categorical(Y, BoardSize)
    X = XY[:,1:BoardSize+1]
    X = np.reshape(X, (np.shape(X)[0], BoardLength, BoardLength))
    X = np.expand_dims(X, axis=1)
    return X, Y

def generator(batchSize):
    
    datasets = 5

    datasetIdx = 1

    path = 'data'

    fileList = os.listdir(path)

    i = 0
    while True:
        if i == len(fileList):
            i = 0
            random.shuffle(fileList)
        sample = fileList[i]
        
        wholePath = path + '/' + sample

        XX, YY = extractNpy(wholePath)
        X = []
        Y = []
        for b in range(batchSize):

            roll = random.randint(0, np.size(XX)[0])

            X[b] = X[roll]
            Y[b] = Y[roll]

        yield X, Y
        i += 1

convSize = 27
batchSize = 2000
numEpochs = 2000
hiddenSize = 1024

model = tf.keras.Sequential([
    tf.keras.layers.Convolution2D(convSize, (3, 3), activation='relu', input_shape=(1, BoardLength, BoardLength), data_format='channels_first'), 
    tf.keras.layers.Convolution2D(convSize, (3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2)),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Convolution2D(convSize, (3, 3), activation='relu'),
    tf.keras.layers.Convolution2D(convSize, (3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2)),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Dense(BoardSize, activation='softmax'),
])


model.summary()

optimizer = tf.train.AdamOptimizer(learning_rate=0.001)

model.compile(optimizer=optimizer, loss='categorical_crossentropy', metrics=['accuracy']) # Look into using to_catagorical on outputs instead of generating huge arrays of data

model.fit_generator(generator=generator(batchSize), steps_per_epoch=5, verbose=2, workers=1)

#model.fit(X, Y, validation_data=(Xt, Yt), epochs=numEpochs, batch_size=batchSize, verbose=2)

#
#model.save_weights(WeightPath)

# Current best, though it's compute heavy convSize=64
model = tf.keras.Sequential([
    tf.keras.layers.Convolution2D(convSize, (3, 3), activation='relu', input_shape=(1, BoardLength, BoardLength), data_format='channels_first'), 
    tf.keras.layers.Convolution2D(convSize, (3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2)),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Dense(BoardSize, activation='softmax'),
])

model = tf.keras.Sequential([
    tf.keras.layers.Dense(hiddenSize, activation='relu', input_shape=(BoardSize,)),
    tf.keras.layers.Dropout(0.4),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.4),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.4),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.4),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.4),
    tf.keras.layers.Dense(BoardSize, activation='softmax')
])
