module Enemies
(
  Inimigo(..)
  ,soldadoMaligno
  ,goblin
  ,loboNordestino
  ,xamaNoob
  ,orc
  ,Minotauro
  ,magoFogo
  ,magoGelo
  ,magoVento
  ,inimigosFracos
  ,inimigosFortes
  ,chefoes
  ,inimigoAbatido
  ,danoRecebido
  ,EgetDmg
  ,EgetHp
  ,EgetNome
) where

data Inimigo = Inimigo {HP :: Int,danoInimigo :: Int,ataqueOportunidade:: Int, nomeInimigo :: String} deriving (Show,Eq)

soldadoMaligno = Enemy 5 10 5 "soldadoMaligno"
goblin = Enemy 10 20 6 "Goblin"
loboNordestino = Enemy 20 30 8 "Lobo Nordestino"

xamaNoob = Enemy 25 30 11 "Xamã Noob"
orc = Enemy 28 20 11 "Orc"
Minotauro = Enemy 30 30 14 "Minotauro Alemão"

magoFogo = Inimigo 40 40 16 "Mago do fogo Imperativo"
magoGelo = Inimigo 30 30 17 "Mago de Gelo lógico"
magoVento = Inimigo 35 30 18 "mago do Vento Funcional"

inimigosFracos=[soldadoMaligno,goblin,loboNordestino]
inimigosFortes=[xamaNoob,orc,Minotauro]
chefoes=[magoFogo,magoGelo,magoVento]

danoRecebido::Inimigo->Int->Inimigo
danoRecebido enemy dano=Inimigo ((HP enemy)-dano) (danoInimigo enemy) (ataqueOportunidade enemy) (nomeInimigo enemy)

inimigoAbatido::Inimigo->Bool
inimigoAbatido enemy=(HP enemy)<=0

--GETS
EgetNome :: Monster -> String
EgetNome monster = name monster

EgetHp :: Monster -> Int
EgetHp monster = hp monster

EgetDmg :: Monster -> Int
EgetDmg monster = damage monster

