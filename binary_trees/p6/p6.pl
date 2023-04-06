hbal_tree(0,nil).



hbal_tree(N,t(x,T1,T2)) :-
    N > 0,
    N1 is N-1,
    hbal_tree(N1,T1),
    hbal_tree(N1,T2).