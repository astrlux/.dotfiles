#!/usr/bin/python
import math # need this package, for SURE!

def displayPathtoPrincess(n,grid):
    # default starting coord
    init = [math.floor(n/2), math.floor(n/2)]           
    
    # get coord of Princess
    if grid[0][n-1] == 'p':     # top-right
        p = [0, n-1]
    elif grid[0][0] == 'p':     # top-left
        p = [0, 0]
    elif grid[n-1][0] == 'p':   # bottom-left
        p = [n-1, 0]
    else:                       # bottom-right
        p = [n-1, n-1]
    
    # if Princess is below, get down to her level
    if p[0] > init[0]:
        while p[0] > init[0]:
            print("DOWN")
            init[0] += 1
    
    # if Princess is above, get up to her level
    elif p[0] < init[0]:
        while p[0] < init[0]:
            print("UP")
            init[0] -= 1
    
    # if Princess is to your right, get to her by going right obviously.
    if p[1] > init[1]:
        while p[1] > init[1]:
            print("RIGHT")
            init[1] += 1
    
    # if Princess is to your left, get to her by going left obviously.
    elif p[1] < init[1]:
       while p[1] < init[1]:
            print("LEFT")
            init[1] -= 1

m = int(input())
grid = [] 
for i in range(0, m): 
    grid.append(input().strip())

displayPathtoPrincess(m,grid) 
