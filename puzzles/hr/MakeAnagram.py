#!/bin/python3
import os
# Complete the 'makeAnagram' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. STRING a
#  2. STRING b
def makeAnagram(a, b):
    # Write your code here
    set1 = set(a)
    set2 = set(b)
    setUnion=set1|set2
    result1 = setUnion - set1
    result2 = setUnion - set2
    return len(result1)+len(result2)
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    a = input()

    b = input()

    res = makeAnagram(a, b)

    fptr.write(str(res) + '\n')
    fptr.close()
