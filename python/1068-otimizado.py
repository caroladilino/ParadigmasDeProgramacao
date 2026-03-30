# -*- coding: utf-8 -*-

while True:

    #input
    try:
        entrada = input()
    except EOFError:
        break

    lista=[]
    correto = True

    for char in entrada:
        if char == '(':
            lista.append(char)
        elif char == ')':
            if not lista:
                correto = False
                break
            lista.pop()
    
    print("correct" if not lista else "incorrect")

