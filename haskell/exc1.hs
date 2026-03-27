-- Crie uma função que receba dois números x e y e retorne x^y. Leia x e y do teclado
xtothey :: Integer -> Integer -> Integer
xtothey x y = x ^ y

main = do
    a <- readLn
    b <- readLn

    print (xtothey a b)
