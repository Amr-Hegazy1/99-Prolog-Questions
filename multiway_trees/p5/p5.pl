bottom_up(Tree,Seq) :-
    height(Tree,H),
    bottom_up(Tree,Seq,H).

bottom_up(Tree,[],0).

bottom_up(Tree,Seq,H) :-
    H > 0,
    H1 is H-1,
    get_level(Tree,L,H1),
    bottom_up(Tree,Seq1,H1),
    append(L,Seq1,Seq).



height(t(_,[]),1).

height(t(_,[H|T]),N) :-

    height(H,N1),
    height(T,N2),
    max(N1,N2,N3),
    N is 1 + N3.

height([],0).    

height([H|T],N) :-

    height(H,N1),
    height(T,N2),
    max(N1,N2,N).

max(N1,N2,N1) :- N1 >= N2.
max(N1,N2,N2) :- N1 < N2.


get_level(t(N,_),[N],0).

get_level(t(_,[]),[],X) :- X > 0.

get_level(t(_,[H|T]),L,N) :-

    N > 0,
    N1 is N - 1,
    get_level(H,L1,N1),
    get_level(T,L2,N1),
    append(L1,L2,L).


get_level([],[],_).


get_level([H|T],L,N) :-
    
    
    get_level(H,L1,N),
    get_level(T,L2,N),
    append(L1,L2,L).
