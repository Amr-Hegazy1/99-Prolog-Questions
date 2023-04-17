my_flatten(L, X) :- my_flatten(L,X,[]).


my_flatten([],X,X).
my_flatten(N,[N]) :- \+ is_list(N).
my_flatten([H|T],X,Acc) :-

    is_list(H),
    my_flatten(H,XH),
    
    append(Acc,XH,Acc1),
    my_flatten(T,X,Acc1).

my_flatten([H|T],X,Acc) :-

    \+ is_list(H),
    
    append(Acc,[H],Acc1),
    my_flatten(T,X,Acc1).




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




min(0,_,_,0) :- !.
min(_,0,_,0) :- !.
min(_,_,0,0) :- !.

min(s(N1),s(N2),s(N3),Min) :-

    min(N1,N2,N3,Min1),
    Min = s(Min1).

sum(0,X,X).
sum(s(N),Y,Z) :-

    Y1 = s(Y),
    sum(N,Y1,Z).