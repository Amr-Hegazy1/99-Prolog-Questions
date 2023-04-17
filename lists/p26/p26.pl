combination(N,L,LC) :- 
    combination(N,L,LC,N).


combination(_,L,[X],1) :-

    member(X,L).



combination(N,[H|T],[H|LT],C) :-

    C > 1,
    C1 is C - 1,
    combination(N,T,LT,C1).

combination(N,[_|T],LC,C) :-

    C > 1,
    
    combination(N,T,LC,C).

count(N,K,X) :-
    numlist(1,X,LX),
    setof(L,combination(K,LX,L),Z),
    length(Z,N).




