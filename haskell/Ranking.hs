import Data.List

import Data.List.Split

import Control.Lens

comparador :: (Ord a, Ord b) => (a, b) -> (a, b) -> Ordering
comparador (a1, b1) (a2, b2)
		| b1 > b2 = GT -- greater 
		| b1 == b2 = EQ -- equal
		| otherwise = LT -- less
        
prepararArquivos:: IO ()
prepararArquivos = do
	writeFile "usuarios.txt" "FLAG"
	writeFile "pontuacoes.txt" "800000000000000"	
	putStrLn "Arquivos de persistência de ranking criados com sucesso!"

criarTupla:: [String] -> [Int] -> [(String,Int)] -> [(String,Int)]
criarTupla [] [] z = z 
criarTupla (x:xs) (y:ys) z = criarTupla xs ys z++[(x,(y::Int))]

getRanking:: [(String,Int)] -> String
getRanking (x:xs) | x == ("FLAG",800000000000000) = ""
getRanking (x:xs) | otherwise = getRanking xs ++ "\n" ++ (x ^. _1) ++ "   " ++ (show (x ^. _2))

mostrarScore:: IO ()
mostrarScore = do
	jogadoresPath <- readFile "usuarios.txt"
	pontuacoesPath <- readFile "pontuacoes.txt"
	let usuarios = splitOn "\n" jogadoresPath
	let pontos = splitOn "\n" pontuacoesPath
	let r = criarTupla (usuarios) (map read pontos :: [Int]) ([("FLAG",800000000000000)])
	putStrLn((getRanking(sortBy comparador r)))

adicionarScore::  String -> String -> IO ()
adicionarScore  jogador pontos = do
	let nome = "\n"++jogador
	let placar = "\n"++pontos
	appendFile "usuarios.txt" nome
	appendFile "pontuacoes.txt" placar
	putStrLn "Conteudo anexado com sucesso"



