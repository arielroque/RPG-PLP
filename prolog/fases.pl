:- module(fases,[fase1/0,fase2/0,fase3/0, fase1Escolha/1, fase2Escolha/1, fase1Escolha/1]).
:- use_module(constantes).
:- use_module(leitorArquivos).
:- use_module(quiz).
:- use_module(util).


fase1:-
    path(fase11,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear,
    path(fase12,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear,
    batalha(quiz1),
    path(fase13,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(Opc),
    fase1Esc(RR,Opc,RJogador),
    path(fase14,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(_),
    clear.


fase1Escolha(Opc):-
    Opc =:= 2,
    path(fase131,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    batalha(quiz2),
    clear.

fase1Escolha:-
    path(fase132,R),
    ler_arquivo(R,Const),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear.
    

fase2:-
    path(fase21,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(_),
    clear,
    batalha(quiz2),
    path(fase22,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    read(Opc),
    fase2Esc(RR,Opc,RJogador),
    path(fase23,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear.


fase2Escolha(Opc):-
    Opc =:= 1,
    path(fase221,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    batalha(quiz2),
    clear.
fase2Escolha(Opc):-
    path(fase222,R),
    ler_arquivo(R,Const),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear.

fase3:-
    path(fase31,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear,
    batalha(quiz3),
    path(fase32,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear,
    batalha(quiz3),
    path(fase33,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear,
    batalha(quiz3),
    path(fase34,R),
    ler_arquivo(R,Conts),
    show_contents(Conts),
    write("Aperte qualquer tecla seguida de um . para continuar"),
    read(_),
    clear.
    %finalizaJogo


