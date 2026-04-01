import PopulaLista

diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor [x] = x 
diferencaMaiorMenor lista = maior lista - menor lista

menor :: [Int] -> Int
menor [x] = x
menor (x:xs) =
    let m = menor xs
    in if x < m then x else m

maior :: [Int] -> Int
maior [x] = x
maior (x:xs) =
    let m = maior xs
    in if x > m then x else m

main = do
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 

    print (diferencaMaiorMenor lista)