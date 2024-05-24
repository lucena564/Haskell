-- Função auxiliar para identificar o primeiro char na palavra
-- No caso dgt: [0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F]
digits :: String -> [Char]
digits [] = []
digits (x:xs)
    | x `elem` ['0'..'9'] ++ ['A','B','C','D','E','F'] = x : digits xs
    | otherwise = digits xs

firstDigit :: String -> Char
firstDigit st = case digits st of
                  [] -> '\0' -- Retorna um caractere nulo se não houver dígitos na string
                  (a:_) -> a -- Retorna o primeiro dígito encontrado na string

converter :: String -> String
converter palavra | palavra == "0" = "0000"
                  | palavra == "1" = "0001"
                  | palavra == "2" = "0010"
                  | palavra == "3" = "0011"
                  | palavra == "4" = "0100"
                  | palavra == "5" = "0101"
                  | palavra == "6" = "0110"
                  | palavra == "7" = "0111"
                  | palavra == "8" = "1000"
                  | palavra == "9" = "1001"
                  | palavra == "A" = "1010"
                  | palavra == "B" = "1011"
                  | palavra == "C" = "1100"
                  | palavra == "D" = "1101"
                  | palavra == "E" = "1110"
                  | palavra == "F" = "1111"
                  | otherwise = ""

htob :: String -> String
-- Vai entrar AA - 1010 - 0001|0000|0001|0000
htob [] = []
htob (letra:palavra_restante) = converter [letra] ++ htob palavra_restante

main = do
    s <- getLine
    let result = htob s
    print result
