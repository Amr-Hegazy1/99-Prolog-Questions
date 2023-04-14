complete_binary_tree(N,T).


gen_tree(N,nil,_) :- N =< 0.

gen_tree(1,bt(_,nil,nil),_).
gen_tree(N,bt(_,L,R),I) :-
    N > 1,
    I1 is I + 1,
    N1 is N - 1,
    NL is N - I1 * 2 ,
    NR is NL - 1,
    gen_tree(NL,L,I1),
    gen_tree(NR,R,I1).
    