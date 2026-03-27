while True:
    tamanho = int(input())

    #condição de parada
    if tamanho == 0:
        break

    #generate lists
    descarte=[]
    baralho=[]
    for i in range(tamanho):
        baralho.append(tamanho-i)

    #algoritmo retirada de cartas
    while len(baralho) > 1:
        descarte.append(baralho.pop())
        baralho.insert(0,baralho.pop())
    
    #retorno
    print("Discarded cards: ", end='')
    print(", ".join(map(str, descarte)))
    print("Remaining card: ", end='')
    print(", ".join(map(str, baralho)))
