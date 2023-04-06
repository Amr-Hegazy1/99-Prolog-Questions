cbal_tree(0,nil).
cbal_tree(1,t(x,nil,nil)).
cbal_tree(N,T):-
    N > 1,
    N1 is (N)//2 + (N) mod 2,
    cbal_tree(N1,T1),
    cbal_tree(N1,T2),
    T = t(x,T1,T2).