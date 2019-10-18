module Inimigos
(
  Monster(..)
  ,soldadoMaligno
  ,goblin
  ,loboNordestino
  ,xamaNoob
  ,orc
  ,minotauro
  ,magoFogo
  ,magoGelo
  ,magoVento
  ,inimigosFracos
  ,inimigosFortes
  ,chefoes
  ,inimigoAbatido
  ,danoRecebido
  ,eGetDmg
  ,eGetHp
  ,eGetNome
  ,iniciativa
) where

data Monster = Monster {hp :: Int,danoInimigo :: Int,ataqueOportunidade:: Int, nomeInimigo :: String} deriving (Show,Eq)

soldadoMaligno = Monster 5 10 5 "soldadoMaligno"
goblin = Monster 10 20 6 "Goblin"
loboNordestino = Monster 20 30 8 "Lobo Nordestino"

xamaNoob = Monster 25 30 11 "Xamã Noob"
orc = Monster 28 20 11 "Orc"
minotauro = Monster 30 30 14 "minotauro Alemão"

magoFogo = Monster 40 40 16 "Mago do fogo Imperativo"
magoGelo = Monster 30 30 17 "Mago de Gelo lógico"
magoVento = Monster 35 30 18 "mago do Vento Funcional"

inimigosFracos=[soldadoMaligno,goblin,loboNordestino]
inimigosFortes=[xamaNoob,orc,minotauro]
chefoes=[magoFogo,magoGelo,magoVento]

danoRecebido::Monster->Int->Monster
danoRecebido enemy dano=Monster ((hp enemy)-dano) (danoInimigo enemy) (ataqueOportunidade enemy) (nomeInimigo enemy)

inimigoAbatido::Monster->Bool
inimigoAbatido enemy=(hp enemy)<=0

--GETS
eGetNome :: Monster -> String
eGetNome monster = nomeInimigo monster

eGetHp :: Monster -> Int
eGetHp monster = hp monster

eGetDmg :: Monster -> Int
eGetDmg monster = danoInimigo monster

iniciativa::Monster -> Int
iniciativa monster = ataqueOportunidade monster
