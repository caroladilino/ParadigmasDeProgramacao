--Função que calcula a soma dos itens de uma lista
soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

--função que cria uma lista com n inputs do usuário
populaLista :: Int -> IO [Int]
populaLista 0 = return []
populaLista n = do
    input <- readLn
    rest <- populaLista (n-1)
    return (input : rest)

main :: IO ()
main = do
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 

    print(soma lista)