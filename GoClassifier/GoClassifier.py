from __future__ import absolute_import, division, print_function

import os
import matplotlib.pyplot as plt

import tensorflow as tf
tf.reset_default_graph()
#import tensorflow.contrib.eager as tfe

import numpy as np
import random
import keras
from keras import backend as K
import matplotlib.pyplot as plt

from DataGenerator import Generator
from Globals import BoardLength, BoardSize, BoardDepth
from CurateData import curateData
from MiscUtils import saveModel, printModelPreds, plotHistory

# Uncomment this if you want to curate data from the 
# Professional dataset https://github.com/yenw/computer-go-dataset#1-tygem-dataset
#curateData()

# Set it manually so C++ interface can use mem growth
config = tf.ConfigProto()
config.gpu_options.allow_growth = True


sess = tf.Session(config=config)
K.set_session(sess)
sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))

#saver = tf.train.import_meta_graph('./models/latestModel.meta')
#saver.restore(sess, './models/latestModel')

#test = np.zeros((1, BoardDepth, BoardLength, BoardLength))
#result = sess.run('Output/Softmax', feed_dict={'Input_input': test})
#print(result)

featurePath = 'data/features'
labelPath = 'data/labels'

batchSize = 512
numEpochs = 2

# Use our generator to load data from files
# that would be too large to fit into memory
trainFiles = (1, 2)
gen = Generator(featurePath, labelPath, trainFiles, batchSize)
valFiles = (71, 72)
valGen = Generator(featurePath, labelPath, valFiles, batchSize)

filters = 64
batchMomentum = 0.99

model = tf.keras.Sequential([
    tf.keras.layers.Convolution2D(filters, (5, 5), input_shape=(BoardDepth, BoardLength, BoardLength), name='Input'),
    tf.keras.layers.ZeroPadding2D(padding =(4, 4),  name='Pad0'),
    #tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm0'), 
    #tf.keras.layers.Dropout(0.25, name='Drop0'),
    tf.keras.layers.Activation('relu', name='Relu0'),
    tf.keras.layers.Flatten(name='Flatten0'),
    tf.keras.layers.Dense(BoardSize, activation='softmax', name='Output'),
])


model.summary()

# Debug: Look at models outputs prior to training
# This is especially useful as the C++ model appears not
# to be loading with weights yet, trying to find a fix
printModelPreds(model)

optimizer = tf.train.AdamOptimizer(learning_rate=0.0018)

model.compile(optimizer=optimizer, loss='categorical_crossentropy', metrics=['accuracy'])

# Exit training if validation accuracy 
# starts declining
earlyExit = keras.callbacks.EarlyStopping(monitor='val_acc', min_delta=0, patience=0)
#checkpoints = keras.callbacks.ModelCheckpoint('./models/weights', monitor='val_loss', verbose=0, save_best_only=False)

sess.run(tf.global_variables_initializer())
i = 0
for v in tf.global_variables():
    print(v.name)
    saver = tf.train.Saver([v])
    saver.save(sess, save_path="models/preTrained/" + str(i))
    i += 1

# Train the model
history = model.fit_generator(generator=gen.generator(),
                    steps_per_epoch=gen.stepsPerEpoch(),
                    validation_data=valGen.generator(),
                    validation_steps=valGen.stepsPerEpoch(),
                    epochs=numEpochs, 
                    verbose=2, workers=1, callbacks=[earlyExit])

sess.run(tf.global_variables_initializer())

i = 0
for v in tf.global_variables():
    print(v.name)
    saver = tf.train.Saver([v])
    saver.save(sess, save_path="models/postTrained/" + str(i))
    i += 1

i = 0
for v in tf.global_variables():
    print(i, v.name)
    i += 1

#plotHistory(history)
saveModel(sess, K, model)

model = tf.keras.Sequential([
    tf.keras.layers.Convolution2D(filters, (5, 5), input_shape=(BoardDepth, BoardLength, BoardLength), data_format='channels_first', name='Input'),
    tf.keras.layers.ZeroPadding2D(padding =(4, 4), data_format='channels_first', name='Pad0'),
    #tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm0'), 
    tf.keras.layers.Dropout(0.25, name='Drop0'),
    tf.keras.layers.Activation('relu', name='Relu0'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv1'),
    #tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm1'),
    tf.keras.layers.Dropout(0.25, name='Drop1'),
    tf.keras.layers.Activation('relu', name='Relu1'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv2'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first', name='Pad1'),
    #tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm2'),
    tf.keras.layers.Dropout(0.25, name='Drop2'),
    tf.keras.layers.Activation('relu', name='Relu2'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv3'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first', name='Pad2'),
    #tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm3'),
    tf.keras.layers.Dropout(0.25, name='Drop3'),
    tf.keras.layers.Activation('relu', name='Relu3'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv4'),
    #tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm4'),
    tf.keras.layers.Activation('relu', name='Relu4'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2), name='Pool0'),
    tf.keras.layers.Dropout(0.25, name='Drop4'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv5'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first', name='Pad3'),
    #tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm5'),
    tf.keras.layers.Dropout(0.25, name='Drop5'),
    tf.keras.layers.Activation('relu', name='Relu5'),
    tf.keras.layers.Convolution2D(filters, (3, 3), data_format='channels_first', name='Conv6'),
    tf.keras.layers.ZeroPadding2D(padding =(1, 1), data_format='channels_first', name='Pad4'),
    #tf.keras.layers.BatchNormalization(axis=1, momentum=batchMomentum, name='Norm6'),
    tf.keras.layers.Dropout(0.25, name='Drop6'),
    tf.keras.layers.Activation('relu', name='Relu6'),
    tf.keras.layers.MaxPooling2D(pool_size=(2,2), name='Pool1'),
    tf.keras.layers.Flatten(name='Flatten0'),
    tf.keras.layers.Dense(BoardSize, activation='softmax', name='Output'),
])
