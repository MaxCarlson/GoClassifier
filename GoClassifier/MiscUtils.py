import tensorflow as tf
import numpy as np
from Globals import BoardDepth, BoardLength

# Look at output of model for all zeros/ones
# (useful for debugging the C++ model loading)
def printModelPreds(model):
    test = np.zeros((1, BoardDepth, BoardLength, BoardLength))
    preds = model.predict(test, 1, 2)
    print(preds)

    test = np.ones((1, BoardDepth, BoardLength, BoardLength))
    preds = model.predict(test, 1, 2)
    print(preds)


def saveModel(sess, model):

    #K.set_learning_phase(0)
    sess.run(tf.global_variables_initializer())

    # Too bad we can't load from this format in C++, 
    # so far it hasn't worked. Maybe look more into it?
    #
    #model.save('./models/keras/kModel.h5')
    #loadedModel = keras.models.load_model('./models/keras/kModel.h5')
    #print(loadedModel.predict(np.zeros((1, BoardDepth, BoardLength, BoardLength)), 1, 2))
    
    # Debugging: making sure model is trained
    printModelPreds(model)

    # Doesn't seem to be saving the trained weights!
    # Over 2/3rds of the file is all zero's
    saver = tf.train.Saver(tf.global_variables())
    sup = saver.save(sess, './models/latestModel')

    # Useful for debugging purposes
    tf.train.write_graph(sess.graph, '.', './models/graph.pb', as_text=True)

    # Debugging: making sure model is trained
    printModelPreds(model)
