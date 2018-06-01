from __future__ import absolute_import, division, print_function

import os
import matplotlib.pyplot as plt

import tensorflow as tf
import tensorflow.contrib.eager as tfe

from keras import backend as K

tf.enable_eager_execution()

sess = tf.Session()
K.set_session(sess)

BoardSize = 361

fileName = 'goData10G.csv'
#fileName = 'iris_training.csv'

def parseCsv(line):
    defaults = [[0.]] * (BoardSize * 2)
    parsedLine = tf.decode_csv(line, defaults)
    # First item is real result move, everything else on line is a member of the board
    label = tf.reshape(tf.cast(parsedLine[0:361], tf.int32), [361]) 

    features = tf.reshape(parsedLine[361:722], [361])

    #example_defaults = [[0.], [0.], [0.], [0.], [0]]  # sets field types
    #parsed_line = tf.decode_csv(line, example_defaults)
    # First 4 fields are features, combine into single tensor
    #features = tf.reshape(parsed_line[:-1], shape=(4,))
    # Last field is the label
    #label = tf.reshape(parsed_line[-1], shape=())

    return features, label

trainDataset = tf.data.TextLineDataset(fileName)
#trainDataset = trainDataset.skip(1)
trainDataset = trainDataset.map(parseCsv)
#trainDataset = trainDataset.shuffle(bufferSize=1000)
trainDataset = trainDataset.batch(1) # Change back to 32 when done debugging

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

epochCount = 200
trainingLoss = []
traingingAcc = []

for epoch in range(epochCount):
    epochLossAvg = tfe.metrics.Mean()
    epochAcc = tfe.metrics.Accuracy()

    # Training loop - using batchSize batches
    # Why on Earth does this print X out?
    for X, y in trainDataset:
        grads = grad(model, X, y)
        optimizer.apply_gradients(zip(grads, model.variables), 
                                  global_step=tf.train.get_or_create_global_step())

        
        # Record current loss
        epochLossAvg(loss(model, X, y))

        # Compare prediction to actual
        epochAcc(tf.argmax(model(X), axis=1, output_type=tf.int32), tf.cast(y, tf.int32))

    trainingLoss.append(epochLossAvg.result())
    traingingAcc.append(epochAcc.result())

    if(epoch % 2 == 0):
       print("Epoch {:03d}: Loss: {:.3f}, Accuracy: {:.3%}".format(epoch,
                                                                epochLossAvg.result(),
                                                                epochAcc.result()))
