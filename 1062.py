# -*- coding: utf-8 -*-
#Carolina Adilino 15.03.2026

while True:
    
    #input tamanho e condição de parada
    tamanho= int(input())
    if tamanho == 0:
        break
    
    while True:
        #criação das pilhas dos trilhos A, estação e B
        pilhaB=[]
        pilhaEstacao=[]
        pilhaA = list(range(1, tamanho+1))
        pilhaA.reverse()


        #criando e padronizando como pilha a ordem de vagões desejada
        listaDesejo= input().split()
        if listaDesejo[0] == '0':
            print()
            break
        for i in range(tamanho):
            listaDesejo[i] = int(listaDesejo[i])
        ponteiroDesejo=0


        #algoritmo
        while len(pilhaA) != 0:
            pilhaEstacao.append(pilhaA.pop())
            if len(pilhaEstacao) != 0:
                while pilhaEstacao[-1] != listaDesejo[ponteiroDesejo]:
                    if len(pilhaA)==0:
                        break
                    pilhaEstacao.append(pilhaA.pop())
                while ponteiroDesejo < tamanho and pilhaEstacao[-1] == listaDesejo[ponteiroDesejo]: 
                    pilhaB.append(pilhaEstacao.pop())
                    ponteiroDesejo += 1
                    if len(pilhaEstacao)==0:
                        break

        #apresentar resposta
        if len(pilhaB) == tamanho:
            print("Yes")
        else:
            print("No")




