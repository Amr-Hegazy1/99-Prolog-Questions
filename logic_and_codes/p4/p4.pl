gray(1,0).
gray(1,1).


gray(N,C) :- 

    N > 1,
    N1 is N-1,
    gray(N1,C1),
    C = []