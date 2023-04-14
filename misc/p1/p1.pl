solve(N,L) :- 
    N1 is N - 1,
    gen_list(N1,L1),
    permutation(L1,L),
    right_diagonal(0,L,[]),
    left_diagonal(0,L,[]).

gen_list(0,[0]).

gen_list(N,[N|T]) :-
    N > 0,
    N1 is N - 1,
    gen_list(N1,T).

right_diagonal(_,[],_).

right_diagonal(N,[H|T],L) :-

    Sum is N + H,
    N1 is N + 1,
    \+ member(Sum,L),
    append(L,[Sum],LS),
    right_diagonal(N1,T,LS).

left_diagonal(_,[],_).

left_diagonal(N,[H|T],L) :-

    Sum is N - H,
    N1 is N + 1,
    \+ member(Sum,L),
    append(L,[Sum],LS),
    left_diagonal(N1,T,LS).
