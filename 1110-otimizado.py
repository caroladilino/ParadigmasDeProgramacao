# -*- coding: utf-8 -*-

#código não acabado: erro de lógica

while True:
    tamanho = int(input())

    #condição de parada
    if tamanho == 0:
        break

    #generate lists
    descarte=[]
    baralho=[]
    topo= tamanho-1
    for i in range(tamanho):
        baralho.append(tamanho-i)

    #algoritmo retirada de cartas
    while len(baralho) > 1:
        print("topo = ", topo, "baralho =", baralho)
        descarte.append(baralho.pop(topo))
        topo-=2
        if topo < 0:
            print(len(baralho))
            topo = len(baralho) -2
    
    #retorno
    print("Discarded cards: ", end='')
    print(", ".join(map(str, descarte)))
    print("Remaining card: ", end='')
    print(", ".join(map(str, baralho)))
