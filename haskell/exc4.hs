--Crie uma funcao que receba dois valores booleanos (x, y) retorne o resultado do “ou exclusivo” (XOR) sobre eles. A funcao apenas deve usar os operadores &&, || e not. Leia os valores x e y do teclado.

xor :: Bool -> Bool -> String
xor x y = if x == y then "False" else "True"

main = do
    input <- getLine
    let a = read input :: Bool
    
    input <- getLine
    let b = read input :: Bool

    print(xor a b)
    
