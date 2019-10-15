module GameStory.Story (
	getOpYesNo,
	adventureClincher,
	start
) where

import Util

 getOpYesNo:: IO String
 getOpYesNo = do
	putStrLn "O que você irá responder? "
	putStrLn "Sim (digite s)"
	putStrLn "Não (digite n)"
	option <- getLine
    -- $ no lugar de ()
	return $ (read $ show option :: String)

msgDeErro :: IO Char
msgDeErro = do
	putStrLn "Opção inválida. Tente novamente!"
	clearScreen
