import Jogador
import Fase1
import Fase2
import Fase3
import Util
import Arts

main2 :: Personagem -> IO ()
main2 jogador = do
    if (getFlag jogador 1 && getFlag jogador 2 && getFlag jogador 3) then do
            putStrLn "Chefão final"
    else do
        putStrLn "Escolha uma fase: [1] [2] [3]"
        option <- getLine
        if (read option == 1) then do
            if (getFlag jogador 1) then do
                main2 jogador
            else do
                --resultado <- fase1 jogador
                --print resultado
                if(fase1 jogador) then do
                    let n_j = setFlag jogador 1
                    print "Ganhou"
                    main2 n_j
                else do
                    msgGameOver 
        else do
            putStrLn "teste"

main :: IO ()
main = do 
    let npc = guerreiro
    main2 npc

start :: IO()
start = do
     menu