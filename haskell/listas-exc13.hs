apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto f (x:xs) =
    if f x == True 
        then apagarEnquanto f xs
        else x : xs

main :: IO ()
main =
    --substituir com os valores desejados
    print (apagarEnquanto (<2) [1,1,2,3,4,5])