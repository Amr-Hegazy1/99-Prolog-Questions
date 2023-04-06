istree(t(_,nil,nil)).
istree(t(_,nil,L)) :- 
    L \= nil,
    istree(L).
istree(t(_,R,nil)) :- 
    R \= nil,
    istree(R).
istree(t(_,L,R)) :-

    istree(L),
    istree(R).
