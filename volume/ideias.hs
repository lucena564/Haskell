maquinaSomar :: [Int] -> Int -> Bool -> [Int] 
maquinaSomar [] total _ = [total]

maquinaSomar (item1:itens1) total flag | item1 == 0 && flag == True = [total]
                                       | item1 == 0 && flag == False = maquinaSomar itens1 (total+item1) True
                                       | item1 /= 0 && flag == True = maquinaSomar itens1 (total+item1) False
                                       | otherwise = maquinaSomar itens1 (total+item1) False                         

main = do
    linha_lida <- getLine
    let lista_input = read linha_lida :: [Int]
    let resultado = maquinaSomar lista_input 0 False
    let resultado_final = 
            if (null lista_input) || ((resultado == [0] || null resultado) && (length lista_input >= 2 && lista_input !! 0 == 0 && lista_input !! 1 == 0))
                then []
                else resultado
    print resultado_final
