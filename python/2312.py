# -*- coding: utf-8 -*-

#algoritmo de bubble sort adaptado para comparar um index de um item especifico
def bubble_sort_medalha(arr, index):
    n = len(arr)

    for i in range(n):
        for j in range(0, n - i - 1):
            if arr[j][index] > arr[j + 1][index]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
    return arr



N = int(input())

paises=[]

for i in range(N):
    entrada = input().split()
    for j in range (1,4):
        entrada[j] = int(entrada[j])
    paises.append(entrada)

#alfabetizando a lista inteira
paises = sorted(paises, key=lambda x: x[0])

paises.reverse()

#fazendo sorting das medalhas
bubble_sort_medalha(paises, 3)
bubble_sort_medalha(paises, 2)
bubble_sort_medalha(paises, 1)

paises.reverse()

for item in paises: 
    print(*item)
