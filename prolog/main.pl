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


fase1(Historia,Quiz):-
    write('\33\[2J'),
    ler_arquivo(Historia,A),
    show_contents(A),
    sleep(6),
    loading,
    sleep(2),
    
    write('\33\[2J'),
    ler_enunciado(Quiz),    
    get_resposta(Quiz,R),
    write("Resposta:"),
    read(Resposta),
    avaliar_corretude(Resposta,R,Resultado).

iniciar_jogo:-
    write('\33\[2J'),
    ler_arquivo("historia/Introducao.txt",A),
    show_contents(A),
    sleep(6),
    loading,
    sleep(2),
    fase1("historia/Fase_1_1.txt","perguntas/fase1-1.txt").

ranking:-
    loading,
    sleep(2),
    write("Ranking").

creditos:-
    loading,
    sleep(2),
    write("Creditos").


selecionar_opcao(1):-
       iniciar_jogo.

selecionar_opcao(2):-
       ranking.

selecionar_opcao(3):-
       creditos.

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

main:-
    loading,
    sleep(2),
    write('\33\[2J'),
    menu.


