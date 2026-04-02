type Nome = String
type Aula = String
type Nota = Float

type Aluno = (Nome, Aula, Nota, Nota, Nota)

listaAlunos :: Int -> Aluno
listaAlunos 1 = ("Carolina", "Paradigmas", 8, 9, 7)
listaAlunos 2 = ("Nome dele", "aula q ele faz", 0, 4, 10)

getNome :: Aluno -> Nome
getNome(a,b,c,d,e)= a

getMedia :: Aluno -> Float
getMedia (a,b,c,d,e) = (c + d + e)/3

getNota :: Int -> Float
getNota a = getMedia (listaAlunos a)

mediaTurma :: Int -> Int -> Float
mediaTurma 0 _ = 0
mediaTurma a b = (getNota a)/fromIntegral b + mediaTurma (a-1) b

main :: IO ()
main = do
    putStrLn "Quantos alunos tem na turma?"
    a <- readLn
    print(mediaTurma a a)