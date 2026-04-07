data Ponto = Ponto2d Float Float | Ponto3d Float Float Float

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2d x1 y1) (Ponto2d x2 y2) = sqrt((x2 - x1)^2 +(y2 - y1)^2)
distancia (Ponto3d x1 y1 z1) (Ponto3d x2 y2 z2) = sqrt((x2 - x1)^2 +(y2 - y1)^2 +(z2 - z1)^2)
distancia _ _ = error "não é possível calcular"

main :: IO()
main = do
    print (distancia (Ponto2d 1 2) (Ponto2d 4 6))
    print (distancia (Ponto3d 1 2 3) (Ponto3d 4 6 8))
    print (distancia (Ponto2d 1 2) (Ponto3d 4 6 8))
