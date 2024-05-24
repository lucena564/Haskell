-- Defina as seguintes funções
showExpr :: Expr -> String
toList :: List t -> [t]
fromList :: [t] -> List t
depth :: Tree t -> Int
collapse :: Tree t -> [t] -- Pega uma arvore de inteiros e retorna uma lista com esses inteiros
mapTree :: (t -> u) -> Tree t -> Tree u
