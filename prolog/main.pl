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


validar_pergunta(X,X,"Resposta Correta").
validar_pergunta(_,_,"Resposta Incorreta").

mostrar_pergunta(Path):-
   open(Path,read,Arquivo),
   read_line_to_string(Arquivo,Titulo),
   read_line_to_string(Arquivo,Alternativa1),
   read_line_to_string(Arquivo,Alternativa2),
   read_line_to_string(Arquivo,Alternativa3),
   read_line_to_string(Arquivo,AlternativaCorreta),
   close(Arquivo),
   writeln(Titulo),
   writeln(Alternativa1),
   writeln(Alternativa2),
   writeln(Alternativa3),
   write("Resposta:"),
   read(AtomoResposta),
   atom_string(AtomoResposta,Resposta),
   validar_pergunta(Resposta,AlternativaCorreta,Julgamento),
   write(Julgamento).


iniciar_jogo:-
    loading,
    sleep(2),
    mostrar_pergunta("perguntas/fase1-1.txt").

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
       write("Opção Inválida"),
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
    menu.


