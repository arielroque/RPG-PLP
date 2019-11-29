:- initialization(main).
:- use_module(leitorArquivos).
:- use_module(quiz).
:- use_module(fases).



mensagem_taverna:-
    writeln("                               (   )"                 )
    ,writeln("                          (    )"                    )
    ,writeln("                           (    )"                   )
    ,writeln("                          (    )"                    )
    ,writeln("                            )  )"                    )
    ,writeln("                           (  (                  /\\"      )
    ,writeln("                            (_)                 /  \\  /\\")
    ,writeln("                    ________[_]_______      /\\/    \\/  \\")
    ,writeln("         /\\      /\        ______   \\    /  /\\/\\  /\\/\\")
    ,writeln("        /  \\    //\\      \\   /\\   \\  /\\/\\/   \\/    \\")
    ,writeln("  /\\  //\\/\\  //__\\      \\__/ \\   \\/")
    ,writeln(" / \\ /\\/   \\//____\\      \\ |[]|    \\")
    ,writeln("/\\/\\/\\/    /_______\\       \\|__|    \\")
    ,writeln("/    \\      /XXXXXXXXX\\                 \\")
    ,writeln("       \\   /_I_II  I__I_\\________________\\")
    ,writeln("               I_I|  I__I_____[]_|_[]_____I")
    ,writeln("               I_II  I__I_____[]_|_[]_____I")
    ,writeln("               I II__I  I     XXXXXXX     I")
    ,writeln("            ~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~").

mensagem_derrota:-
    writeln(" ▄████  ▄▄▄       ███▄ ▄███▓▓█████     ▒█████   ██▒   █▓▓█████  ██▀███")
    ,sleep(0.05),
    writeln(" ██▒ ▀█▒▒████▄    ▓██▒▀█▀ ██▒▓█   ▀    ▒██▒  ██▒▓██░   █▒▓█   ▀ ▓██ ▒ ██▒")
    ,sleep(0.05),
    writeln("▒██░▄▄▄░▒██  ▀█▄  ▓██    ▓██░▒███      ▒██░  ██▒ ▓██  █▒░▒███   ▓██ ░▄█ ▒")
    ,sleep(0.05),
    writeln("░▓█  ██▓░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄    ▒██   ██░  ▒██ █░░▒▓█  ▄ ▒██▀▀█▄")
    ,sleep(0.05),
    writeln("░▒▓███▀▒ ▓█   ▓██▒▒██▒   ░██▒░▒████▒   ░ ████▓▒░   ▒▀█░  ░▒████▒░██▓ ▒██▒")
    ,sleep(0.05),
    writeln(" ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░   ░ ▒░▒░▒░    ░ ▐░  ░░ ▒░ ░░ ▒▓ ░▒▓░")
    ,sleep(0.05),
    writeln("  ░   ░   ▒   ▒▒ ░░  ░      ░ ░ ░  ░     ░ ▒ ▒░    ░ ░░   ░ ░  ░  ░▒ ░ ▒░")
    ,sleep(0.05),
    writeln("░ ░   ░   ░   ▒   ░      ░      ░      ░ ░ ░ ▒       ░░     ░     ░░   ░ ")
    ,sleep(0.05),
    writeln("      ░       ░  ░       ░      ░  ░       ░ ░        ░     ░  ░   ░     ")
    ,sleep(0.05),
    writeln("                                                      ░                "),
    sleep(4).

mensagem_vencedor:-
     writeln("██╗   ██╗ ██████╗  ██████╗███████╗    ██╗   ██╗███████╗███╗   ██╗ ██████╗███████╗██╗   ██╗██╗██╗██╗██╗██╗██╗██╗██╗")
    ,writeln("██║   ██║██╔═══██╗██╔════╝██╔════╝    ██║   ██║██╔════╝████╗  ██║██╔════╝██╔════╝██║   ██║██║██║██║██║██║██║██║██║")
    ,writeln("██║   ██║██║   ██║██║     █████╗      ██║   ██║█████╗  ██╔██╗ ██║██║     █████╗  ██║   ██║██║██║██║██║██║██║██║██║")
    ,writeln("╚██╗ ██╔╝██║   ██║██║     ██╔══╝      ╚██╗ ██╔╝██╔══╝  ██║╚██╗██║██║     ██╔══╝  ██║   ██║╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝")
    ,writeln(" ╚████╔╝ ╚██████╔╝╚██████╗███████╗     ╚████╔╝ ███████╗██║ ╚████║╚██████╗███████╗╚██████╔╝██╗██╗██╗██╗██╗██╗██╗██╗")
    ,writeln("  ╚═══╝   ╚═════╝  ╚═════╝╚══════╝      ╚═══╝  ╚══════╝╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚═════╝ ╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝")
    ,writeln(""),
    sleep(4).


loading:-
          writeln("#       #######    #    ######  ### #     #  #####")
         ,writeln("#       #     #   # #   #     #  #  ##    # #     #")
         ,writeln("#       #     #  #   #  #     #  #  # #   # #       ")
         ,writeln("#       #     # #     # #     #  #  #  #  # #  #### ")
         ,writeln("#       #     # ####### #     #  #  #   # # #     # ")
         ,writeln("#       #     # #     # #     #  #  #    ## #     # ")
         ,writeln("####### ####### #     # ######  ### #     #  #####  ").


lobo:-
     writeln("#############################################################")
    ,writeln("###################################################   #######")
    ,writeln("###############################################   /~|   #####")
    ,writeln("############################################   _- `~~~', ####")
    ,writeln("##########################################  _-        )  ####")
    ,writeln("#######################################  _-           |  ####")
    ,writeln("####################################  _-             ;  #####")
    ,writeln("##########################  __---___-               |   #####")
    ,writeln("#######################   _~   ,,                  ;  `,,  ##")
    ,writeln("#####################  _-     ;'                  |  ,'  ; ##")
    ,writeln("###################  _~      '                    `~'   ; ###")
    ,writeln("############   __---;                                 ,' ####")
    ,writeln("########   __~~  ___                                ,' ######")
    ,writeln("#####  _-~~   -~~ _                               ,' ########")
    ,writeln("##### `-_         _                              ; ##########")
    ,writeln("#######  ~~----~~~   ;                          ; ###########")
    ,writeln("#########  /          ;                        ; ############")
    ,writeln("#######  /             ;                      ; #############")
    ,writeln("#####  /                `                    ; ##############")
    ,writeln("###  /                                      ; ###############")
    ,writeln("#                                            ################").


chefe:-
    writeln("")
    ,writeln("                        ==(W{==========-      /===-")
    ,writeln("                          ||  (.--.)         /===-_---~~~~~~~~~------____")
    ,writeln("                          |\\_,|**|,__       |===-~___                _,-' `")
    ,writeln("             -==\\        `\\ ' `--'   ),    `//~\\   ~~~~`---.___.-~~")
    ,writeln("       ______-==|        /`\\_. .__/\\ \\    | |  \\           _-~`")
    ,writeln("   __--~~~  ,-/-==\\      (   | .  |~~~~|   | |  ` \\        ,'")
    ,writeln("_-~       /'    |  \\     )__/==0==\\<>/   / /      \\      /")
    ,writeln("  .'        /       |   \\      /~\\__/~~\\/  /' /       \\   /'")
    ,writeln(" /  ____  /         |    \\`\\.__/-~~   \\  |_/'  /       \\/'")
    ,writeln("/-'~    ~~~~~---__  |     ~-/~         ( )   /'        _--~`")
    ,writeln("             \\_|      /        _) | ;  ),   __--~~")
    ,writeln("                '~~--_/      _-~/- |/ \\   '-~ ")
    ,writeln("               {\\_--/}    /  \\_>-|)<__\\      ")
    ,writeln("               /'   (_/  _-~  | |__>--<__|      |")
    ,writeln("              |   _/) )-~     | |__>--<__|      |")
    ,writeln("              / /~ ,_/       / /__>---<__/      |")
    ,writeln("             o-o _//        /-~_>---<__-~      /")
    ,writeln("             (^(~          /~_>---<__-      _-~")
    ,writeln("            ,/|           /__>--<__/     _-~")
    ,writeln("         ,//('(          |__>--<__|     /                  .----_")
    ,writeln("        ( ( '))          |__>--<__|    |                 /' _---_~")
    ,writeln("     `-)) )) (           |__>--<__|    | -ME DÁ 10     /'  /     ~\\`")
    ,writeln("    ,/,'//( (            \\__>--< \\   \\            /'  //        ||")
    ,writeln("  ,( ( ((, ))              ~-__>--<_~-_  ~--____---~' _/'/        /'")
    ,writeln("`~/  )` ) ,/|                 ~-_~>--<_/-__       __-~ _/")
    ,writeln("._-~//( )/ )) `                    ~~-'_/_/ /~~~~~~~__--~")
    ,writeln(";'( ')/ ,)(                              ~~~~~~~~~~")
    ,writeln("' ) ( (/)\n")
    ,writeln("'   '  `\n").


%ListaDePerguntas__________________________________________________________________________________________________ListaDePerguntas

quiz1(["perguntas/fase1-1.txt","perguntas/fase1-2.txt","perguntas/fase1-3.txt", "perguntas/fase1-4.txt", "perguntas/fase1-5.txt"]).
quiz2(["perguntas/fase2-1.txt","perguntas/fase2-2.txt","perguntas/fase2-3.txt", "perguntas/fase2-4.txt", "perguntas/fase2-5.txt"]).
quiz3(["perguntas/fase3-1.txt","perguntas/fase3-2.txt","perguntas/fase3-3.txt", "perguntas/fase3-4.txt", "perguntas/fase3-5.txt"]).
%FIM_DA_DECLARACAO

%BATALHA

%Caso_ninguem_morra_chama_mais_perguntas
batalha([]):-
     b_getval(fase, F),
     (F =:= 1 -> quiz1(X),batalha(X);
      F =:= 2 -> quiz2(X),batalha(X);
      F =:= 3 -> quiz3(X),batalha(X)
     ).


proximaFase:-
    b_getval(fase, F),
     (F =:= 1 -> fase2;
      F =:= 2 -> fase3;
      F =:= 3 -> mensagem_vencedor,menu
     ).

batalha([H|T]):-
    clear,
    writeln("Um oponente se aproxima..."),
    mostrar_HP,
    ler_enunciado(H),
    read(Op),
    get_resposta(H,X),
    avaliar_corretude(Op,X,Resultado),
    (Resultado == "ERROU" -> danoJogador;
     danoMonstro),
    b_getval(hp, U),
    b_getval(monstroHP, R),
    (U =< 0 -> sleep(2),clear,mensagem_derrota,menu;
     R =< 0 -> proximaFase;
     batalha(T)
    ).

danoJogador:-
    b_getval(monstroDano, D),
    b_getval(hp, U), 
    K is U - D,
    b_setval(hp, K).

danoMonstro:-
   b_getval(dano, D),
   b_getval(monstroHP, U),
   V is U - D, 
   b_setval(monstroHP, V). 

mostrar_HP:-
    writeln(""),
    write("HP:"),
    b_getval(hp, U),
    write(U),
    write("      "),
    write("Monstro HP:"),
    b_getval(monstroHP, R),
    writeln(R),
    writeln("").


iniciar_jogo:-
    %setando as variaveis globais
    b_setval(hp, 100),
    b_setval(dano, 15),
    b_setval(defesa, 12),

    ler_arquivo("historia/Introducao.txt",A),
    show_contents(A),
    sleep(10),
    partida.
    
partida:-
    ler_arquivo("historia/Partida.txt", B),
    show_contents(B),
    read(Op),
    (Op =:= 0 -> taverna;
     Op =:= 1 -> fase1;
     Op =:= 2 -> fase2;
     Op =:= 3 -> fase3;
     Op =:= 4 -> fase4;
     Op =:= 5 -> halt). 

fase1:-
     b_setval(monstroHP, 120),
     b_setval(monstroDano, 40),
     b_setval(monstroDefesa, 12),
     b_setval(fase, 1),
     quiz1(X),
     batalha(X).

fase2:-
     b_setval(monstroHP, 140),
     b_setval(monstroDano, 50),
     b_setval(monstroDefesa, 22),
     b_setval(fase, 2),
     b_setval(hp, 120),
     quiz2(X),
     batalha(X).

fase3:-
     b_setval(monstroHP, 160),
     b_setval(monstroDano, 60),
     b_setval(monstroDefesa, 32),
     b_setval(fase, 3),
     b_setval(hp, 140),
     quiz3(X),
     batalha(X).

fase4:-
    ler_arquivo("historia/Andar sem rumo.txt", A),
    show_contents(A),
    sleep(4),
    write("digite enter"),
    partida,
    clear.
    
taverna:- 
    %mensagem_taverna,
    clear,
    ler_arquivo("historia/Taverna_cheia.txt", C),
    show_contents(C),
    read(Aux),
    (Aux =:= 1 -> nl, ler_arquivo("historia/Aproveitar_noite.txt", X), 
        clear,
        show_contents(X), sleep(4),
        clear, ler_arquivo("historia/Descansar.txt", Y),
        show_contents(Y), sleep(4), b_setval(hp, 100),clear, partida;

    Aux =:= 2 -> clear, partida).

ranking:-
    loading,
    sleep(1),
    write("Ranking").

creditos:-
    loading,
    sleep(2),
    clear,
    writeln("|-----------------------------------------------------------------------------|"),
	writeln("|                                 PLP 2019.2                                  |"),
	writeln("|                            Everton L. G. Alves                              |"),
	writeln("|                                                                             |"),
	writeln("|                                  Grupo:                                     |"),
	writeln("|                               Ariel Roque                                   |"),
	writeln("|                           Brener Nosse Quevedo                              |"),
	writeln("|                          Matheus Henrique Justino                           |"),
	writeln("|                                Igor Lima                                    |"),
	writeln("|-----------------------------------------------------------------------------|"),
    sleep(4),
    clear,
    menu.



selecionar_opcao(1):-
       iniciar_jogo.

selecionar_opcao(2):-
       ranking.

selecionar_opcao(3):-
       creditos.

selecionar_opcao(0):-
       halt.

selecionar_opcao(_):-
       writeln("Opção Inválida"),
       menu.

menu:-
    writeln("|-----------------------------------------------------------------------------|")
   ,writeln("|                                 Menu                                        |")
   ,writeln("|                           [1] Iniciar Jogo                                  |")
   ,writeln("|                           [2] Ranking                                       |")
   ,writeln("|                           [3] Créditos                                      |")
   ,writeln("|                           [0] Sair do Jogo                                  |")
   ,writeln("|-----------------------------------------------------------------------------|"),
   writeln("Opcao:"),
   read(Opcao),
   selecionar_opcao(Opcao).


clear:- write('\33\[2J').


getYesNo(Choice) :-
    writeln("1) Sim"),
    writeln("2) Nao"),
    readInt(Z),
    ((Z =:= 1; Z =:= 2) -> (Choice = Z); (Choice  = 2)).

confirm:-
    writeln(""),
    writeln("Pressione ENTER para continuar"),
    read(_),
    clear.

%JOGADOR_________________________________________________________JOGADOR____________________________________________________________JOGADOR

%lembrando que defesa tbm pode ser considerado iniciativa
hp(X).
dano(Y).
defesa(Z).

%MONSTRO

monstroHP(A).
monstroDano(B).
monstroDefesa(C).

fillHP() :-
    atributos(_, DANO, DEFESA),
    HP = 100,
    retract(atributos(_, _,_)),
    asserta(atributos(HP, DANO, DEFESA)).

perdeu :-
    writeln("Não foi dessa vez, você perdeu!"),
    mensagem_derrota,
    sleep(4),
    clear,
    menu.


%ROLAR_DADOS

main:-
    loading,
    sleep(2),
    %batalha(quiz1),
    sleep(5),
    %mensagem_taverna,
    clear,
    menu.


