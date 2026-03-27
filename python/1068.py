# -*- coding: utf-8 -*-

#definição variáveis
#   entrada     lista
#   interesse   lista

while True:

    #input
    try:
        entrada = input()
    except EOFError:
        break

    #criando lista só para parenteses: os caracteres de interesse
    interesse=[]
    

    #for cada item da alista se ele for um parentes abrindo ou fechando append ele em outra lista
    for i in range(len(entrada)):
        if entrada[i] == ')' or entrada[i] == '(':
            interesse.append(entrada[i])
    
    #algoritmo
    while ')' in interesse:
        if len(interesse) > 0 and interesse[0] == '(':
            for i in range(len(interesse)):
                if interesse[i] == ')':
                    interesse.pop(i)
                    interesse.pop(0)
                    break
        else:
            break

    #printar o resultado
    if len(interesse) == 0:
        print("correct")
    else:
        print("incorrect")
