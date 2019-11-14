import Inimigos 
import Personagem 
import Util 

-- constantes 
zeroHP :: Int
zeroHP = 0

d20 :: Int
d20 = 20

sucessoFuga :: Int
sucessoFuga = 12

hpRestaura :: Int
hpRestaura = 30

--

-- verifica se foi possível escapar da batalha
fugiu :: Int -> Bool
fugiu resultadoFugir = (resultadoFugir >= sucessoFuga)


tentaFugir :: Personagem -> Inimigos.Monster -> IO (Personagem, Inimigos.Monster)
tentaFugir jogador monstro = do
    clrScreen
    putStrLn "Você tenta fugir e..."
    resultadoFugir <- rolaDado(d20)

    if (fugiu resultadoFugir)
        then do
        putStrLn "Escapou..."
        return (jogador, monstro)
    else do
        putStrLn "Não consegue..."
        ataqueMonstro jogador monstro


-- jogador vence, monstro morre
venceu :: Inimigos.Monster -> Bool
venceu monstro = (hpMonstro <= zeroHP) 
        where hpMonstro = eGetHp monstro

-- personagem chegou a 0HP e morreu
perdeu :: Personagem -> Bool
perdeu jogador = (hpJogador <= zeroHP)
        where hpJogador = getHP jogador

--Recupera a vida jogador caso ele escolha a opção de descansar na taverna
recuperaHP :: Personagem -> Int -> Personagem
recuperaHP jogador hpJogador = do
    let novoHP = getHP (jogador) + hpJogador
    putStrLn "VIDA RESTAURADA !" 

mensagemDeBatalha :: Inimigos.Monster -> IO()
mensagemDeBatalha monstro = do
    let nomeMonstro = eGetNome (monstro)
    putStrLn "BATALHA!"
    putStrLn ("Um "++nomeMonstro++" se aproxima!")

mostraVida :: Personagem -> Inimigos.Monster -> IO()
mostraVida jogador monstro = do
    let hpJogador = getHP (jogador)
    putStrLn ("Seu HP: "++ show hpJogador)

    let hpMonstro = eGetHp (monstro)
        monsterName = eGetNome (monstro)

    putStrLn ("HP do "++monsterName++": "++ show hpMonstro)
    putStrLn("")



-- executa um ataque do monstro
ataqueMonstro :: Personagem -> Inimigos.Monster-> IO (Personagem, Inimigos.Monster)
ataqueMonstro jogador monstro = do
    
    rolaDado <- rolaDado(d20)
    let jogadorDefesa = getDef jogador
        danoMonstro = calculaDanoMonstro monstro rolaDado
    putStrLn "O monstro irá atacar, se prepare..."
    
    if (danoMonstro >= jogadorDefesa) then do
        putStrLn ("O monstro te acerta e causa "++ show danoMonstro ++ " danos a você!")
        let novoJogador = takeDmg jogador danoMonstro
        --jogadorDerrotado novoJogador monstro
    
    else do
        putStrLn ("E falha miseravelmente...")
        --TODO


-- verifica se o monstro foi derrotado
monstroDerrotado :: Personagem -> Inimigos.Monster -> IO (Personagem, Inimigos.Monster)
monstroDerrotado jogador monstro = do
    if (venceu monstro) then do
        putStrLn "VOCÊ VENCEU!" 
    else ataqueMonstro jogador monstro

jogadorDerrotado :: Personagem -> Inimigos.Monster -> IO (Personagem, Inimigos.Monster)
jogadorDerrotado jogador monstro = do
    if (perdeu jogador) then do
        putStrLn "VOCÊ FOI DERROTADO!"
        --TODO
    else do 
        putStrLn "bla"



--Dano do monstro
calculaDanoMonstro :: Inimigos.Monster -> Int -> Int
calculaDanoMonstro monstro rolaDado = do 
    let danoMonstro = (eGetDmg monstro) + rolaDado
    return danoMonstro



showBattleMenu :: IO()
showBattleMenu = do
    putStrLn "1) Atacar"
    putStrLn "2) Lançar Magia"
    putStrLn "3) Fugir"

