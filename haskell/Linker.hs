module Linker where
import Leitor_arquivo
import Constantes
import Util
import Batalha2
import Jogador
import Inimigos
import System.Exit
import qualified System.Process as SP

irParaTaverna::[Int]->IO ()
irParaTaverna went = do
    ret<-lerArquivo arquivoEntradaTaverna 1
    putStrLn ret
    opcao<-readLn::IO Int
    clrScreen
    if(opcao == 1) then do

        readShowAndClear arquivoDescansar
        escolherCaminhoCidade went
    else if(opcao == 3) then do
        escolherCaminhoCidade went
    else do
        readShowAndClear arquivoAproveitarNoite
        escolherCaminhoCidade went

readShowAndClear::String->IO ()
readShowAndClear path = do
    ret<-lerArquivo path 1
    putStrLn ret
    getChar
    clrScreen

concluirFase::[Int]->Int->[Int]->[Int]
concluirFase [] ind res = reverse (1:res)
concluirFase (x:xs) 0 res = concluirFase xs (-1) (1:res)
concluirFase (x:xs) ind  res = concluirFase xs (ind-1) (x:res)


irParaPicosStress::[Int]->IO()
irParaPicosStress went = do

    --ja concluiu esse lugar
    if(went!!0 == 1) then do
        readShowAndClear arquivoCaminhoConcluido
        escolherCaminhoCidade went        
    else do
        readShowAndClear arquivoPicosStress0
        
        --Batalha minotauro alemao
        let player = guerreiro
        let inimigo = minotauro
        let resultadoInimigo = batalha player inimigo (rolaDado(20))

        readShowAndClear arquivoPicosStress1
        
        --ja veio aqui
        if(went!!1 == 1 || went!!2 == 1) then readShowAndClear bossKazejin2
        else readShowAndClear bossKazejin1

        --BATALHA CONTRA MAGO DE VENTO
        let boss = magoVento
        let resultadoBoss = batalha player boss (rolaDado(20))

        readShowAndClear arquivoPicosStress2

        escolherCaminhoCidade (concluirFase went 0 [])

irParaEstradas::[Int]->IO ()
irParaEstradas went = do
    if(went!!1 == 1) then do 
        readShowAndClear arquivoCaminhoConcluido
        escolherCaminhoCidade went
    else do
        readShowAndClear arquivoEstradas1

        --BATALHA CONTA MAGO DE FOGO
        let boss = magoFogo
        let player = guerreiro
        let resultadoBoss = batalha player boss (rolaDado(20))

        readShowAndClear arquivoEstradas2

        escolherCaminhoCidade (concluirFase went 1 [])

irParaLagoaGarcas::[Int]->IO ()
irParaLagoaGarcas went = do
    if(went!!2 == 1) then do
        readShowAndClear arquivoCaminhoConcluido
        escolherCaminhoCidade went
    else do
        if(went!!0 == 1 || went!!1 == 1) then do
            --fase
            readShowAndClear arquivoLagoaGarca1

            --BATALHA XAMA NOOB
            let inimigo = xamaNoob
            let player = guerreiro
            let resultadoBatalha = batalha player inimigo (rolaDado(20))

            readShowAndClear arquivoLagoaGarca2

            escolherCaminhoCidade (concluirFase went 2 [])

        else do
            --retorne
            readShowAndClear arquivoLagoaGarca0
            escolherCaminhoCidade went

irParaTemploPythano::[Int]->IO ()
irParaTemploPythano went = do
    if(went!!0 == 1 && went!!1 == 1 && went!!2 == 1) then do

        readShowAndClear arquivoTemplo1

        --JOGO ACABOU

    else do
        --cannot enter
        readShowAndClear arquivoTemplo0
        escolherCaminhoCidade went


{- --A estrategia eh ter uma lista dos lugares ja visitados-}
escolherCaminhoCidade::[Int]->IO ()
escolherCaminhoCidade went = do

    ret<-lerArquivo arquivoPartida 1
    
    putStrLn ret

    opcao<-readLn::IO Int
    
    clrScreen
    if(opcao == 0) then irParaTaverna went
    else if(opcao == 1) then irParaPicosStress went
    else if(opcao == 2) then irParaEstradas went
    else if(opcao == 3) then irParaLagoaGarcas went
    else if(opcao == 4) then irParaTemploPythano went
    else exitWith ExitSuccess
    

iniciarJogo::IO ()
iniciarJogo = do
    ret<-lerArquivo arquivoInicio 1
    putStrLn ret
    getChar
    clrScreen
    escolherCaminhoCidade [0,0,0]
