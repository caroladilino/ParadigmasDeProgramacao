# -*- coding: utf-8 -*-

N = int(input())
casas=[]

for i in range (N):
    casas.append(int(input()))

soma = int(input())

checados = set()

for num in casas:
    complemento = soma - num
    if complemento in checados:
        print(complemento, num)
        break
    checados.add(num)


