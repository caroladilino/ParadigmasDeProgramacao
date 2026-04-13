class (Integral x) => MeuInt x where
    bigger :: x -> x -> x
    smaller :: x -> x -> x
    par :: x -> Bool
    impar ::x -> Bool
    (===) :: x -> x -> Bool

    --métodos--
    bigger a b  | a > b = a
                | otherwise = b

    smaller a b | a == (bigger a b) = b
                | otherwise = a

    par a = mod a 2 == 0 

    impar a = not (par a)

    --fazer método primos

    --fazer método MDC

    (===) a b = abs(a - b) <= 1

    





    

instance MeuInt Integer
instance MeuInt Int