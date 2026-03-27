# -*- coding: utf-8 -*-
#Carolina Adilino 15.03.2026

while True:

    #input tamanho e condição de parada
    tamanho= int(input())
    if tamanho == 0:
        break

    #criando a pilha da ordem que os vagões vem
    pilhaA= input().split()
    pilhaA.reverse()


    #criando a lista da ordem de vagões desejada e seu ponteiro
    listaDesejo= input().split()
    ponteiroDesejo=0

    #criação das pilhas dos trilhos A, estação e B
    pilhaB=[]
    pilhaEstacao=[]
    retorno= ""

    #algoritmo
    while len(pilhaA) != 0:
        pilhaEstacao.append(pilhaA.pop())
        retorno = retorno + 'I'
        if len(pilhaEstacao) != 0:
            while pilhaEstacao[-1] != listaDesejo[ponteiroDesejo]:
                if len(pilhaA)==0:
                    break
                pilhaEstacao.append(pilhaA.pop())
                retorno = retorno + 'I'
            while ponteiroDesejo < tamanho and pilhaEstacao[-1] == listaDesejo[ponteiroDesejo]: 
                pilhaB.append(pilhaEstacao.pop())
                retorno = retorno + 'R'
                ponteiroDesejo += 1
                if len(pilhaEstacao)==0:
                    break

    #apresentar resposta
    if len(pilhaB) == tamanho:
        print(retorno)
    else:
        print(retorno, "Impossible")
