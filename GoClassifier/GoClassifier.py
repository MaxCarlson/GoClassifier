from __future__ import absolute_import, division, print_function

import os
import matplotlib.pyplot as plt

import tensorflow as tf
import tensorflow.contrib.eager as tfe

from keras import backend as K

#tf.enable_eager_execution()

sess = tf.Session()
K.set_session(sess)

sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))

BoardSize = 361

gdataSize = str(15)
gtestSize = str(15)
fileNameX = 'goData' + gdataSize + '.csv'
fileNameY = 'goDataRes' + gdataSize + '.csv'
fnameTestX = gtestSize + 'Test.csv'
fnameTestY = gtestSize + 'TestRes.csv'

#import numpy
#X  = numpy.random.random_integers(0, 1, (1500, BoardSize))
#Y  = numpy.random.random_integers(0, 1, (1500, BoardSize))

import numpy as np
from numpy import genfromtxt


X = genfromtxt(fileNameX, delimiter=',')

print(X[0])

Y = genfromtxt(fileNameY, delimiter=',')
Y = tf.keras.utils.to_categorical(Y, BoardSize)

Xt = genfromtxt(fnameTestX, delimiter=',')
Yt = genfromtxt(fnameTestY, delimiter=',')

hiddenSize = 1024


model = tf.keras.Sequential([
    tf.keras.layers.Dense(hiddenSize, activation='relu', input_shape=(BoardSize,)),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dense(hiddenSize, activation='relu'),
    tf.keras.layers.Dense(BoardSize, activation='softmax')
])


model.summary()

#optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.1)
optimizer = tf.train.AdamOptimizer(learning_rate=0.001)
#optimizer = tf.train.AdagradOptimizer(learning_rate=0.01)
#optimizer = tf.train.AdadeltaOptimizer(0.01)
#optimizer = tf.train.RMSPropOptimizer(0.0001)
#optimizer = tf.train.MomentumOptimizer(0.01, 1)

model.compile(optimizer=optimizer, loss='categorical_crossentropy', metrics=['accuracy']) # Look into using to_catagorical on outputs instead of generating huge arrays of data

#with tf.device('/cpu:0'):
model.fit(X, Y, validation_data=(Xt, Yt), epochs=2000, batch_size=1000, verbose=2)
#

#tf.keras.layers.Convolution1D(32, 3, 3, activation='relu', input_shape=(None,BoardSize)),
#tf.keras.layers.Convolution1D(32, 3, 3, activation='relu'),
#tf.keras.layers.MaxPooling1D(pool_size=2),
#tf.keras.layers.Flatten(),
#tf.keras.layers.Dense(hiddenSize, activation='relu'),
#tf.keras.layers.Dense(hiddenSize, activation='relu'),
#tf.keras.layers.Dense(BoardSize, activation='softmax')

