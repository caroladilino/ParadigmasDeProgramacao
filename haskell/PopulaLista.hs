--função de populas as listas para ser importada e usada em outros exercícios
module PopulaLista (populaLista) where
    
    populaLista :: Int -> IO [Int]
    populaLista 0 = return []
    populaLista n = do
        input <- readLn
        rest <- populaLista (n-1)
        return (input : rest)


{-USO RECOMENDADO
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 
-}