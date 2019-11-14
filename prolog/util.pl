:- use_module(library(csv)).
:- initialization(main).

ler_ranking(Listas):-
  	csv_read_file("./ranking.csv", Colunas, []),
 	 colunas_para_listas(Colunas, Listas).   

inserirPontuacao(X,Y):-
    findall(row(A,B), (member(A, X), member(B, Y)), Rows),
    csv_write_file('./ranking.csv',[row(X,Y)]).

pontuacao([]):- write(""). 
pontuacao([U,P|_]):- write(U),write(" - "),writeln(P).

mostrar_ranking([]):- write("").
mostrar_ranking([X|T]):-
       pontuacao(X),
       mostrar_ranking(T).

colunas_para_listas(Colunas, Listas):- 
     maplist(coluna_para_lista, Colunas, Listas).

coluna_para_lista(Coluna, Lista):-
 	 Coluna =.. [row|Lista].

pushFront(Item, List, [Item|List]).
           

main:-
    ler_ranking(Listas),
    mostrar_ranking(Listas).


