split([],_,[],[]).

split([H|T],N,[H|T2],L2) :- 
    N > 1,
    N1 is N-1,
    split(T,N1,T2,L2).

split([H|T],N,[H],T) :- N = 1.
    
    



