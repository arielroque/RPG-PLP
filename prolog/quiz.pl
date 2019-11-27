:- module(quiz,[ler_enunciado/1,get_resposta/2,avaliar_corretude/2]).
:- use_module(leitorArquivos).
%:- initialization(main).

remove_last([_|[]],_).

remove_last([H|T],[RH|RT]):-
    remove_last(T,RT),
    RH = H.

get_last([H|[]], R):-
    R = H.

get_last([_|T],R):-
    get_last(T,R).

ler_enunciado(Path):-
    ler_arquivo(Path,R),
    remove_last(R,QUESTION),
    show_contents(QUESTION),nl.

get_resposta(Path,R):-
    ler_arquivo(Path,RK),
    get_last(RK,R).

avaliar_corretude(Tentativa,Reposta):-
    atom_number(Reposta,K),
    Tentativa =:= K,
    write("ACERTOU!!").

avaliar_corretude(_,_):-
    write("ERROU.").

%main:-
%    ler_enunciado("perguntas/fase1-1.txt"),    
%    get_resposta("perguntas/fase1-1.txt",R),
%    avaliar_corretude(1,R).
