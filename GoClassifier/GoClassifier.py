from __future__ import absolute_import, division, print_function

import os
import matplotlib.pyplot as plt

import tensorflow as tf
#import tensorflow.contrib.eager as tfe

import numpy as np
import random
import keras
from keras import backend as K

from DataGenerator import Generator
from Globals import BoardLength, BoardSize
from CurateData import curateData

# Uncomment this if you want to curate data from the 
# Professional dataset https://github.com/yenw/computer-go-dataset#1-tygem-dataset
#curateData()

sess = tf.Session()
K.set_session(sess)

sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))


WeightPath = "Weights.h5"
pathForDataFiles = 'data'

batchSize = 2000
numEpochs = 2000
hiddenSize = 32

trainFiles = (1, 2)
gen = Generator(pathForDataFiles, trainFiles, batchSize)
valFiles = (100, 101)
valGen = Generator(pathForDataFiles, valFiles, batchSize)

filters = 32

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

model.summary()

optimizer = tf.train.AdamOptimizer(learning_rate=0.001)

model.compile(optimizer=optimizer, loss='categorical_crossentropy', metrics=['accuracy']) # Look into using to_catagorical on outputs instead of generating huge arrays of data


model.fit_generator(generator=gen.generator(),
                    steps_per_epoch=gen.stepsPerEpoch(),
                    validation_data=valGen.generator(),
                    validation_steps=valGen.stepsPerEpoch(),
                    epochs=numEpochs, 
                    verbose=2, workers=1)

model.save('LatestModel')
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
