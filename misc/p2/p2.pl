knights(N,L) :- knights(N,square(0,0),L,[]).

knights(N,_,L,L) :- N1 is N-1,N2 is N * N,length(L,N2).
knights(N,P,L,Acc) :-

    jump(N,P,D),
    \+ member(D,Acc),
    append(Acc,[D],Acc1),
    knights(N,D,L,Acc1).







jump(N,square(X,Y),square(U,V)) :-

    possible_jump(JX,JY),
    U is X + JX,
    V is Y + JY,
    U >= 0,
    U < N,
    V < N,
    V >= 0.





possible_jump(0,1).
possible_jump(0,-1).


possible_jump(1,0).
possible_jump(1,1).
possible_jump(1,2).
possible_jump(1,-1).
possible_jump(1,-2).

possible_jump(-1,0).
possible_jump(-1,1).
possible_jump(-1,2).
possible_jump(-1,-1).
possible_jump(-1,-2).





