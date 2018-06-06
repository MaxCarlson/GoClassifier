from __future__ import absolute_import, division, print_function

import os
import matplotlib.pyplot as plt

import tensorflow as tf
#import tensorflow.contrib.eager as tfe

import numpy as np
import random
import keras
from keras import backend as K
import matplotlib.pyplot as plt

from DataGenerator import Generator
from Globals import BoardLength, BoardSize, BoardDepth
from CurateData import curateData

# Uncomment this if you want to curate data from the 
# Professional dataset https://github.com/yenw/computer-go-dataset#1-tygem-dataset
curateData()

sess = tf.Session()
K.set_session(sess)

sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))

def plotHistory(history):
    plt.subplot(1, 2, 1)
    plt.plot(history.history['acc'])
    plt.plot(history.history['val_acc'])
    plt.title('model accuracy')
    plt.ylabel('accuracy')
    plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    #plt.show()
    # summarize history for loss
    plt.subplot(1, 2, 2)
    plt.plot(history.history['loss'])
    plt.plot(history.history['val_loss'])
    plt.title('model loss')
    plt.ylabel('loss')
    plt.xlabel('epoch')
    plt.legend(['train', 'test'], loc='upper left')
    plt.show()


WeightPath = "Weights.h5"
featurePath = 'data/features'
labelPath = 'data/labels'

batchSize = 512
numEpochs = 250
hiddenSize = 32

trainFiles = (1, 70)
gen = Generator(featurePath, labelPath, trainFiles, batchSize)
valFiles = (72, 73)
valGen = Generator(featurePath, labelPath, valFiles, batchSize)

filters = 64

model = tf.keras.Sequential([
    tf.keras.layers.Convolution2D(filters, (5, 5),  input_shape=(BoardDepth, BoardLength, BoardLength), data_format='channels_first'), 
    tf.keras.layers.ZeroPadding2D(padding =(4, 4), data_format='channels_first'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=0.99), # Giving bad results?
    tf.keras.layers.Dropout(0.25),
    tf.keras.layers.Activation('relu'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=0.99),
    tf.keras.layers.Dropout(0.25),
    tf.keras.layers.Activation('relu'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=0.99),
    tf.keras.layers.Dropout(0.25),
    tf.keras.layers.Activation('relu'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=0.99),
    tf.keras.layers.Dropout(0.25),
    tf.keras.layers.Activation('relu'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=0.99),
    tf.keras.layers.Activation('relu'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2)),
    tf.keras.layers.Dropout(0.25),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=0.99),
    tf.keras.layers.Dropout(0.25),
    tf.keras.layers.Activation('relu'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=0.99),
    tf.keras.layers.Dropout(0.25),
    tf.keras.layers.Activation('relu'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2)),
    tf.keras.layers.Flatten(),
    #tf.keras.layers.Dense(hiddenSize, activation='relu'),
    #tf.keras.layers.Dropout(0.35),
    #tf.keras.layers.BatchNormalization(),
    tf.keras.layers.Dense(BoardSize, activation='softmax'),
])

model.summary()

optimizer = tf.train.AdamOptimizer(learning_rate=0.0018)

model.compile(optimizer=optimizer, loss='categorical_crossentropy', metrics=['accuracy']) # Look into using to_catagorical on outputs instead of generating huge arrays of data

def extractNpy(fileName):
        XY = np.genfromtxt(fileName, delimiter=',')
        Y = XY[:,0]
        Y = tf.keras.utils.to_categorical(Y, BoardSize)
        X = XY[:,1:BoardSize+1]
        X = np.reshape(X, (np.shape(X)[0], BoardLength, BoardLength))
        X = np.expand_dims(X, axis=1)
        return X, Y

#X, Y = extractNpy("data80.csv")
#Xt, Yt = extractNpy('test25.csv')

earlyExit = keras.callbacks.EarlyStopping(monitor='val_acc', min_delta=0, patience=4)

#history = model.fit(X, Y, validation_data=(Xt, Yt), batch_size=batchSize, epochs=numEpochs, verbose=2, callbacks=[earlyExit])

history = model.fit_generator(generator=gen.generator(),
                    steps_per_epoch=gen.stepsPerEpoch(),
                    validation_data=valGen.generator(),
                    validation_steps=valGen.stepsPerEpoch(),
                    epochs=numEpochs, 
                    verbose=2, workers=1, callbacks=[earlyExit])

plotHistory(history)

#model.save('LatestModel')
#
#model.save_weights(WeightPath)

# Alpha go like model
model = tf.keras.Sequential([
    tf.keras.layers.Convolution2D(filters, (5, 5), activation='relu', input_shape=(1, BoardLength, BoardLength), data_format='channels_first'), 
    tf.keras.layers.ZeroPadding2D(padding=(4,4), data_format='channels_first'),
    tf.keras.layers.Convolution2D(filters, (3, 3), activation='relu', data_format='channels_first'),
    tf.keras.layers.Convolution2D(filters, (3, 3), activation='relu', data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding=(1,1), data_format='channels_first'),
    tf.keras.layers.Convolution2D(filters, (3, 3), activation='relu', data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding=(1,1), data_format='channels_first'),
    tf.keras.layers.Convolution2D(filters, (3, 3), activation='relu', data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding=(1,1), data_format='channels_first'),
    tf.keras.layers.Convolution2D(filters, (3, 3), activation='relu', data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding=(1,1), data_format='channels_first'),
    tf.keras.layers.Convolution2D(filters, (3, 3), activation='relu', data_format='channels_first'),
    tf.keras.layers.ZeroPadding2D(padding=(1,1), data_format='channels_first'),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dropout(0.24),
    tf.keras.layers.Dense(BoardSize, activation='softmax'),
])

# Current best, though it's compute heavy convSize=64
model = tf.keras.Sequential([
    tf.keras.layers.Convolution2D(64, (3, 3), activation='relu', input_shape=(1, BoardLength, BoardLength), data_format='channels_first'), 
    tf.keras.layers.Convolution2D(64, (3, 3), activation='relu'),
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
    tf.keras.layers.Dense(1024, activation='relu', input_shape=(BoardSize,)),
    tf.keras.layers.Dropout(0.45),
    tf.keras.layers.Dense(1024, activation='relu'),
    tf.keras.layers.Dropout(0.5),
    tf.keras.layers.Dense(1024, activation='relu'),
    tf.keras.layers.Dropout(0.45),
    tf.keras.layers.Dense(1024, activation='relu'),
    tf.keras.layers.Dropout(0.5),
    tf.keras.layers.Dense(1024, activation='relu'),
    tf.keras.layers.Dropout(0.45),
    tf.keras.layers.Dense(BoardSize, activation='softmax')
])
