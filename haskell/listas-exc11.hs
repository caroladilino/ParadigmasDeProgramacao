primeiros :: Int -> [t] -> [t]
primeiros 0 _ = []
primeiros n (x:xs) = x : primeiros (n-1) xs

main :: IO ()
main = do
    --substituir com os valores desejados
    print (primeiros 4 [1,2,3,4,5,6,7])