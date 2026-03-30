--Crie uma função que resolva uma equação de segundo grau utilizando Bhaskara leia os coeficientes a, b e c do teclado.

calculaBhaskara :: Floating a => a -> a -> a -> (a, a)
calculaBhaskara a b c = 
    ( (-b + sqrt delta) / (2 * a)
    , (-b - sqrt delta) / (2 * a)
    )
  where
    delta = b*b - 4*a*c

main :: IO ()
main = do
    a <- readLn
    b <- readLn
    c <- readLn

    print(calculaBhaskara a b c)