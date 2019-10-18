module Linker where
import Leitor_arquivo
import Constantes
import Util
import Batalha2
import qualified System.Process as SP

irParaTaverna::IO ()
irParaTaverna = do
    ret<-lerArquivo arquivoEntradaTaverna 1
    putStrLn ret
    opcao<-readLn::IO Int
    if(opcao == 1) then putStrLn $ (show lerArquivo arquivoDescansar 1)
    else putStrLn $ (show lerArquivo arquivoAproveitarNoite 1)

readShowAndClear::String->IO ()
readShowAndClear path = do
    ret<-lerArquivo path 1
    putStrLn ret
    getChar
    clrScreen

concluirFase::[Int]->Int->[Int]->[Int]
concluirFase [] ind res = reverse (1:res)
concluirFase (x:xs) ind 0 = concluirFase xs (1:res) (-1)
concluirFase (x:xs) ind res = concluirFase xs (x:res) (res-1)


irParaPicosStress::Int->IO()
irParaPicosStress went = do

    --ja concluiu esse lugar
    if(went!!0 == 1) then do
        readShowAndClear arquivoCaminhoConcluido
        escolherCaminhoCidade went        
    else do
        readShowAndClear arquivoPicosStress0
        
        --Batalha minotauro alemao
        player <- guerreiro
        inimigo <- minotauro
        batalha player inimigo rolaDado(20)

        readShowAndClear arquivoPicosStress1
        
        --ja veio aqui
        if(went!!1 == 1 || went!!2 == 1) then readShowAndClear bossKazejin2
        else readShowAndClear bossKazejin1

        --BATALHA CONTRA MAGO DE VENTO
        boss <- magoVento
        batalha player boss rolaDado(20)

        readShowAndClear arquivoPicosStress2

        escolherCaminhoCidade (concluirFase went 0 [])

{- --A estrategia eh ter uma lista dos lugares ja visitados-}
ecolherCaminhoCidade::[Int]->IO ()
escolherCaminhoCidade went = do

    ret<-lerArquivo arquivoPartida 1
    
    opcao<-readLn::IO Int
    
    clrScreen
    if(opcao == 0) then do irParaTaverna
    else do irParaPicosStress went 0
    {-if(opcao == 0) then irParaTaverna
    else if(opcao == 1) then irParaPicoStress
    else if(opcao == 2) then irParaEstradas
    else if(opcao == 3) then irParaLagoGarcas
    else if(opcao == 4) then irParaTemploPythano
    else exitWith ExitSuccess-}
    

iniciarJogo::IO ()
iniciarJogo = do
    ret<-lerArquivo arquivoInicio 1
    putStrLn ret
    getChar
    clrScreen
    escolherCaminhoCidade [0,0,0]
