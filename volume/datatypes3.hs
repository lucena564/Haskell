data Shape = Circle Float
             | Rectangle Float Float
             | Square Float
    deriving Show

isRound :: Shape -> Bool
isRound (Circle r) = True
isRound _ = False

-- Definir função área
area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle lado1 lado2) = lado1 * lado2
area (Square lado) = lado * lado

data ListaEncadeada t = ListaVazia | CabecaECauda t (ListaEncadeada t)
exemploLista :: ListaEncadeada Int
exemploLista = CabecaECauda 4 (CabecaECauda 5 ListaVazia)
-- 4 : (5:[])

data Lista t = Vazia | Cons t (Lista t)
    deriving Show
exemplo2 :: Lista Int
exemplo2 = Cons 4 (Cons 5 Vazia) -- Ele sabe que é do tipo Lista de alguma coisa

showLista :: Show t => Lista t -> String
showLista Vazia = "{}"
showLista (Cons elemento lista) = show elemento ++ ":::" ++ showLista lista

exemplo3 :: [Int]
exemplo3 = 4 : 5 : []