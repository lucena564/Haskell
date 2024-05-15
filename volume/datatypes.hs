module Main where

-- main :: IO ()
main = do putStrLn (show (area (Square 5.0)))
          putStrLn (show (area teste))
          putStrLn (show (area (Rectangle 5.0 4.0)))

teste = Circle 4.0


data Estacao = Inverno | Verao |
             Outono  | Primavera
    deriving (Show, Eq)

data Temp = Frio | Quente
    deriving (Show, Eq)

clima :: Estacao -> Temp
clima Inverno = Frio
clima _       = Quente

type Nome = String
type Idade = Int
data Pessoas = Pessoa Nome Idade
 deriving (Show)

showPerson :: Pessoas -> String
showPerson (Pessoa n a) = n ++ " -- " ++ show a

data Shape = Circle Float
           | Rectangle Float Float
           | Square Float
 deriving (Show)

isRound :: Shape -> Bool
isRound (Circle _) = True
isRound (Rectangle _ _) = False
isRound (Square _) = False

area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle l1 l2) = l1 * l2
area (Square l) = l * l 
