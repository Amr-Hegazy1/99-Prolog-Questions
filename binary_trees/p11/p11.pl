atlevel(t(X,_,_),0,[X]).
atlevel(nil,_,[]).

atlevel(t(_,Left,Right),L,S) :-

    L > 0,
    L1 is L-1,
    atlevel(Left,L1,S1),
    atlevel(Right,L1,S2),
    append(S1,S2,S).
