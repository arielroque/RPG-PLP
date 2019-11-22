:- module(leitorArquivos,[ler_arquivo/2,show_contents/1]).

read_file(Stream,[]):-
    at_end_of_stream(Stream).

read_file(Stream,[H|T]):-
    \+ at_end_of_stream(Stream),
    read_line_to_codes(Stream,Codes),
    atom_chars(H,Codes),
    read_file(Stream,T),!.

show_contents([]).

show_contents([H|T]):-
    write(H),nl,
    show_contents(T).


ler_arquivo(Path,R):-
    open(Path,read,Stream),
    read_file(Stream,R),
    close(Stream).