module Fase1 (fase1) where

import Inimigos
import Jogador
import Util
import Batalha2 
import Arts

fase1:: Personagem -> Bool
fase1 jogador = do
    let monstro = goblin
    if ((batalha jogador monstro (rolaDado(20)))) then do
       True
    else do
        False
