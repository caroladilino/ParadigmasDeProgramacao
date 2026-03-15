# -*- coding: utf-8 -*-

#input - quantidade de entradas
numeroEntradas= int(input())


for i in range(numeroEntradas):
    
    #entrada
    try:
        entrada = input()
    except EOFError:
        break

    #criando lista só para "<" e ">": os caracteres de interesse e contador de diamantes
    interesse=[]
    counter=0

    #for cada item da alista se ele for um parentes abrindo ou fechando append ele em outra lista
    for i in range(len(entrada)):
        if entrada[i] == '<' or entrada[i] == '>':
            interesse.append(entrada[i])
    
    #algoritmo
    while '>' in interesse:
        #print(interesse)
        #print(counter)
        if interesse[0] == '<':
            for i in range(len(interesse)-1):
                if interesse[i] == '<' and interesse[i+1] == '>':
                    counter+=1
                    interesse.pop(i+1)
                    interesse.pop(i)
                    break    
        else:
            interesse.pop(0)
    
    print(counter)
