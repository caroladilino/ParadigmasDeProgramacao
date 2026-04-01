import PopulaLista

busca :: [Int] -> Int -> Bool
busca [] alvo = False
busca (x:xs) alvo = if x == alvo then True else busca xs alvo

main :: IO ()
main = do
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 

    putStrLn "Qual número você deseja buscar na lista?"
    alvo <- readLn

    print (busca lista alvo)
