filtrar :: (t -> Bool) -> [t] -> [t]
filtrar funcao [x] = if funcao x == True then [x] else []
filtrar funcao (x:xs) =
    if funcao x == True
        then x : filtrar funcao xs
        else filtrar funcao xs

main :: IO ()
main = do
    --substituir a função e a lista
    print (filtrar (==5) [1,2,3,4,5])