module Leitor_arquivo where
import Data.Char
import Constantes

corrigeTextoI::String->String
corrigeTextoI str
    |(isAlpha (str!!0) || isNumber (str!!0)) = str
    |otherwise = corrigeTextoI (drop 1 str)

corrigeTextoF::String->String
corrigeTextoF str
    |(isAlpha (str!!((length str)-1))) || (isNumber (str!!((length str)-1))) = str
    |otherwise = corrigeTextoF (init str)

percorrerArquivo::String->String->Int->String
percorrerArquivo "" res step = (reverse res)
percorrerArquivo (x:xs) res step
    |x /= '#' = percorrerArquivo xs (x:res) step
    |step == 1 = reverse res
    |otherwise = percorrerArquivo xs "" (step-1)
    {-|(isAlpha x || isNumber x || x == ' ') && x /= '#' = percorrerArquivo xs (x:res) step
      |x /= '#' = percorrerArquivo xs (res) step-}


lerArquivo::String->Int->IO String
lerArquivo path step = do

	contents<-readFile path

	--Imprimindo direto da funcao
	--if(s == 1) then putStrLn (removePontas (percorrerArquivo c [] s) 2 0)
	--else putStrLn (removePontas (percorrerArquivo c [] s) 0 0)

	--Retorna IO String
	--Eh necessario usar cons<-lerArquivo path step
	if(step == 1) then return (corrigeTextoF (corrigeTextoI (percorrerArquivo contents [] step)))
	else return (corrigeTextoF (corrigeTextoI (percorrerArquivo contents [] step)))

escreverTexto::String->String->Integer->IO()
escreverTexto path content 1 = writeFile path (content++"\n#\n")
escreverTexto path content 2 = appendFile path (content++"\n#\n")