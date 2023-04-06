goldbach_list(X,X).

goldbach_list(Start,End) :- 
    Start =< End,
    (Start mod 2) =:= 0,
    goldbach(Start,[P1,P2]) , 
    write(Start = P1 + P2 ),
    nl,
    Start1 is Start + 1,
    goldbach_list(Start1,End).

goldbach_list(Start,End) :- 
    Start =< End,
    (Start mod 2) =:= 1,
    Start1 is Start + 1,
    goldbach_list(Start1,End).


goldbach_list(X,X,_). 

goldbach_list(Start,End,Limit) :-

    Start =< End,
    (Start mod 2) =:= 0,
    goldbach(Start,[P1,P2]) , 
    P1 >= Limit,
    P2 >= Limit,
    write(Start = P1 + P2 ),
    nl,
    Start1 is Start + 1,
    goldbach_list(Start1,End,Limit).

goldbach_list(Start,End,Limit) :-

    Start =< End,
    (Start mod 2) =:= 0,
    goldbach(Start,[P1,P2]) , 
    (P1 < Limit ; P2 < Limit),
    Start1 is Start + 1,
    goldbach_list(Start1,End,Limit).





goldbach_list(Start,End,Limit) :-

    Start =< End,
    (Start mod 2) =:= 1,
    Start1 is Start + 1,
    goldbach_list(Start1,End,Limit).










:- ensure_loaded('../p5/p5_sol').

% goldbach(N,L) :- L is the list of the two prime numbers that
%    sum up to the given N (which must be even).
%    (integer,integer) (+,-)

goldbach(4,[2,2]) :- !.
goldbach(N,L) :- N mod 2 =:= 0, N > 4, goldbach(N,L,3).

goldbach(N,[P,Q],P) :- Q is N - P, is_prime(Q), !.
goldbach(N,L,P) :- P < N, next_prime(P,P1), goldbach(N,L,P1).

next_prime(P,P1) :- P1 is P + 2, is_prime(P1), !.
next_prime(P,P1) :- P2 is P + 2, next_prime(P2,P1).

