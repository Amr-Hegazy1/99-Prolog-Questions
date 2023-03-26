
encode(L,X) :-
    
    pack(L,E),
    encode_helper(E,X,[]).

encode_helper([],X,X).

encode_helper([H|T],X,Acc) :- 

    length(H,N),
    N > 1,
    H = [H1|_],
    append(Acc,[[N,H1]],Acc1),
    encode_helper(T,X,Acc1).

encode_helper([H|T],X,Acc) :- 

    length(H,N),
    N = 0,
    encode_helper(T,X,Acc).



encode_helper([H|T],X,Acc) :- 

    length(H,N),
    N = 1,
    H = [H1|_],
    append(Acc,[H1],Acc1),
    encode_helper(T,X,Acc1).


% get sol from p9

pack([],[]).
pack([X|Xs],[Z|Zs]) :- transfer(X,Xs,Ys,Z), pack(Ys,Zs).



transfer(X,[],[],[X]).
transfer(X,[Y|Ys],[Y|Ys],[X]) :- X \= Y.
transfer(X,[X|Xs],Ys,[X|Zs]) :- transfer(X,Xs,Ys,Zs).