	{- Dobrar os itens de um vetor -}
double :: [Int] -> [Int]
double [] = []

double (item:itens) = item*2 : double itens

{- Se um elemento está na lista -}
member :: [Int] -> Int -> Bool
member [] valor = False

member (item:itens) valor | valor == item = True
			  | otherwise = member itens valor {-Faz a chamada recursiva para continuar, se chegar no final vai retornar False-} 


{- Apenas os números de uma string -}
digits :: String -> String
digits [] = []

digits (item:itens) | item >= '0' && item <= '9' = item : digits itens
		    | otherwise = digits itens
-- Pode fazer com a função member tb
-- digits (a:as) | member ['0'..'9'] a = a : digits

{- Soma de uma lista de pares -}
sumPairs :: [(Int,Int)]->[Int]
sumPairs [] = []

-- sumPairs (pair:pairs) = fst pair + snd pair : sumPairs pairs
sumPairs ((x,y):pairs) = (x+y) : sumPairs pairs
