seq(L) :-
    length(L,NL),
    gen_list(NL,GL),
    permutation(GL,PL),
    check(PL),
    L = PL.


gen_list(0,[]).
gen_list(N,[N|L]) :-

    N > 0,
    N1 is N - 1,
    gen_list(N1,L).

check([_]).
check([X,Y|T]) :-

    D is Y - X,
    D >= -1,
    D =< 2,
    check([Y|T]).

