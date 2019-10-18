module Fase2 (fase2) where

import Inimigos
import Jogador
import Util
import Batalha2 
import Arts

fase2:: Personagem -> IO ()
fase2 jogador = do
    let monstro = goblin
    if ((batalha jogador monstro (rolaDado(20)))) then do
        print "Ganhou"
    else do
        msgGameOver