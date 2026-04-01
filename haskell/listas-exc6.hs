import PopulaLista

ocorrencias :: [Int] -> Int -> Int
ocorrencias [] _ = 0
ocorrencias (x:xs) alvo = 
    if x == alvo 
        then 1 + ocorrencias xs alvo
        else ocorrencias xs alvo


main :: IO ()
main = do
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 

    putStrLn "Qual número você deseja buscar na lista?"
    alvo <- readLn

    print (ocorrencias lista alvo)
