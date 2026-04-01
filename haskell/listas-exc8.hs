import PopulaLista

inverte :: [t] -> [t]
inverte [x] = [x]
inverte (x:xs) =  inverte(xs) ++ [x]

main :: IO ()
main = do
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n

    print (lista)

    print (inverte lista)    