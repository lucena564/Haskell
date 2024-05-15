-- Exercício
type Pessoa = String
type Livro = String
type BancoDados = [(Pessoa,Livro)]

-- livros emprestados
baseExemplo :: BancoDados
baseExemplo = [("Sergio","O Senhor dos Aneis"),
               ("Andre","Duna"),
               ("Fernando","Jonathan Strange & Mr. Norrell"), 
               ("Fernando","Duna")]

-- fazer uma versão usando compreensão de listas e outra usando a função filter
-- livros :: BancoDados -> Pessoa -> [Livro]
livros1 bd pess = [ livr | (p,livr) <- bd, p == pess ]
livros2 bd pess = map snd (filter (\(p,l) -> (p == pess)) bd) -- essa \ é para definir uma expressão lambda
-- livros2 bd pess = map snd (filter procurapessoa bd)
--  where procurapessoa (p,l) = (p == pess)



-- fazer uma versão usando compreensão de listas e outra usando a função filter
-- emprestimos :: BancoDados -> Livro ->[Pessoa]
emprestimos1, emprestimos2 :: BancoDados -> Livro -> [Pessoa]
emprestimos1 bd livr = [ p | (p,l) <- bd, l == livr ]
emprestimos2 bd livr = map fst (filter (\(p,l) -> l == livr) bd)



-- emprestado :: BancoDados -> Livro -> Bool
emprestado :: BancoDados -> Livro -> Bool
emprestado bd livro = (emprestimos1 bd livro /= [])

-- qtdEmprestimos :: BancoDados -> Pessoa -> Int
-- qtdEmprestimos :: BancoDados -> Pessoa -> Int
-- qtdEmprestimos bd pess = lenght


-- emprestar :: BancoDados -> Pessoa -> Livro -> BancoDados

-- devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
