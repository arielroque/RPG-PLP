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

quiz1(["perguntas/fase1-1.txt","perguntas/fase1-2.txt","perguntas/fase1-3.txt", "perguntas/fase1-4.txt", "perguntas/fase1-5.txt"]).



iniciar_jogo:-
    clear,
    b_setval(hp, 100),
    ler_arquivo("historia/Introducao.txt",A),
    show_contents(A),
    sleep(2),
    b_getval(hp, X),
    writeln(X),
    b_setval(hp, 90),
    fase1.
    
fase1:-
    b_getval(hp, X),
    (X > 80 -> writeln("deu certo")),
    writeln(X).

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
    read(_),
    clear.

%JOGADOR_________________________________________________________JOGADOR____________________________________________________________JOGADOR


hp(X).
dano(Y).
defesa(Z).






fillHP() :-
    atributos(_, DANO, DEFESA),
    HP = 100,
    retract(atributos(_, _,_)),
    asserta(atributos(HP, DANO, DEFESA)).



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


