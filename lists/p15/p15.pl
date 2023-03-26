dupli([],_,[]).

dupli([H|T],N,X) :- 
    dupli(H,N,X1,[]),
    dupli(T,N,X2),
    append(X1,X2,X).


dupli(_,0,X,X).

dupli(K,N,X,Acc) :-

    \+ is_list(K),
    N > 0,
    append(Acc,[K],Acc1),
    N1 is N-1,
    dupli(K,N1,X,Acc1).
