module Player
(
  Player(..)
  ,takeDmg
  ,upgradeDamage
  ,gameOver
) where

data Player = Player{HP :: Int,currentDamage :: Int, Defesa:: Int} deriving (Show,Eq)

takeDmg::Player->Int->Player
takeDmg hero deduction=Player ((HP hero)-deduction) (currentDamage hero)

upgradeDamage::Player->Int->Player
upgradeDamage hero novaArma=Player (HP hero) novaArma

gameOver::Player->Bool
gameOver hero=(HP hero)<=0


hpRestaura :: Int -> Player -> Player
hpRestaura num player = player ((HP player) + num) (currentDamage player) (Defesa player)


getHP :: Jogador -> Int
getHP player = HP player

getDef :: Jogador -> Int
getDef player = Defesa player



--MÉTODO INCOMPLETO, É NECESSÁRIO COLOCAR MAIS CHAMADAS DE FUNÇÕES
criaPersonagem :: IO Jogador
criaPersonagem = do
  clrScreen
  nome_jogador <- (prompt "Insira seu nome: ")
  clrScreen
  return $ Jogador nome_jogador 