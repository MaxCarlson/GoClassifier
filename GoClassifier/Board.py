import numpy as np
from Globals import BoardDepth, BoardLength, BoardSize, BoardLengthP, BoardSizeP
from Globals import EMPTY, BLACK, WHITE, OFF_BOARD
from Move import Move

def pidxToXy(idx):
    x = idx % BoardLengthP
    y = idx // BoardLengthP
    return x, y

GROUP_MAX_LIBS = 7
GROUP_REFILL_LIBS = 5

def printBoard(board):
    print('\n')
    print(board.board)
    print('\n')

def printGroups(board):
    print('\n')
    np.set_printoptions(linewidth=150)
    ng = np.reshape(board.groups.groupByIdx, (BoardLengthP, BoardLengthP))
    print(ng)
    print('\n')

class Group:
    def __init__(self):
        # List of stones in group
        self.stones = []
        # Liberty count
        self.libs = 0
        # List of liberty locations (only keep track of a few)
        self.lib = np.zeros((GROUP_MAX_LIBS))

    def addLib(self, idx):
        if self.libs == GROUP_MAX_LIBS:
            return
        self.lib[self.libs] = idx
        self.libs += 1

        if self.libs > 4 and len(self.stones) <= 1:
            a = 5

    def refillLibs(self, board):

        llibs = set(self.lib)
        for s in self.stones:
            neighs = board.getNeighs(s)
            for n in neighs:
                r = board.at(n)
                if board.at(n) != EMPTY or n in llibs:
                    continue
                llibs.add(n)
                self.addLib(n)

    def addStone(self, board, idx, neighIdxs):
        self.stones.append(idx)
   
        for n in neighIdxs:
            if board.at(n) == EMPTY:
                self.addLib(n)

    def removeLib(self, board, idx):
        
        for i in range(0,self.libs):
            if self.lib[i] == idx:
                self.libs -= 1
                self.lib[i] = self.lib[self.libs]
                break

        if self.libs < GROUP_REFILL_LIBS:
            self.refillLibs(board)

    def mergeGroup(self, board, ourGid, otherGroup, groupsByIdx):

        # Set the other groups stones to our group 
        # and add them to our list of stones
        for stone in otherGroup.stones:
            groupsByIdx[stone] = ourGid
            self.stones.append(stone)
        
        self.libs = 0
        refillLibs(board)
        return

class Groups:
    def __init__(self):
        # Holds the index of the group in the other lists
        # By stone idx
        self.groupByIdx = np.zeros((BoardSizeP), dtype=int)
        # Info about groups, indexed by the groupId (first stone in group's index)
        self.groups = np.ndarray((BoardSizeP), dtype=Group)

    def mergeGroups(self, board, move, gidTo, gidFrom):
        groupTo = self.groups[gidTo]
        groupFrom = self.groups[gidFrom]
        groupTo.mergeGroup(board, gidTo, groupFrom, self.groupByIdx)
        self.groups[gidFrom] = None
        return

    def addToGroup(self, board, move, nIdx, neighIdxs):
        
        gid = self.groupByIdx[nIdx]

        for n in neighIdxs:
            nGid = self.groupByIdx[n] 
            if board.at(n) == move.color and nGid != 0 and nGid != gid:
                printBoard(board)
                printGroups(board)
                self.mergeGroups(board, move, gid, nGid)
                return
              
        group = self.groups[gid]
        self.groupByIdx[move.pIdx] = gid
        group.addStone(board, move.pIdx, neighIdxs)

        return

    def newGroup(self, board, move, neighIdxs):
        gid = move.pIdx
        self.groupByIdx[gid] = gid
        self.groups[gid] = Group()
        self.groups[gid].addStone(board, gid, neighIdxs)

    def doMove(self, board, move):
        neighIdxs = board.getNeighs(move.pIdx)

        if move.pIdx == 310 or move.pIdx == 331:
             a =5

        # Remove libs from surrounding groups
        for n in neighIdxs:
            nGid = self.groupByIdx[n]
            if nGid:
                group = self.groups[nGid]
                group.removeLib(board, move.pIdx)

        needNewGroup = True
        for n in neighIdxs:
            if board.at(n) == move.color:
                # Found a neighbor of our color, add this stone to that group
                self.addToGroup(board, move, n, neighIdxs)
                needNewGroup = False
                break

        # No neighbors of this stones color around
        if needNewGroup:
            self.newGroup(board, move, neighIdxs)
            
        # TODO: Look at neighbors for captures (or suicides)

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
        printBoard(self)
        printGroups(self)


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