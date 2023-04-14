bind(add).
bind(sub).
bind(mul).
bind(div).




arth(L,Out) :- member(X,L), arth(X,L,0,Out).

arth(N,[],N,"").

arth(N,[N|T],Acc,Out) :-

    arth(N,T,Acc,Out).


arth(N,[H|T],Acc,Out) :-

    N \= H,
    Acc1 is Acc + H,
    arth(N,T,Acc1,Out1),
    atom_concat("+",Out1,Out2),
    atom_concat(H,Out2,Out).
    

arth(N,[H|T],Acc,Out) :-

    N \= H,
    Acc1 is Acc - H,
    arth(N,T,Acc1,Out1),
    atom_concat("-",Out1,Out2),
    atom_concat(H,Out2,Out).

arth(N,[H|T],Acc,Out) :-

    N \= H,
    Acc1 is Acc * H,
    arth(N,T,Acc1,Out1),
    atom_concat("*",Out1,Out2),
    atom_concat(H,Out2,Out).


arth(N,[H|T],Acc,Out) :-

    N \= H,
    Acc1 is Acc / H,
    arth(N,T,Acc1,Out1),
    atom_concat("/",Out1,Out2),
    atom_concat(H,Out2,Out).

