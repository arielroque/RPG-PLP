module Fase3 (fase3) where

import Inimigos
import Jogador
import Util
import Batalha2 
import Arts

fase3:: Personagem -> IO ()
fase3 jogador = do
    let monstro = goblin
    if ((batalha jogador monstro (rolaDado(20)))) then do
        print "Ganhou"
    else do
        msgGameOver