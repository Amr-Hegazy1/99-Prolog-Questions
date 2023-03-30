drop([],_,[]).

drop(L,N,X) :- drop(L,N,1,X).

drop([],_,_,[]).

drop([H|T],N,C,[H|T2]) :-

    C < N,
    C1 is C+1,
    drop(T,N,C1,T2).

drop([_|T],N,C,X) :-

    C = N,
    drop(T,N,1,X).

