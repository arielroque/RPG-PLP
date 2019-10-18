
module Batalha2 where

import Inimigos
import Jogador
import Util

batalha:: Personagem -> Inimigos.Monster -> IO Int -> Bool
batalha jogador monstro pAtk = do
    let n_jogador = takeDmg jogador (eGetDmg monstro)
    let n_monstro = danoRecebido monstro (getDam jogador)
    if (eGetHp n_monstro < 1) then do
        True
    else if (getHp n_jogador < 1) then do
        --print (danoRecebido monstro (getDam jogador)) pAtk >= (iniciativa monstro)
        False
    else do
        batalha n_jogador n_monstro (rolaDado(20))