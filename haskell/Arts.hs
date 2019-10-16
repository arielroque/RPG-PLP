module Player
(
  loading
  ,msgGameOver
  ,msgVitoria
  ,clrScreen
  ,menu
) where


import Control.Concurrent
import qualified System.Process


--Limpa da tela
clrScreen :: IO()
clrScreen = do
  _ <- System.Process.system "clear"
  return ()

msgVitoria :: IO()
msgVitoria = do
    putStrLn "██╗   ██╗ ██████╗  ██████╗███████╗    ██╗   ██╗███████╗███╗   ██╗ ██████╗███████╗██╗   ██╗██╗██╗██╗██╗██╗██╗██╗██╗" 
    threadDelay 100000 
    putStrLn "██║   ██║██╔═══██╗██╔════╝██╔════╝    ██║   ██║██╔════╝████╗  ██║██╔════╝██╔════╝██║   ██║██║██║██║██║██║██║██║██║" 
    threadDelay 100000 
    putStrLn "██║   ██║██║   ██║██║     █████╗      ██║   ██║█████╗  ██╔██╗ ██║██║     █████╗  ██║   ██║██║██║██║██║██║██║██║██║"
    threadDelay 100000  
    putStrLn "╚██╗ ██╔╝██║   ██║██║     ██╔══╝      ╚██╗ ██╔╝██╔══╝  ██║╚██╗██║██║     ██╔══╝  ██║   ██║╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝" 
    threadDelay 100000 
    putStrLn " ╚████╔╝ ╚██████╔╝╚██████╗███████╗     ╚████╔╝ ███████╗██║ ╚████║╚██████╗███████╗╚██████╔╝██╗██╗██╗██╗██╗██╗██╗██╗" 
    threadDelay 100000 
    putStrLn "  ╚═══╝   ╚═════╝  ╚═════╝╚══════╝      ╚═══╝  ╚══════╝╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚═════╝ ╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝"
    threadDelay 10000000
    clrScreen
 
    
msgGameOver :: IO()
msgGameOver = do
    putStrLn ""
    putStrLn " ▄████  ▄▄▄       ███▄ ▄███▓▓█████     ▒█████   ██▒   █▓▓█████  ██▀███"
    threadDelay 100000 
    putStrLn " ██▒ ▀█▒▒████▄    ▓██▒▀█▀ ██▒▓█   ▀    ▒██▒  ██▒▓██░   █▒▓█   ▀ ▓██ ▒ ██▒"
    threadDelay 100000
    putStrLn "▒██░▄▄▄░▒██  ▀█▄  ▓██    ▓██░▒███      ▒██░  ██▒ ▓██  █▒░▒███   ▓██ ░▄█ ▒"
    threadDelay 100000
    putStrLn "░▓█  ██▓░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄    ▒██   ██░  ▒██ █░░▒▓█  ▄ ▒██▀▀█▄"
    threadDelay 100000
    putStrLn "░▒▓███▀▒ ▓█   ▓██▒▒██▒   ░██▒░▒████▒   ░ ████▓▒░   ▒▀█░  ░▒████▒░██▓ ▒██▒"
    threadDelay 100000
    putStrLn " ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░   ░ ▒░▒░▒░    ░ ▐░  ░░ ▒░ ░░ ▒▓ ░▒▓░"
    threadDelay 100000
    putStrLn "  ░   ░   ▒   ▒▒ ░░  ░      ░ ░ ░  ░     ░ ▒ ▒░    ░ ░░   ░ ░  ░  ░▒ ░ ▒░"
    threadDelay 100000
    putStrLn "░ ░   ░   ░   ▒   ░      ░      ░      ░ ░ ░ ▒       ░░     ░     ░░   ░ "
    threadDelay 100000
    putStrLn "      ░       ░  ░       ░      ░  ░       ░ ░        ░     ░  ░   ░     "
    threadDelay 100000
    putStrLn "                                                      ░                "
    threadDelay 10000000
    clrScreen


menu :: IO()
menu = do
    putStrLn "|-----------------------------------------------------------------------------|" 
    putStrLn "|                                 Menu                                        |" 
    putStrLn "|                           [1] Iniciar Jogo                                  |" 
    putStrLn "|                           [2] Ranking                                       |" 
    putStrLn "|                           [3] Créditos                                      |" 
    putStrLn "|                           [0] Sair do Jogo                                  |" 
    putStrLn "|-----------------------------------------------------------------------------|"
    threadDelay 10000000
    clrScreen
 

loading :: IO()
loading = do
    putStrLn "██╗      ██████╗  █████╗ ██████╗ ██╗███╗   ██╗ ██████╗"
    threadDelay 100000
    putStrLn "██║     ██╔═══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝" 
    threadDelay 100000
    putStrLn "██║     ██║   ██║███████║██║  ██║██║██╔██╗ ██║██║  ███╗"
    threadDelay 100000
    putStrLn "██║     ██║   ██║██╔══██║██║  ██║██║██║╚██╗██║██║   ██║"
    threadDelay 100000
    putStrLn "███████╗╚██████╔╝██║  ██║██████╔╝██║██║ ╚████║╚██████╔╝"
    threadDelay 100000
    putStrLn "╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ "
    threadDelay 10000000
    clrScreen

                                                       
main = do
    msgGameOver