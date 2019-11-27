:- use_module(leitorArquivos).
:- use_module(quiz).
:- initialization(main).


mensagem_derrota:- 
    writeln(" ▄████  ▄▄▄       ███▄ ▄███▓▓█████     ▒█████   ██▒   █▓▓█████  ██▀███")
   
    ,writeln(" ██▒ ▀█▒▒████▄    ▓██▒▀█▀ ██▒▓█   ▀    ▒██▒  ██▒▓██░   █▒▓█   ▀ ▓██ ▒ ██▒")
    
    ,writeln("▒██░▄▄▄░▒██  ▀█▄  ▓██    ▓██░▒███      ▒██░  ██▒ ▓██  █▒░▒███   ▓██ ░▄█ ▒")
    
    ,writeln("░▓█  ██▓░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄    ▒██   ██░  ▒██ █░░▒▓█  ▄ ▒██▀▀█▄")
    
    ,writeln("░▒▓███▀▒ ▓█   ▓██▒▒██▒   ░██▒░▒████▒   ░ ████▓▒░   ▒▀█░  ░▒████▒░██▓ ▒██▒")
   
    ,writeln(" ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░   ░ ▒░▒░▒░    ░ ▐░  ░░ ▒░ ░░ ▒▓ ░▒▓░")
   
    ,writeln("  ░   ░   ▒   ▒▒ ░░  ░      ░ ░ ░  ░     ░ ▒ ▒░    ░ ░░   ░ ░  ░  ░▒ ░ ▒░")
    
    ,writeln("░ ░   ░   ░   ▒   ░      ░      ░      ░ ░ ░ ▒       ░░     ░     ░░   ░ ")
    
    ,writeln("      ░       ░  ░       ░      ░  ░       ░ ░        ░     ░  ░   ░     ")
    
    ,writeln("                                                      ░                ").

mensagem_vencedor:- 
     writeln("██╗   ██╗ ██████╗  ██████╗███████╗    ██╗   ██╗███████╗███╗   ██╗ ██████╗███████╗██╗   ██╗██╗██╗██╗██╗██╗██╗██╗██╗")
    ,writeln("██║   ██║██╔═══██╗██╔════╝██╔════╝    ██║   ██║██╔════╝████╗  ██║██╔════╝██╔════╝██║   ██║██║██║██║██║██║██║██║██║")
    ,writeln("██║   ██║██║   ██║██║     █████╗      ██║   ██║█████╗  ██╔██╗ ██║██║     █████╗  ██║   ██║██║██║██║██║██║██║██║██║")
    ,writeln("╚██╗ ██╔╝██║   ██║██║     ██╔══╝      ╚██╗ ██╔╝██╔══╝  ██║╚██╗██║██║     ██╔══╝  ██║   ██║╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝")
    ,writeln(" ╚████╔╝ ╚██████╔╝╚██████╗███████╗     ╚████╔╝ ███████╗██║ ╚████║╚██████╗███████╗╚██████╔╝██╗██╗██╗██╗██╗██╗██╗██╗")
    ,writeln("  ╚═══╝   ╚═════╝  ╚═════╝╚══════╝      ╚═══╝  ╚══════╝╚═╝  ╚═══╝ ╚═════╝╚══════╝ ╚═════╝ ╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝╚═╝")
    ,writeln("").


loading:-    
          writeln("#       #######    #    ######  ### #     #  #####")
         ,writeln("#       #     #   # #   #     #  #  ##    # #     #")
         ,writeln("#       #     #  #   #  #     #  #  # #   # #       ")
         ,writeln("#       #     # #     # #     #  #  #  #  # #  #### ")
         ,writeln("#       #     # ####### #     #  #  #   # # #     # ")
         ,writeln("#       #     # #     # #     #  #  #    ## #     # ")
         ,writeln("####### ####### #     # ######  ### #     #  #####  ").

historia(["historia/Fase_1_1.txt", "historia/Fase_1_2.txt","historia/Fase_1_3.txt","historia/Fase_1_3_1.txt","historia/Fase_1_3_2.txt","historia/Fase_1_4.txt"]).
quiz(["perguntas/fase1-1.txt","perguntas/fase1-2.txt","perguntas/fase1-3.txt", "perguntas/fase1-4.txt", "perguntas/fase1-5.txt"]).


fase1([H|T],[X|L]):-
    clear,
    ler_arquivo(H,A),
    show_contents(A),
    %sleep(6),
    %loading,
    %sleep(2),
    %clear,
    %ler_enunciado(X),    
    %get_resposta(X,R),
    %write("Resposta:"),
    %read(Resposta),
    %avaliar_corretude(Resposta,R,Resultado),
    fase1(T, L).



iniciar_jogo:-
    clear,
    ler_arquivo("historia/Introducao.txt",A),
    show_contents(A),
    sleep(2),
    clear,
    ler_arquivo("historia/Partida.txt", B),
    show_contents(B),
    read(Opcao),
    (Opcao == 0 -> ler_arquivo("historia/Taverna_cheia.txt", C), show_contents(C);
    Opcao == 1 ->  ler_arquivo("historia/Fase_1_1.txt",T), show_contents(T), fase1());
    Opcao == 3 -> ler_arquivo("historia/Fase_2_1.txt", U), show_contents(U);
    Opcao == 4 -> ler_arquivo("historia/Fase_3_1.txt", V), show_contents(V);
    Opcao == 5 -> halt).
   


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
   write("Opcao:"),
   read(Opcao),
   selecionar_opcao(Opcao).          


clear:- write('\33\[2J').

readInt(Number) :-
    (read_line_to_codes(user_input, Codes),
    string_to_atom(Codes, Atom),
    atom_number(Atom, Number));
    Number is -1.

getYesNo(Choice) :-
    writeln("1) Sim"),
    writeln("2) Nao"),
    readInt(Z),
    ((Z =:= 1; Z =:= 2) -> (Choice = Z); (Choice  = 2)).

confirm:-
    writeln(""),
    writeln("Pressione ENTER para continuar"),
    get_single_char(_),
    clear.   

%JOGADOR_________________________________________________________JOGADOR____________________________________________________________JOGADOR


:- dynamic(atributos/4).
% atributos(hp, dano, defesa)
atributos(100, 15, 12, 30).

%GETS_JOGADOR

getHP(HP) :- atributos(HP, _, _).
getHP(DANO) :- atributos(_, DANO, _).
getHP(DEFESA) :- atributos(_, _, DEFESA).

setHP(HP) :-
    atributos(_, DANO, DEF),
    retract(atributos(_, _, _)),
    asserta(atributos(HP, DANO, DEF)).

takeDamage(DANO) :-
    getHP(HP),
    NewHP is HP - dano,
    (NewHP > 0) -> (setHP(NewHP));
    setHP(0).

setDANO(DANO) :-
    atributos(HP, _, DEF),
    retract(atributos(_, _, _)),
    asserta(atributos(HP, DANO, DEF)).

recoverHP(QtdVida) :-
    getHP(HP),
    K is QtdVida + HP,
    setHP(K).

perdeu :-
    writeln("Não foi dessa vez, você perdeu!"),
    mensagem_derrota,
    sleep(3),
    clear,
    menu.





main:-
    loading,
    sleep(2),
    clear,
    menu.


