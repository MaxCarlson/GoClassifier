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
    storage = np.zeros((maxMovePerFile, BoardSize+1))

    def __init__(self, outfileName, maxMovesPerFile):
        self.outfileName = outfileName
        self.maxMovePerFile = maxMovesPerFile

    def asignBoard(self, board):

        self.storage[self.strgIdx] = board
        self.strgIdx += 1

    def nextFile(self):
        self.fileCount += 1

    def clear(self):
        self.strgIdx = 0
        self.storage = np.zeros((self.maxMovePerFile, BoardSize+1))

    def writeToFile(self):
        
        self.nextFile() 
        name = self.outfileName + str(self.fileCount)

        if self.strgIdx < self.maxMovePerFile:
            self.storage = self.storage[0:self.strgIdx]

        np.save(name, self.storage)
        self.clear()

  

# We store the board as black/white in memory
# but we save it according to side to move perspective
def writeMoveAndBoardToFile(storage, m, board, col):

    board[0] = m
    storage.asignBoard(board)    
    
    if storage.strgIdx >= storage.maxMovePerFile:
        storage.writeToFile()

    return

def makeMove(board, m, col):
    board[m+1] = col
    return


def processGame(line, storage):

    board = np.zeros(BoardSize+1)

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


