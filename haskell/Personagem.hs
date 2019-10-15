module Player
(
  Player(..)
  ,takeDmg
  ,upgradeDamage
  ,gameOver
) where

data Player = Player{HP :: Int,currentDamage :: Int, defesa:: Int} deriving (Show,Eq)

takeDmg::Player->Int->Player
takeDmg hero deduction=Player ((HP hero)-deduction) (currentDamage hero)

upgradeDamage::Player->Int->Player
upgradeDamage hero novaArma=Player (HP hero) novaArma

gameOver::Player->Bool
gameOver hero=(HP hero)<=0


getHP :: Character -> Int
getHP player = HP player

getDef :: Character -> Int
getDef player = defesa player



--MÉTODO INCOMPLETO, É NECESSÁRIO COLOCAR MAIS CHAMADAS DE FUNÇÕES
createCharacter :: IO Character
createCharacter = do
  clrScreen
  nome_jogador <- (prompt "Insira seu nome: ")
  clrScreen
  return $ Character nome_jogador 