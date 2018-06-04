import numpy as np
from Globals import BoardLength, BoardSize

def moveToIdx(x, y):
    return x * BoardLength + y

def processMove(m):
    x = ord(m[2])
    y = ord(m[3])
    x = x - ord('a')
    y = y - ord('a')
    return moveToIdx(x, y)

BLACK = 1
WHITE = -1

def flipCol(col):
    if col == BLACK:
        return WHITE
    return BLACK

def flipColForWr(val, col):
    if col == 0 or col == BLACK:
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
        self.storage = np.zeros((self.maxMovePerFile, 2, BoardLength, BoardLength))
        self.yStorage = np.zeros((self.maxMovePerFile))
        return self.storage, self.yStorage

    def asignBoard(self, board, move):
        self.storage[self.strgIdx] = board
        self.yStorage[self.strgIdx] = move
        self.strgIdx += 1

    def nextFile(self):
        self.fileCount += 1

    def clear(self):
        self.strgIdx = 0
        self.zeroBoard()

    def writeToFile(self):
        
        self.nextFile() 
        yname = self.outfileName + 'y' + str(self.fileCount)
        name = self.outfileName + str(self.fileCount)

        if self.strgIdx < self.maxMovePerFile:
            self.storage = self.storage[0:self.strgIdx]
            self.yStorage = self.yStorage[0:self.strgIdx]

        np.save(name, self.storage)
        np.save(yname, self.yStorage)
        self.clear()

# TODO: How should friendly libs be encoded?
def calcLibs(board, idx):
    return 5

# We store the board as black/white in memory
# but we save it according to side to move perspective
def writeMoveAndBoardToFile(storage, m, board, col):

    storage.asignBoard(board, m)    
    
    if storage.strgIdx >= storage.maxMovePerFile:
        storage.writeToFile()

    return

colorLayer = 0
libertyLayer = 1

def makeMove(board, m, col):
    board[colorLayer][m] = col
    return


def processGame(line, storage):

    board = np.zeros((2, BoardLength, BoardLength))

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
        m = processMove(mv)

        if i + 6 >= len(line):
            a = 5

        writeMoveAndBoardToFile(storage, m, board, col)
        makeMove(board, m, col)
        col = flipCol(col)
        i += 6

# TODO: Implement Alpha go encoding
# OR something more complete than 1d plane
#
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
    outfilename = outFolder + input("Enter output file name:")
    count = int(input("Enter number of games to read:"))

    filename = outFolder + 'pro2000+.txt'
    file = open(filename)

    
    storage = Storage(outfilename, movesPerFile)
   
    for i in range(count):

        line = file.readline()

        processGame(line, storage)

        if i >= count - 1:
            storage.writeToFile()


