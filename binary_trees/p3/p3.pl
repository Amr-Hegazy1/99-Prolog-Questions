symmetric(nil).

symmetric(t(_,R,L)) :-

    mirror(R,L).


mirror(nil,nil).
mirror(t(_,R1,L1),t(_,R2,L2)) :-

    mirror(R1,L1),
    mirror(R2,L2).
