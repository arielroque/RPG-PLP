import Constantes
import Leitor_arquivo

mGerarPergunta::String->String->[String]->Int->IO()

mGerarPergunta res nomeArquivo [] resposta = do
    escreverTexto nomeArquivo (res++("\n#\n"++((show resposta)))) write
mGerarPergunta res nomeArquivo (x:xs) resposta = do
    mGerarPergunta (res++("\n"++x)) nomeArquivo xs resposta

gerarPergunta::String->String->[String]->Int->IO()
gerarPergunta titulo enunciado opcoes resposta = do
    mGerarPergunta (titulo++("\n#\n"++enunciado++"\n")) (titulo++".txt") opcoes resposta

coletorPergunta::[String]->Integer->IO [String]
coletorPergunta opcoes 0 = do
    return opcoes
coletorPergunta opcoes cnt = do
    opcao<-getLine::IO String
    coletorPergunta (opcao:opcoes) (cnt-1)

lerTitulo::String->IO String
lerTitulo titulo = lerArquivo (titulo++".txt") 1

lerEnunciado::String->IO String
lerEnunciado titulo = lerArquivo (titulo++".txt") 2

getResposta::String->IO Int
getResposta titulo = do
    contents<-readFile (titulo++".txt")
    let li = lines contents
    return (read (li!!((length li)-2))::Int)

{-main = do
    --ler
    {-cont<-getLine::IO String
    s<-readLn::IO Int

    --putStrLn $ show (lerArquivo cont s)
    res <- lerArquivo cont s
    putStrLn res-} 

    --gerar
    {-titulo <- getLine::IO String
    enunciado <- getLine::IO String
    opcoes<-(coletorPergunta [] opcoes)::IO [String]
    print ("RESPOSTA")
    resposta<-readLn::IO Int
    gerarPergunta titulo enunciado opcoes resposta

    op<-getLine::IO String
    pergunta<-lerTitulo op
    putStrLn pergunta
    pergunta<-lerEnunciado op
    putStrLn pergunta-}

    {-titulo <- getLine::IO String
    resp<-getResposta titulo
    putStrLn $ (show resp)-}
    -}

