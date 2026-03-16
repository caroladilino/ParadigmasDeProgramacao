# -*- coding: utf-8 -*-
#Carolina Adilino 

while True:

    #input e condição de parada
    N = int(input())
    if N==0:
        break

    #criação da lista com os valores
    valores = list(map(int, input().split()))
    valores.append(valores[0])
    valores.insert(0,valores[N-1])
    
    counter=0

    #algoritmo
    for i in range(1,N+1):
        if (valores[i] < valores[i+1] and valores[i] < valores[i-1]) or (valores[i] > valores[i+1] and valores[i] > valores[i-1]):
            counter+=1

    print (counter)
