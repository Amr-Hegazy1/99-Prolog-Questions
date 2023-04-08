nnodes(t(_,[]),1).

nnodes(t(_,[H|T]),N) :-

    nnodes(H,N1),
    nforest(T,N2),
    N is 1 + N1 + N2.


nforest([],0).
nforest([H|T],N) :-

    nnodes(H,N1),
    nforest(T,N2),
    N is N1 + N2.