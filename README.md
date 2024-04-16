# [Haskell](http://www.haskell.org/)
Repositório para guardar as anotações sobre Haskell, linguagem funcional

Para rodar Haskell usando um container basta pegar a imagem disponibilizada no [site do Haskell](https://hub.docker.com/_/haskell/).

```
$ docker run -it --rm haskell:9
```

Também podemos rodar o comando abaixo para buildar o Dockerfile que está na pasta:
```
$ docker build -t haskell .
```

Uma vez que baixamos e executamos podemos sair do terminal ghci usando o comando:

```
Ctrl + p + q
```

E também voltar para o mesmo utilizando o comando:

```
$ docker attach <ID do container>
```

OBS: Para pegar o ID do container com uma das opções:

```
$ docker container ls -a
$ docker images
```

## Compilando arquivos

Para criar um arquivo Hello:

```
vim nome_do_arquivo.hs
```

Escreve o arquivo e salva apertando ESC e escrevendo:

```
:wq!
```

Após isso poderemos rodar o nosso programa. Um exemplo de um arquivo .hs pode ser:

```
main = do
  putStrLn "Hello, everybody!"
  putStrLn ("Please look at my favorite odd numbers: " ++ show (filter odd [10..20]))
```

Depois que salvar esse arquivo rodar:

```
ghc hello.hs
```

E depois:
```
./hello
```

## Comandos básicos:

Retorna o número digitado + 1
```
ghci> succ 4
```

## Notação: Programação baseada em definições
```
answer :: Int
answer = 42

greater :: Bool
greater = (answer > 71) # Vai ter um valor falso

yes :: Bool
yes = True
```