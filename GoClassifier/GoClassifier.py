from __future__ import absolute_import, division, print_function

import os
import matplotlib.pyplot as plt

import tensorflow as tf
import tensorflow.contrib.eager as tfe

from keras import backend as K

tf.enable_eager_execution()

sess = tf.Session()
K.set_session(sess)

sess = tf.Session(config=tf.ConfigProto(log_device_placement=True))

BoardSize = 361

gdataSize = str(10)
gtestSize = str(15)
fileNameX = 'goData' + gdataSize + '.csv'
fileNameY = 'goDataRes' + gdataSize + '.csv'
fnameTestX = gtestSize + 'Test.csv'
fnameTestY = gtestSize + 'TestRes.csv'

from numpy import genfromtxt


Xt = genfromtxt(fileNameX, delimiter=',')
Yt = genfromtxt(fileNameY, delimiter=',')
X = genfromtxt(fnameTestX, delimiter=',')
Y = genfromtxt(fnameTestY, delimiter=',')

hiddenSize = 1024


model = tf.keras.Sequential([
    tf.keras.layers.Dense(hiddenSize,  activation="relu", input_shape=(BoardSize,)), #BoardSize
    tf.keras.layers.Dense(hiddenSize, activation="relu"),
    tf.keras.layers.Dense(hiddenSize, activation="relu"),
    tf.keras.layers.Dense(hiddenSize, activation="relu"),
    tf.keras.layers.Dense(hiddenSize, activation="relu"),
    tf.keras.layers.Dense(hiddenSize, activation="relu"),
    tf.keras.layers.Dense(hiddenSize, activation="relu"),
    tf.keras.layers.Dense(hiddenSize, activation="relu"),
    #tf.keras.layers.Dropout(0.01),
    tf.keras.layers.Dense(BoardSize) # One output probability for each board location ( Should probably include pass in future)
])

#optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)
optimizer = tf.train.AdamOptimizer(learning_rate=0.1)
#optimizer = tf.train.AdagradOptimizer(learning_rate=0.0001)

model.compile(optimizer=optimizer, loss='logcosh', metrics=['accuracy'])

model.fit(X, Y,  epochs=200, batch_size=1000, verbose=2)
#validation_data=(Xt, Yt),










"""

def parseCsv(line):
    defaults = [[0.]] * (BoardSize * 2)
    parsedLine = tf.decode_csv(line, defaults)
    # First BoardSize(^2) numbers are the padded label
    label = tf.reshape(tf.cast(parsedLine[0:BoardSize], tf.int32), [BoardSize]) 
    # Next are the pieces on the board (-1 for opponent, 0 empty, 1 us)
    features = tf.reshape(parsedLine[BoardSize:BoardSize*2], [BoardSize])

    return features, label

trainDataset = tf.data.TextLineDataset(fileName)
trainDataset = trainDataset.map(parseCsv)
#trainDataset = trainDataset.shuffle(bufferSize=1000)
trainDataset = trainDataset.batch(361) # Change back to 32 when done debugging

hiddenSize = 32

model = tf.keras.Sequential([
    tf.keras.layers.Dense(BoardSize, activation="relu", input_shape=(BoardSize,)), #BoardSize
    tf.keras.layers.Dense(hiddenSize, activation="relu"),
    tf.keras.layers.Dense(BoardSize) # One output probability for each board location ( Should probably include pass in future)
])

def loss(model, X, y):
    y_ = model(X)
    #return tf.losses.sparse_softmax_cross_entropy(labels=y, logits=y_)
    #return tf.losses.softmax_cross_entropy(onehot_labels=y, logits=y_)
    return tf.losses.sigmoid_cross_entropy(multi_class_labels=y, logits=y_)

def grad(model, inputs, targets):
    with tf.GradientTape() as tape:
        lossValue = loss(model, inputs, targets)
    return tape.gradient(lossValue, model.variables)

# Revisit optimizer once working, this will likely be bad for this model
optimizer = tf.train.GradientDescentOptimizer(learning_rate=0.01)

model.compile(optimizer=optimizer, loss='categorical_crossentropy', metrics=['accuracy'])
model.fit(x=train_X, y=train_y, epochs=200, batch_size=64, verbose=2)

epochCount = 200
trainingLoss = []
traingingAcc = []


for epoch in range(epochCount):
    epochLossAvg = tfe.metrics.Mean()
    epochAcc = tfe.metrics.Accuracy()

    # Training loop - using batchSize batches
    with tf.device('/gpu:0'):
        for X, y in trainDataset:
            grads = grad(model, X, y)
            optimizer.apply_gradients(zip(grads, model.variables), 
                                        global_step=tf.train.get_or_create_global_step())
     
            # Record current loss
            epochLossAvg(loss(model, X, y))

            # Compare prediction to actual
            epochAcc(tf.argmax(model(X), axis=1, output_type=tf.int32), y)

    trainingLoss.append(epochLossAvg.result())
    traingingAcc.append(epochAcc.result())

    if(epoch % 2 == 0):
        print("Epoch {:03d}: Loss: {:.3f}, Accuracy: {:.3%}".format(epoch,
                                                                epochLossAvg.result(),
                                                                epochAcc.result()))
"""