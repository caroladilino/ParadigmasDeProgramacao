--função que cria uma lista com n inputs do usuário
populaLista :: Int -> IO [Int]
populaLista 0 = return []
populaLista n = do
    input <- readLn
    rest <- populaLista (n-1)
    return (input : rest)

soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

media :: [Int] -> Float
media [] = 0
media lista = fromIntegral (soma lista) / fromIntegral (length lista)

main :: IO ()
main = do
    putStrLn "Quantos números deseja inserir?"
    n <- readLn
    lista <- populaLista n 

    print(media lista)
