tree_string(t(X,nil,nil),X).
tree_string(nil,"").
tree_string(t(X,L,R),S) :-
    
    tree_string(L,S1),
    tree_string(R,S2),
    atom_concat(X,"(",ST),
    atom_concat(ST,S1,ST1),
    atom_concat(ST1,",",ST2),
    atom_concat(ST2,S2,ST3),
    atom_concat(ST3,")",S).