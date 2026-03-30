--import PopulaLista

populaLista :: Int -> IO [Int]
populaLista 0 = return []
populaLista n = do
    input <- readLn
    rest <- populaLista (n-1)
    return (input : rest)


menor :: [Int] -> Int
menor [x] = x
menor (x:xs) =
    let m = menor xs
    in if x < m then x else m


main = do 
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 

    print(menor lista)


