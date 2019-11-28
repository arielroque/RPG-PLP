:- module(fases,[fase1/1,fase2/2,fase3/3]).
:- use_module(constantes)
:- use_module(leitorArquivos).
:- use_module(quiz).
:- use_module(util).


fase1(Jogador,RJogador):-
    path(fase11,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear,
    path(fase12,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear,
    %batalha(Jogador,goblin,RR),
    path(fase13,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(Opc),
    fase1Esc(RR,Opc,RJogador),
    path(fase14,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear.


fase1Escolha(Jogador,Opc,RJogador):-
    Opc =:= 2,
    path(fase131,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    %batalha(Jogador,goblinForte,RJogador),
    clear.
fase1Escolha(Jogador,Opc,RJogador):-
    path(fase132,R),
    ler_arquivo(R,Const),
    show_contents(Conts),
    get_single_char(_),
    clear.
    

fase2(Jogador,RJogador):-
    path(fase21,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear,
    %batalha(Jogador,lobo,RR),
    path(fase22,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(Opc),
    fase2Esc(RR,Opc,RJogador),
    path(fase23,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear.


fase2Escolha(Jogador,Opc,RJogador):-
    Opc =:= 1,
    path(fase221,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    %batalha(Jogador,loboForte,RJogador),
    clear.
fase2Escolha(Jogador,Opc,RJogador):-
    path(fase222,R),
    ler_arquivo(R,Const),
    show_contents(Conts),
    get_single_char(_),
    clear.

fase3(Jogador,RJogador):-
    path(fase31,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear,
    %batalha(Jogador,orc,RR),
    path(fase32,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear,
    %batalha(RR,orcForte,RJogador),
    path(fase33,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear,
    %batalha(RR,cavaleiroNegro,RJogador),
    path(fase34,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    get_single_char(_),
    clear.
    %finalizaJogo

