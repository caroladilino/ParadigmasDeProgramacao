apagar :: Int -> [t] -> [t]
apagar 0 lista = lista
apagar n (x:xs) = apagar (n-1) xs

main :: IO ()
main = do
    --substituir com os valores desejados
    print (apagar 4 [1,2,3,4,5,7])