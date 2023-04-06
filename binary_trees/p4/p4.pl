construct([],nil).
construct([H|Tail],T) :- construct([H|Tail],nil,T).


construct([],T,T).
construct([H|Tail],Acc,T) :-

    add(H,Acc,Acc1),
    construct(Tail,Acc1,T).





add(N,nil,t(N,nil,nil)).

add(N,t(X,Right,Left),R) :-

    N > X,
    add(N,Right,R1),
    R = t(X,R1,Left).

add(N,t(X,Right,Left),R) :-

    N < X,
    add(N,Left,R1),
    R = t(X,Right,R1).

