-- Cruar novos tipos de dados e novos
-- Construtores de tipos

{-
data Bool = True | False
data Estacao = Inverno | Verao | Outono | Primavera

data Temp = Frio | Quente
-}

data Estacao = Outono | Verao | Primavera | Inverno
    deriving Show

data Temperatura = Quente | Frio
    deriving Show

clima :: Estacao -> Temperatura
clima Inverno = Frio
clima _ = Quente

{-
Pessoa "Jose" 23

ghci> Pessoa "Antonio" 25
Pessoa "Antonio" 25

ghci> showPerson (Pessoa "Antonio" 25)
"Antonio -- 25"
-}

type Nome = String
type Idade = Int

data Pessoas = Pessoa Nome Idade
    deriving (Show)

showPerson :: Pessoas -> String
showPerson (Pessoa n a) = n ++ " -- " ++ show a

{-
Exs da aula

ghci> Circle 2.0 -- Lembrar não pode passar o parenteses
Circle 2.0

ghci> area (Circle 2.0)
6.28
-}

data Shape = Circle Float
            | Rectangle Float Float
            | Square Float
    deriving Show

isRound :: Shape -> Bool
isRound (Circle c) = True
isRound _ = False

-- Definir funcao area
area :: Shape -> Float
area (Circle r) = (3.14 * r * r)/2
area (Rectangle b h) = (b * h)
area (Square l) = l*l