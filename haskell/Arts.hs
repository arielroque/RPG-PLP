module Arts
(
  loading
  ,msgGameOver
  ,msgVitoria
  ,clrScreen
  ,menu
) where


import Control.Concurrent
import qualified System.Process
import Ranking



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
    menu


ranking:: IO()
ranking = do
    clrScreen
    putStrLn("                              RANKING                          \n");
    putStrLn("+--------------------------------------------------------------+\n");
    putStrLn("|      JOGADOR       |        SCORE       |   TEMPO DE JOGO    |\n");
    putStrLn("+--------------------------------------------------------------+\n");

    mostrarScore

    threadDelay 10000000
    clrScreen

selecionarOpcao:: String -> IO ()
selecionarOpcao "1" = do print("Iniciar o Jogo")
selecionarOpcao "2" = do ranking
selecionarOpcao "3" = do print("Créditos")
selecionarOpcao "0" = do print("Ranking")


menu :: IO()
menu = do
    putStrLn "|-----------------------------------------------------------------------------|" 
    putStrLn "|                                 Menu                                        |" 
    putStrLn "|                           [1] Iniciar Jogo                                  |" 
    putStrLn "|                           [2] Ranking                                       |" 
    putStrLn "|                           [3] Créditos                                      |" 
    putStrLn "|                           [0] Sair do Jogo                                  |" 
    putStrLn "|-----------------------------------------------------------------------------|"

    opcao <- getLine
    selecionarOpcao opcao

 

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
    menu