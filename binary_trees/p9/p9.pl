leaves(nil,[]).

leaves(t(X,nil,nil),[X]).


leaves(t(_,L,R),S) :-
    L \= nil,
    R \= nil,
    leaves(L,S1),
    leaves(R,S2),
    append(S1,S2,S).