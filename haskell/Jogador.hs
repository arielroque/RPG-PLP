module Jogador
(
  Personagem(..)
  ,takeDmg
  ,upgradeDamage
  ,gameOver
  ,getHp
  ,getDef
  ,guerreiro
  ,getDam
  ,setFlag
  ,getFlag
) where

data Personagem = Personagem{hp :: Int,currentDamage :: Int, defesa:: Int, flag1 :: Bool, flag2 :: Bool,flag3 :: Bool} deriving (Show,Eq)

guerreiro = Personagem 60 5 3 False False False

takeDmg::Personagem->Int->Personagem
takeDmg personagem deduction = Personagem ((hp personagem)-deduction) (currentDamage personagem) (defesa personagem) (getFlag personagem 1 ) (getFlag personagem 2) (getFlag personagem 3) 

upgradeDamage::Personagem->Int->Personagem
upgradeDamage personagem novoDano=Personagem (hp personagem) ((currentDamage personagem) + novoDano) (defesa personagem) (getFlag personagem 1) (getFlag personagem 2) (getFlag personagem 3)  

gameOver::Personagem->Bool
gameOver personagem=(hp personagem)<=0


hpRestaura :: Int -> Personagem -> Personagem
hpRestaura num personagem = Personagem ((hp personagem) + num) (currentDamage personagem) (defesa personagem) (getFlag personagem 1) (getFlag personagem 2) (getFlag personagem 3) 

getFlag :: Personagem -> Int -> Bool
getFlag personagem int = do
    if(int == 1) then do
        flag1 personagem
    else if(int == 2) then do
        flag2 personagem
    else do 
        flag3 personagem

getHp :: Personagem -> Int
getHp personagem = hp personagem

getDef :: Personagem -> Int
getDef personagem = defesa personagem

getDam:: Personagem -> Int 
getDam personagem = currentDamage personagem

setFlag :: Personagem -> Int -> Personagem
setFlag personagem fase = do

    if (fase == 1) then do
        Personagem (getHp personagem) (getDam personagem) (getDef personagem) True (getFlag personagem 2) (getFlag personagem 3) 

    else if (fase == 2) then do 
        Personagem (getHp personagem) (getDam personagem) (getDef personagem)  (getFlag personagem 1) True (getFlag personagem 3)

    else do
        Personagem (getHp personagem) (getDam personagem) (getDef personagem)  (getFlag personagem 1) (getFlag personagem 2) True 

