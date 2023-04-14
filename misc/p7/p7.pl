suduko([L1,L2,L3,L4,L5,L6,L7,L8,L9]) :-
    permutation([1,2,3,4,5,6,7,8,9],L1),
    permutation([1,2,3,4,5,6,7,8,9],L2),
    permutation([1,2,3,4,5,6,7,8,9],L3),
    permutation([1,2,3,4,5,6,7,8,9],L4),
    permutation([1,2,3,4,5,6,7,8,9],L5),
    permutation([1,2,3,4,5,6,7,8,9],L6),
    permutation([1,2,3,4,5,6,7,8,9],L7),
    permutation([1,2,3,4,5,6,7,8,9],L8),
    permutation([1,2,3,4,5,6,7,8,9],L9),

    check(L1,L2,L3,L4,L5,L6,L7,L8,L9).

check([],[],[],[],[],[],[],[],[]).

check([H1|T1],[H2|T2],[H3|T3],[H4|T4],[H5|T5],[H6|T6],[H7|T7],[H8|T8],[H9|T9]) :-

    H1 \= H2,
    H2 \= H3,
    H3 \= H4,
    H4 \= H5,
    H5 \= H6,
    H6 \= H7,
    H7 \= H8,
    H8 \= H9,
    check(T1,T2,T3,T4,T5,T6,T7,T8,T9).
    