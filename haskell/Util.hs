module Util (
  getOption,
  clrScreen,
  getResposta,
  rolaDado,
  skip
) where

import qualified System.Process
import qualified System.Random (randomRIO)
import System.IO

getResposta :: String -> IO String
getResposta text = do
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
  putStr "escolha uma opção \n"
  op <- getLine
  putStrLn op
  return $ read op   

--Rola um dado
rolaDado :: Int -> IO Int
rolaDado num = System.Random.randomRIO (1::Int, num)

--Pega uma lista de String e passa pra inteiro
mapStrtoInt :: [String] -> [Int]
mapStrtoInt string = map (read :: String -> Int) string

skip :: IO()
skip = do
	putStrLn ""
	putStr "Pressione [Enter] para continuar"
	_ <- getLine
	clrScreen


getOpYesNo:: IO String
getOpYesNo = do

  putStrLn "O que você irá responder? "
  putStrLn "Sim (digite s)"
  putStrLn "Não (digite n)"
  option <- getLine
  -- $ no lugar de ()
  return $ (read $ show option :: String)

msgDeErro :: [Char]
msgDeErro = "Opção inválida. Tente novamente!"
