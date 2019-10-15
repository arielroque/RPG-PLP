module Util (
  getOption,
  clrScreen,
  init,
  rollDice,
  skip
) where

import qualified System.Process
import qualified System.Random (randomRIO)

init :: String -> IO String
init text = do
  putStr text
  resposta <- getLine
  return resposta

--Limpa da tela
clrScreen :: IO()
clrScreen = do
  _ <- System.Process.system "clear"
  return ()

--chamada de função para escolha de alternativa, retorna a opção depois
getOption :: IO Int
getOption = do
  putStr "Qual a sua resposta ? "
  op <- getLine
  return $ read op

--Rola um dado
rollDice :: Int -> IO Int
rollDice num = System.Random.randomRIO (1::Int, num)

--Pega uma lista de String e passa pra inteiro
mapStrtoInt :: [String] -> [Int]
mapStrtoInt string = map (read :: String -> Int) string

skip :: IO()
skip = do
	putStrLn ""
	putStr "Pressione [Enter] para continuar"
	_ <- getLine
	clearScreen