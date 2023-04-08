layout_binary_tree(nil,nil).

layout_binary_tree(T,PT) :- layout_binary_tree(T,T,PT).

layout_binary_tree(_,nil,nil).

layout_binary_tree(T,t(N,L,R),t(N,X,Y,L,R)) :-

    inorder(T,N,X),
    depth(T,N,Y),
    layout_binary_tree(T,L,L),
    layout_binary_tree(T,R,R).







depth(t(N,_,_),N,1).
depth(nil,_,0).

depth(t(X,L,R),N,D) :-

    X \= N,
    depth(L,N,D1),
    depth(R,N,D2),
    min(D1,D2,D3),
    D is 1+D3.


min(N1,N2,N1) :- N1 =< N2.

min(N1,N2,N2) :- N1 > N2.


inorder(t(N,_,_),N,1).
inorder(nil,_,0).


inorder(t(X,L,R),N,D) :-

    X \= N,
    inorder(L,N,D1),
    inorder(R,N,D2),

    D is 1+D1+D2.


