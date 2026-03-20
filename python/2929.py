#Por conta de problemas do beecrowd, o algoritmo não funcionou na plataforma

#input
N = int(input())

#declaração de variáveis
pilha=[]
min_pilha=[]

for i in range (N):
    entrada= input().split()
    comando = entrada[0]
    if comando == 'PUSH':
        valor = int(entrada[1])
        pilha.append(valor)
        if not min_pilha or valor <= min_pilha[-1]:
            #se for menor que o minimo, adiciona na lista
            min_pilha.append(valor)
    elif comando == 'POP':
        if pilha:
            v = pilha.pop()
            if min_pilha and v == min_pilha[-1]:
                min_pilha.pop()
    elif comando == 'MIN':
        if min_pilha:
            print(min_pilha[-1])
