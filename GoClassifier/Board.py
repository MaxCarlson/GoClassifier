import numpy as np
from Globals import BoardDepth, BoardLength, BoardSize, BoardLengthP, BoardSizeP
from Globals import EMPTY, BLACK, WHITE, OFF_BOARD
from Move import Move, flipCol, pidxToXy

def printBoard(board):
    print('\n')

    for y in range(0,BoardLengthP):
        for x in range(0,BoardLengthP):
            ch = ' . '
            at = board.board[board.ColorLayer, x, y]
            if at == BLACK:
                ch = ' B '
            elif at == WHITE:
                ch = ' W '
            print(ch, end='')
           
        print()

    print('\n')

def findLiberties(board, searched, color, idx):
    neighs = board.getNeighs(idx)

    libs = 0
    for n in neighs:
        at = board.at(n)
        if at == EMPTY:
            return 1
            
        elif n in searched or at != color:
            continue

        searched.add(n)
        libs += findLiberties(board, searched, color, n)

        if libs:
            return libs

    return libs


def caputureStones(board, searched):
    for st in searched:
        x, y  = pidxToXy(st)
        board.board[board.StoneLayer, x, y] = EMPTY


def findCapturedStones(board, move):

    searched = set()
    opponent = flipCol(move.color)
    neighs = board.getNeighs(move.pIdx)

    # Look at opponent stones to possibly capture
    cap = False
    for n in neighs:
        if board.at(n) != opponent:
            continue

        searched.clear()
        searched.add(n)
        nLibs = findLiberties(board, searched, opponent, n)
        if nLibs <= 0:
            caputureStones(board, searched)
            cap = True
    
    if cap:
        return

    searched.clear()
    searched.add(move.pIdx)
    # Look for the unlikely case of a suicide!
    ourLibs = findLiberties(board, searched, move.color, move.pIdx)

    if ourLibs <= 0:
        caputureStones(board, searched)
    
    

class Board:
    # Final output layer #'s
    # All ones if black, all zeros if white
    ColorLayer = 0
    #
    # Not added yet
    # Player libs
    # Opponent libs

    internalDepth = 1
    # Black, White, Empty
    StoneLayer = 0
    #
    # Not added yet
    # Black libs
    # White libs

    # Number of previous board states to save
    PreviousStates = 2
    # iterator for those prev states
    prevIt = 0

    def __init__(self):
        self.board = np.zeros((self.internalDepth, BoardLengthP, BoardLengthP))
        self.prev = np.zeros((self.PreviousStates, BoardLengthP, BoardLengthP))
        self.board.fill(OFF_BOARD)
        self.board[0:self.internalDepth, 1:BoardLength+1, 1:BoardLength+1] = EMPTY

    def makeMove(self, m, col):
        self.writeToPrev()
        self.board[self.ColorLayer, m.pX, m.pY] = col
        findCapturedStones(self, m)
        printBoard(self)

    def at(self, pidx):
        x, y = pidxToXy(pidx)
        return self.board[self.StoneLayer, x, y]

    # Get neighbor indices
    def getNeighs(self, pidx):
        neighs = []
        neighs.append(pidx - 1)
        neighs.append(pidx + 1)
        neighs.append(pidx - BoardLengthP)
        neighs.append(pidx + BoardLengthP)
        return neighs

    # Reshape to a square board
    # Slice off the extra sides we don't want
    def returnRealBoard(self, board):
        return board[0:self.internalDepth, 1:BoardLength+1, 1:BoardLength+1]

    def prevOrder(self):
        order = []
        it = self.prevIt
        for i in range(0, self.PreviousStates):
            order.append(it)
            it += 1
            if it >= self.PreviousStates:
                it = 0
        return order

    # Write previous board state into memory and
    # increase the previous iterator (Which tells us where to write and how to look at the data)
    def writeToPrev(self):
        self.prev[self.prevIt] = self.board
        self.prevIt += 1
        if self.prevIt >= self.PreviousStates:
            self.prevIt = 0

    # Grab all the previous board states up to: current -through- (current - self.PreviousStates)
    def getPrevious(self):
        prevs = np.zeros((self.PreviousStates, BoardLength, BoardLength))
        order = self.prevOrder()
        # Get the previous board states in the right order
        i = 0
        for o in order:
            prevs[i] = self.prev[order[i]][1:BoardLength+1, 1:BoardLength+1]
        return prevs


    # Get the current board state, as well as all the rest that
    # we're going to write to disk
    def combineStates(self, color):
        latestBoard = self.returnRealBoard(self.board)
        prevs = self.getPrevious()

        boards = np.concatenate([latestBoard, prevs])
        return boards