:- module(fases,[fase1/1,fase2/2,fase3/3]).
:- use_module(constantes)
:- use_module(leitorArquivos).
:- use_module(quiz).
:- use_module(util).


fase1(Jogador,RJogador):-
    path(fase11,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(_),
    cls,
    path(fase12,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(_),
    %batalha(Jogador,Goblin),
    path(fase13,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(Opc),
    Opc =:= 1,
    path(fase141,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(_),
    %call menu

fase1(Jogador,RJogador):-
    path(fase142,R),
    ler_arquivo()