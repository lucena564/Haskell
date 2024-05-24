# [Haskell](http://www.haskell.org/)
Repositório para guardar as anotações sobre Haskell, linguagem funcional

Rodar o comando abaixo para buildar o Dockerfile que está na pasta:
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

## Volumes - haskell image - Lembrar de alterar para a pasta volume que está aqui

```
$ docker container run -ti --mount type=bind,src=C:/volume,dst=/volume haskell
```
* Para o notebook ZBOOK:

```
$ docker container run -ti --mount type=bind,src=C:\Users\victo\Desktop\Haskell\volume,dst=/volume haskell
```
OBS: ```C:/volume``` é a pasta que eu criei no meu diretório. Ou essa pasta ```C:\Users\victo\Desktop\Haskell\volume```.