traverse([],^).
traverse([H|T],O) :-

    traverse(H,O1),
    traverse(T,O2),
    atom_concat(O1,O2,O).


traverse(t(X,[]),O) :- atom_concat(X,^,O).
traverse(t(X,[H|T]),O) :-

    traverse(H,O1),
    traverse(T,O2),
    atom_concat(X,O1,O3),
    atom_concat(O3,O2,O).