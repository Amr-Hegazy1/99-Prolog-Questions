internals(nil,[]).
internals(t(x,nil,nil),[]).



internals(t(X,L,R),[X|T]) :- 

    L = t(_,_,_),
    R = t(_,_,_),

    internals(L,S1),
    internals(R,S2),
    append(S1,S2,T).

