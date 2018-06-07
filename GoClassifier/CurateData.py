import numpy as np
from Globals import BoardLength, BoardSize, BoardDepth, BoardLengthP, BoardSizeP
from Globals import EMPTY, BLACK, WHITE, OFF_BOARD

from Board import Board
from Move import Move, moveToIdx, flipCol


def emptyOrFriendly(col, other):
    if other == EMPTY or other == col:
        return True
    return False

def flipColForWr(val, col):
    if col == EMPTY or col == BLACK:
        return val
    return flipCol(val)   

class Storage:
    fileCount = 0
    strgIdx = 0
    maxMovePerFile = 10000
    # TODO: figure out an easy way to save in the format we need ? [samples, 1, BoardLength, BoardLength] + y Data
    # Probably best way would be to save features in one file and labels in another 
    # (So we can save features as they are read in the model)
    #storage = np.zeros((maxMovePerFile, BoardSize+1))

    def __init__(self, outfileName, maxMovesPerFile):
        self.outfileName = outfileName
        self.maxMovePerFile = maxMovesPerFile
        self.storage, self.yStorage = self.zeroBoard()

    def zeroBoard(self):
        self.storage = np.zeros((self.maxMovePerFile, BoardDepth, BoardLength, BoardLength))
        self.yStorage = np.zeros((self.maxMovePerFile))
        return self.storage, self.yStorage

    def asignBoard(self, board, move):
        self.storage[self.strgIdx] = board.convertToFeatureMap(move.color)
        self.yStorage[self.strgIdx] = move.idx 
        self.strgIdx += 1

    def nextFile(self):
        self.fileCount += 1

    def clear(self):
        self.strgIdx = 0
        self.zeroBoard()

    def writeToFile(self):
        
        self.nextFile() 
        yname = self.outfileName + 'l' + str(self.fileCount)
        name = self.outfileName  + 'f' + str(self.fileCount)

        if self.strgIdx < self.maxMovePerFile:
            self.storage = self.storage[0:self.strgIdx]
            self.yStorage = self.yStorage[0:self.strgIdx]

        # Shuffle the results so we don't have large chunks of games
        # next to eachtoher
        state = np.random.get_state()
        np.random.shuffle(self.storage)
        np.random.set_state(state)
        np.random.shuffle(self.yStorage)

        np.save(name, self.storage)
        np.save(yname, self.yStorage)
        self.clear()

# We store the board as black/white in memory
# but we save it according to side to move perspective
def writeMoveAndBoardToFile(storage, move, board, col):

    storage.asignBoard(board, move)    
    
    if storage.strgIdx >= storage.maxMovePerFile:
        storage.writeToFile()

    return

testt = 0

def processGame(line, storage):

    # We'll convert the board array to 19x19 when we write it to the file
    # for now we'll just use the move index
    # TODO: add 1 tile edges to board to make it easier to compute things like libs
    board = Board()

    semiCount = 0
    i = 0

    # TODO: Igore handicap games!
    # Find the start of the game (Should later look at handicaps?)
    for ch in line:
        i += 1
        if semiCount < 2 and ch == ';':
            semiCount += 1
        elif semiCount > 1:
            break

    # Process game into moves and boards
    col = BLACK
    last = False
    while i < len(line):
        mv = line[i-1:i+5]

        # Ignore games with passes in them for the moment!
        if mv[2] == ']':
            break

        m = Move(mv)

        writeMoveAndBoardToFile(storage, m, board, col)
        board.makeMove(m, col)
        col = flipCol(col)
        i += 6

# TODO: Implement Alpha go encoding
# OR something more complete than 1d plane
#              # of layers dedicated to
# Stone Color  3
# Ones         1
# Turns Since  8
# Liberties    8
# Cap Size     8
# Slf-Atari    8
# Lib after Mv 8
# Ladder Cap   1
# Sensible     1
# Zeros        1
# Player Color 1
def curateData():

    movesPerFile = 10000
    outFolder = 'outData/' 
    outfilename = outFolder + input("Enter output file name: ")
    count = int(input("Enter number of games to write to disk: "))

    filename = outFolder + 'pro2000+.txt'
    file = open(filename)

    
    storage = Storage(outfilename, movesPerFile)
   
    for i in range(count):

        line = file.readline()

        processGame(line, storage)

        if i >= count - 1:
            storage.writeToFile()


