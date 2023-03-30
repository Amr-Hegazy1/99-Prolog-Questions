slice(L,I,K,X) :- slice(L,I,K,1,X).

slice([],_,_,_,[]).

slice([H|T],I,K,C,[H|T2]) :-
    
    C >= I,
    C =< K,
    C1 is C+1,
    slice(T,I,K,C1,T2).

slice([_|T],I,K,C,X) :-
    
    C < I,
    
    C1 is C+1,
    slice(T,I,K,C1,X).

slice([_|T],I,K,C,X) :-
    
    C > K,
    
    C1 is C+1,
    slice(T,I,K,C1,X).

