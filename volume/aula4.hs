sumList :: [Int] -> Int
sumList [] = 0

sumList (a:as) = a + sumList as

sumList2 :: [Int] -> Int
sumList2 [] = 0

sumList2 (item:itens_restantes) = item + sumList2 itens_restantes

lenght :: [t] -> Int
lenght [] = 0

lenght (a:as) = 1 + lenght as
