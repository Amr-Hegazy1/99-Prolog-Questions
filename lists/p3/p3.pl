element_at(H,[H|_],1).

element_at(X,[_|T],N):-
    N>1,
    N1 is N-1,
    element_at(X,T,N1).