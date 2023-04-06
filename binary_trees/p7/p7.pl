hbal_tree_nodes(0,nil)
hbal_tree_nodes(N,t(x,T1,T2)) :-
    N1 is N // 2,
    hbal_tree_nodes_l(N1,T1),
    hbal_tree_nodes(N1,T2).

