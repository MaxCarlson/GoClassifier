import tensorflow as tf
import numpy as np
import matplotlib as plt
from Globals import BoardDepth, BoardLength

savePath = './models/'
saveFile = 'latestModel'

# Look at output of model for all zeros/ones
# (useful for debugging the C++ model loading)
def printModelPreds(model):
    test = np.zeros((1, BoardDepth, BoardLength, BoardLength))
    preds = model.predict(test, 1, 2)
    print(preds)

    test = np.ones((1, BoardDepth, BoardLength, BoardLength))
    preds = model.predict(test, 1, 2)
    print(preds)


def saveModel(sess, K, model):

    K.set_learning_phase(0)
    sess.run(tf.global_variables_initializer())

    #for v in tf.global_variables():
    #    print(v.name)
    #saver = tf.train.Saver([v for v in tf.global_variables() if v.name == 'Output\kernel:0'])
    #saver.save(sess, save_path='test')

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
    saver.save(sess, save_path=savePath+saveFile)

    # Useful for debugging purposes
    tf.train.write_graph(sess.graph, '.', savePath + 'graph.pb', as_text=True)



    # Debugging: making sure model is trained
    printModelPreds(model)

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
