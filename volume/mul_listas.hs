{-
    Exemplo de uso:

        1° - Quando carregar com :load mul_listas.hs
        2° - usar: 
                mul2 [3,3,3] [1,2,3,5]
            
            saída esperada: 
                [3,6,9,0]
-}

mul2 :: [Int] -> [Int] -> [Int]
mul2 [] [] = []                                             -- Ambos os vetores são vazios, retorna lista vazia
mul2 [] alguma_coisa = replicate (length alguma_coisa) 0    -- Condição de parada para a recursão
mul2 alguma_coisa2 [] = replicate (length alguma_coisa2) 0  -- Condição de parada para a recursão

-- Os dois pontos : faz o append.
-- Então, no vetor de inteiros que foi indicado que será a resposta
-- estamos falando para adicionar item1*item2 e fazer o mul2 com o que sobrar
mul2 (item1:itens1) (item2:itens2) = item1*item2 : mul2 itens1 itens2

main = do
    sa <- getLine
    let a = read sa :: [Int]
    sb <- getLine
    let b = read sb :: [Int]
    let result = mul2 a b
    print result