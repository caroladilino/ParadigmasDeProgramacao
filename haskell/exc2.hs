--Crie uma funcao que receba um numero x, negativo ou positivo, e retorne seu valor absoluto. Leia x do teclado.

valorAbsoluto :: Integer -> Integer
valorAbsoluto x = abs x

main = do
    a <- readLn
    print(valorAbsoluto a)
