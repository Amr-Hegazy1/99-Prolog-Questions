
preorder(T,S) :- preorder_tl(T,L), atom_chars(S,L).

preorder_tl(nil,[]).
preorder_tl(t(X,Left,Right),[X|List]) :-
   preorder_tl(Left,ListLeft),
   preorder_tl(Right,ListRight),
   append(ListLeft,ListRight,List).

inorder(T,S) :- inorder_tl(T,L), atom_chars(S,L).

inorder_tl(nil,[]).
inorder_tl(t(X,Left,Right),List) :-
   inorder_tl(Left,ListLeft),
   inorder_tl(Right,ListRight),
   append(ListLeft,[X|ListRight],List).




pre_in_tree(Pre,In,T) :- preorder(T,Pre) , inorder(T,In).
