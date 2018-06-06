import numpy as np
from Globals import BoardDepth, BoardLength, BoardSize, BoardLengthP, BoardSizeP
from Globals import EMPTY, BLACK, WHITE, OFF_BOARD

class Board:
    # Final output layer #'s
    # All ones if black, all zeros if white
    ColorLayer = 0
    PlayerLayer = 1
    OpponentLayer = 2
    #
    # Not added yet
    # Player libs
    # Opponent libs

    # Actual encoding before asigning
    internalDepth = 1
    # Stone layer (Black,White, Empty)
    StoneLayer = 0
    #
    # Not added yet
    # Black libs
    # White libs

    def __init__(self):
        self.board = np.zeros((self.internalDepth, BoardLengthP, BoardLengthP))
        self.board.fill(OFF_BOARD)
        self.board[0:self.internalDepth, 1:BoardLength+1, 1:BoardLength+1] = EMPTY

    def makeMove(self, m, col):
        self.board[self.ColorLayer, m.pX, m.pY] = col

    def at(self, layer, x, y):
        return self.board[layer, x, y]

    def neightCount(self, layer, move, lmbda):       
        self.at(layer, move.pX-1, move.pY)
        self.at(layer, move.pX+1, move.pY)
        self.at(layer, move.pX, move.pY-1)
        self.at(layer, move.pX, move.pY+1)

    def calcLibs(self, m, col):
        libs = 4    
        return libs

    # Reshape to a square board
    # Slice off the extra sides we don't want
    def returnRealBoard(self):
        return self.board[0:self.internalDepth, 1:BoardLength+1, 1:BoardLength+1]

    # Convert to binary encoded feature map
    def convertToFeatureMap(self, color):
        rb = self.returnRealBoard()
        ftMap = np.zeros((BoardDepth, BoardLength, BoardLength))
        # Add feature side to move
        ftMap[self.ColorLayer] = 1 if color == BLACK else 0

        # Add both layers representing player and opponent stones
        opponent = WHITE if color == BLACK else BLACK
        ftMap[self.PlayerLayer] = rb[self.StoneLayer] == color
        ftMap[self.OpponentLayer] = rb[self.StoneLayer] == opponent
        return ftMap