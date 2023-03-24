compress(L,X) :- compress(L,X,[]).

compress([],X,X).

compress([H|T],X,Acc) :-

    \+con(Acc,H),
    append(Acc,[H],Acc1),
    compress(T,X,Acc1).

compress([H|T],X,Acc) :-

    con(Acc,H),
    
    compress(T,X,Acc).

con([X],X).

con([H|T],X) :-
    H \= X,
    con(T,X).