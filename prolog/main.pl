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


titulo:-
    writeln("██████╗ ██╗     ██████╗      █████╗ ██████╗ ██╗   ██╗███████╗███╗   ██╗████████╗"),
    writeln("██╔══██╗██║     ██╔══██╗    ██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║╚══██╔══╝"),
    writeln("██████╔╝██║     ██████╔╝    ███████║██║  ██║██║   ██║█████╗  ██╔██╗ ██║   ██║   "),
    writeln("██╔═══╝ ██║     ██╔═══╝     ██╔══██║██║  ██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║   ██║   "),
    writeln("██║     ███████╗██║         ██║  ██║██████╔╝ ╚████╔╝ ███████╗██║ ╚████║   ██║   "),
    writeln("╚═╝     ╚══════╝╚═╝         ╚═╝  ╚═╝╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═══╝   ╚═╝   "),
    writeln("                                                                                ").





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


creditos:-
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
      F =:= 11 -> fase1Aux;
      F =:= 111 -> partida;
      F =:= 2 -> fase2Aux;
      F =:= 22 -> partida;
      F =:= 3 -> fase33;
      F =:= 33 -> fase333;
      F =:= 333 -> mensagem_vencedor,menu
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
    (U =< 0 -> sleep(2),clear,perdeu,menu;
     R =< 0 -> clear, proximaFase;
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
    %setando_as_variaveis_globais
    b_setval(hp, 100),
    b_setval(dano, 90),
    b_setval(defesa, 12),

    ler_arquivo("historia/Introducao.txt",A),
    show_contents(A),
    read(_),
    nl,
  
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

%DEFINIÇÃO_DAS_FASES


fase1:-
    b_setval(fase, 11),
    ler_arquivo("historia/Fase_1_1.txt",A),
    show_contents(A),
    read(_),
    clear,
    ler_arquivo("historia/Fase_1_2.txt",B),
    show_contents(B),
    clear,
    fase1Action.

fase1Aux:-
    sleep(2),
    clear,
    ler_arquivo("historia/Fase_1_3.txt",C),
    show_contents(C),
    read(Opc),
    fase1Escolha(Opc),
    
    ler_arquivo("historia/Fase_1_4.txt",D),
    show_contents(D),
    read(_),
    clear.


fase1Escolha(Opc):-

    Opc =:= 2,
    ler_arquivo("historia/Fase_1_3_2.txt",W),
    show_contents(W),
    b_setval(fase, 111),
    sleep(2),
    clear,
    fase1Action.

fase1Escolha(Opc):-
    Opc =:= 1,
    ler_arquivo("historia/Fase_1_3_1.txt",C),
    show_contents(C),
    sleep(2),
    clear,
    partida.
    

fase2:-
    b_setval(fase, 2),
    ler_arquivo("historia/Fase_2_1.txt",A),
    show_contents(A),
    read(_),
    lobo,
    sleep(1),
    clear,
    fase2Action.
    
fase2Aux:-
    clear,    
    ler_arquivo("historia/Fase_2_2.txt",B),
    show_contents(B),    
    read(Opc),
    fase2Escolha(Opc).



fase2Escolha(Opc):-
    Opc =:= 1,
    b_setval(fase, 22),
    ler_arquivo("historia/Fase_2_2_1.txt",A),
    show_contents(A),
    clear,
    fase2Action,
    clear.

fase2Escolha(Opc):-
    ler_arquivo("historia/Fase_2_2_2.txt",M),
    show_contents(M),
    clear,
    partida.

fase3:-
    b_setval(fase, 3),
    ler_arquivo("historia/Fase_3_1.txt",Z),
    show_contents(Z),
    read(_),
    clear,
    fase3Action.

fase33:-
     b_setval(fase, 33),
    ler_arquivo("historia/Fase_3_2.txt",Q),
    show_contents(Q),
    read(_),
    clear,
    fase3Action.
fase333:-
    chefe,
    sleep(2),
    b_setval(fase, 333),
    ler_arquivo("historia/Fase_3_3.txt",O),
    show_contents(O),
    read(_),
    clear,
    fase3Action,
    ler_arquivo("historia/Fase_3_4.txt",P),
    show_contents(P).


fase1Action:-
     b_setval(monstroHP, 120),
     b_setval(monstroDano, 40),
     b_setval(monstroDefesa, 12),
     quiz1(X),
     batalha(X).

fase2Action:-
     b_setval(monstroHP, 140),
     b_setval(monstroDano, 50),
     b_setval(monstroDefesa, 22),
     b_setval(hp, 120),
     quiz2(X),
     batalha(X).

fase3Action:-
     b_setval(monstroHP, 160),
     b_setval(monstroDano, 60),
     b_setval(monstroDefesa, 32),
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
        show_contents(X),
        read(_), clear, ler_arquivo("historia/Descansar.txt", Y),
        show_contents(Y), b_setval(hp, 100),read(_),clear, partida;

    Aux =:= 2 -> clear, partida).

ranking:-
    loading,
    sleep(1),
    write("Ranking").




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



perdeu :-
    mensagem_derrota,
    sleep(4),
    clear,
    menu.


%ROLAR_DADOS

main:-
    titulo,
    sleep(2),
    clear,
    menu.


