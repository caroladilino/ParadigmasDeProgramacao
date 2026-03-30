--Crie uma função que compute o n-ésimo número de Fibonacci. Leia n do teclado.

fibonacci :: Integer -> Integer -> Integer -> Integer -> Integer
fibonacci contador soma anterior n =
    if contador == n
        then soma
    else
        fibonacci (contador + 1) (soma + anterior) soma n

main = do
    entrada <- readLn
    print(fibonacci 0 0 1 entrada)


