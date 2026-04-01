import PopulaLista

mapear :: (t -> y) -> [t] -> [y]
mapear f [x] = [f x]
mapear f (x:xs) = f x : mapear f (xs)

main :: IO ()
main = do
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 

    putStrLn "qual função você deseja aplicar?"

    print (mapear (*2) lista)