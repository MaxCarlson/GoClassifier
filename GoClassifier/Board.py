import numpy as np
from Globals import BoardDepth, BoardLength, BoardSize, BoardLengthP, BoardSizeP
from Globals import EMPTY, BLACK, WHITE, OFF_BOARD
from Move import Move

def pidxToXy(idx):
    x = idx % BoardLengthP
    y = idx // BoardLengthP
    return x, y

GROUP_MAX_LIBS = 5

class Group:
    def __init__(self):
        # List of stones in group
        self.stones = []
        # Liberty count
        self.libs = 0
        # List of liberty locations (only keep track of a few)
        self.lib = np.zeros((GROUP_MAX_LIBS))

    def addLib(self, idx):
        self.lib[self.libs] = idx
        self.libs += 1

    def clear(self):
        self = Group()

class Groups:
    def __init__(self):
        # Holds the index of the group in the other lists
        # By stone idx
        self.groupByIdx = np.zeros((BoardSizeP))
        # Holds the idx of the next stone in the group
        self.nextStone = np.zeros((BoardSizeP))
        #
        self.groups = np.ndarray((BoardSizeP), dtype=Group)

    def mergeGroups(self, board, move):
        return

    def addToGroup(self, board, move):
        # TODO: Check for group merge
        return

    def newGroup(self, board, move, neighIdxs):
        gid = move.pIdx
        self.groupByIdx[gid] = move.pIdx
        self.groups[gid] = Group()
        group = self.groups[gid]

        for n in neighIdxs:
            if board.at(n) == EMPTY:
                group.addLib(n)

        self.nextStone[gid] = 0

    def doMove(self, board, move):
        neighIdxs = board.getNeighs(move.pIdx)

        needNewGroup = True
        for n in neighIdxs:
            if board.at(n) == move.color:
                # Found a neighbor of our color, add this stone to that group
                addToGroup(board, move)
                needNewGroup = False
                break

        # No neighbors of this stones color around
        if needNewGroup:
            self.newGroup(board, move, neighIdxs)

        return

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
        self.groups = Groups()

    def makeMove(self, m, col):
        self.board[self.ColorLayer, m.pX, m.pY] = col
        self.groups.doMove(self, m)

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