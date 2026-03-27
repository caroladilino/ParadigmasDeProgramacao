--Crie uma funcao que receba tres notas de um aluno (a, b, c), calcule a media e retorne se o aluno foi aprovado ou reprovado. Para um aluno ser aprovado, ele deve possuir nota igual ou superior a 6. Leia as notas dos alunos do teclado.

calculaMedia :: Float -> Float -> Float -> Float
calculaMedia x y z = (x + y + z) / 3

main = do
    a <- readLn
    b <- readLn
    c <- readLn

    print(calculaMedia a b c)