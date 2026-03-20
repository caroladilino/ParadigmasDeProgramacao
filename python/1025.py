# -*- coding: utf-8 -*-

import bisect

case = 1

while True:

    marbles=[]
    entrada = input().split()
    N = int(entrada[0])
    Q = int(entrada[1])

    

    #condição de parada
    if Q == 0 and N==0:
        break

    for i in range (N):
        N = int(input())
        marbles.append(N)
    
    marbles.sort()

    print(f"CASE# {case}:")
    case += 1

    for i in range (Q):
        N = int(input())
        
        index = bisect.bisect_left(marbles, N)
        
        if index < len(marbles) and marbles[index] == N:
            print(f"{N} found at {index+1}")
        else:
            print(f"{N} not found")
    
