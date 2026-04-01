import PopulaLista


menor :: [Int] -> Int
menor [x] = x
menor (x:xs) =
    let m = menor xs
    in if x < m then x else m


main = do 
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 

    print (menor lista)


