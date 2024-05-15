-- Definindo a função maquinaSomar que recebe uma lista de inteiros e retorna outra lista de inteiros
maquinaSomar :: [Int] -> [Int]
-- Se a lista de entrada estiver vazia, a lista de saída também será vazia
maquinaSomar [] = []
-- Caso contrário, chamamos a função go com os parâmetros iniciais
maquinaSomar xs = go xs 0 False [] 0
  where
    -- Definindo a função go que realiza a soma cumulativa e cria a lista de saída
    go :: [Int] -> Int -> Bool -> [Int] -> Int -> [Int]

    -- Se a lista de entrada estiver vazia, retorna a lista acumulada
    go [] _ _ acumulado _ = acumulado

    -- Se o próximo elemento da lista for zero, e estávamos no meio de uma soma, adicionamos a soma acumulada à lista de saída
    -- e reiniciamos a soma para zero
    go (0:resto) somaAtual True acumulado 0 = acumulado

    -- Se o próximo elemento da lista for zero, e não estávamos no meio de uma soma, continuamos a varredura
    go (0:resto) somaAtual True acumulado prev = go resto 0 False (acumulado ++ [somaAtual]) prev

    -- Se o próximo elemento da lista for diferente de zero e estávamos no meio de uma soma, continuamos a soma
    go (x:resto) somaAtual True acumulado prev = go resto (somaAtual + x) True acumulado x
    
    -- Se o próximo elemento da lista for diferente de zero e não estávamos no meio de uma soma, começamos uma nova soma
    go (x:resto) _ False acumulado _ = go resto x True acumulado x

-- Função principal que recebe entrada do usuário, chama maquinaSomar e imprime o resultado
main :: IO ()
main = do
    lista <- getLine  -- Recebe a lista de entrada do usuário como uma string
    print $ maquinaSomar (read lista :: [Int])  -- Converte a string para uma lista de inteiros, aplica a função maquinaSomar e imprime o resultado

{-
    *** LEMBRETE: Antes de colocar o input, tem que rodar o main
        $ main
        $ [0,1,2,3,4,0,0,2,3,2]
        $ [10]

Case 1:

    Input
        [0,1,2,3,4,0,0,2,3,2]
    Output
        [10]

Case 2:

    Input
        [1,0,0,1]
    Output
        [1]

Case 3:

    Input
        [0,0,1]
    Output
        []

Case 4:
    Input
        [0,0,1,2,3,0,1]
    Output
        []

Case 5:
    Input
        [0,2,3,4,0]
    Output
        [9]
-}

{-
    where:
        O where é uma construção em Haskell que permite definir funções locais dentro de uma definição de função maior. Neste caso, estamos usando where para definir uma função local chamada go, que é usada para fazer a iteração sobre a lista de entrada e calcular as somas.
        Essa abordagem torna o código mais modular e legível, separando a lógica da função principal (maquinaSomar) da lógica da iteração e cálculo das somas (go).

    go:
        go é uma função local definida dentro de maquinaSomar usando where.
        A função go é responsável por percorrer a lista de entrada e calcular as somas parciais entre zeros consecutivos.

        Ela recebe três argumentos:

            xs: a lista de entrada restante para ser percorrida.
            total: a soma parcial atual entre os zeros consecutivos.
            sums: a lista de somas parciais calculadas até o momento.

        A função go usa recursão para percorrer a lista de entrada. Em cada passo da recursão, ela verifica o próximo elemento da lista:

        Se o elemento for zero, isso indica o fim de um intervalo de soma. Nesse caso, a função adiciona o total atual à lista de somas (sums) e reinicia o total para zero. Então continua a recursão com a lista restante.

        Se o elemento não for zero, isso indica que ele deve ser adicionado ao total. A função atualiza o total somando o elemento atual e continua a recursão com a lista restante.

        Quando a lista de entrada estiver vazia, o processo de recursão termina e a função retorna a lista de somas (sums) com o último total adicionado.
-}