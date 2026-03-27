--Crie uma funcao que receba a base e a altura de um triangulo e calcule a area do mesmo. Leia a base e a altura do teclado.

areaTriangulo :: Integer ->  Integer -> Float
areaTriangulo x y = (fromIntegral x * fromIntegral y) / 2

main :: IO ()
main = do
    a <- readLn :: IO Integer
    b <- readLn :: IO Integer
    
    print(areaTriangulo a b)