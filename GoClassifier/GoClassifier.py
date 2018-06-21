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
#curateData()

# Set it manually so C++ interface can use mem growth
config = tf.ConfigProto()
config.gpu_options.allow_growth = True

sess = tf.Session(config=config)
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
numEpochs = 2

# Use our generator to load data from files
# that would be too large to fit into memory
trainFiles = (1, 5)
gen = Generator(featurePath, labelPath, trainFiles, batchSize)
valFiles = (71, 72)
valGen = Generator(featurePath, labelPath, valFiles, batchSize)

filters = 64
batchMomentum = 0.99

model = tf.keras.Sequential([
    tf.keras.layers.Convolution2D(filters, (5, 5), input_shape=(BoardDepth, BoardLength, BoardLength), data_format='channels_first', name='Input'),
    tf.keras.layers.ZeroPadding2D(padding =(4, 4), data_format='channels_first', name='Pad0'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm0'), 
    tf.keras.layers.Dropout(0.25, name='Drop0'),
    tf.keras.layers.Activation('relu', name='Relu0'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv1'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm1'),
    tf.keras.layers.Dropout(0.25, name='Drop1'),
    tf.keras.layers.Activation('relu', name='Relu1'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv2'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first', name='Pad1'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm2'),
    tf.keras.layers.Dropout(0.25, name='Drop2'),
    tf.keras.layers.Activation('relu', name='Relu2'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv3'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first', name='Pad2'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm3'),
    tf.keras.layers.Dropout(0.25, name='Drop3'),
    tf.keras.layers.Activation('relu', name='Relu3'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv4'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm4'),
    tf.keras.layers.Activation('relu', name='Relu4'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2), name='Pool0'),
    tf.keras.layers.Dropout(0.25, name='Drop4'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv5'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first', name='Pad3'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm5'),
    tf.keras.layers.Dropout(0.25, name='Drop5'),
    tf.keras.layers.Activation('relu', name='Relu5'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv6'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first', name='Pad4'),
    tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm6'),
    tf.keras.layers.Dropout(0.25, name='Drop6'),
    tf.keras.layers.Activation('relu', name='Relu6'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2), name='Pool1'),
    tf.keras.layers.Flatten(name='Flatten0'),
    tf.keras.layers.Dense(BoardSize, activation='softmax', name='Output'),
])

model.summary()

# Find naming scheme
#img = tf.placeholder(tf.float32, shape=(1, BoardDepth, BoardLength, BoardLength), name='tmpInput')
#M = model(img)
#print('Model', model.name)
#print('Input', img.name)
#print('Output', M.name)

optimizer = tf.train.AdamOptimizer(learning_rate=0.0018)

model.compile(optimizer=optimizer, loss='categorical_crossentropy', metrics=['accuracy']) # Look into using to_catagorical on outputs instead of generating huge arrays of data

# Exit training if validation accuracy 
# starts declining
earlyExit = keras.callbacks.EarlyStopping(monitor='val_acc', min_delta=0, patience=0)

# Train the model
history = model.fit_generator(generator=gen.generator(),
                    steps_per_epoch=gen.stepsPerEpoch(),
                    validation_data=valGen.generator(),
                    validation_steps=valGen.stepsPerEpoch(),
                    epochs=numEpochs, 
                    verbose=2, workers=1, callbacks=[earlyExit])

plotHistory(history)

# Look at output of model for all zeros 
# (useful for debugging the C++ model loading)
test = np.zeros((1, BoardDepth, BoardLength, BoardLength))
preds = model.predict(test, 1, 2)
print(preds)

# Save the model
K.set_learning_phase(0)
with tf.Session() as sess:
    sess.run(tf.global_variables_initializer())
    saver = tf.train.Saver(tf.global_variables())
    saver.save(sess, './models/latestModel')
    tf.train.write_graph(sess.graph, '.', './models/graph.pb', as_text=False)
