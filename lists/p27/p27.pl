group3(L,G1,G2,G3) :-

    combination(2,L,G1),
    delete_sublist(G1,L,LG1),
    combination(3,LG1,G2),
    delete_sublist(G2,LG1,LG2),
    combination(4,LG2,G3).



delete_sublist([],_,[]).
delete_sublist(SL,[HL|TL],[HL|T]) :-

    \+ member(HL,SL),
    delete_sublist(SL,TL,T).


delete_sublist(SL,[HL|TL],L) :-

    member(HL,SL),
    SL = [_|TSL],
    delete_sublist(TSL,TL,L).


group(_,[],[]).
group(L,[N|Ns],[G|Gs]) :-

    combination(N,L,G),
    delete_sublist(G,L,LG),
    group(LG,Ns,Gs).































combination(0,_,[]).
combination(K,L,[X|Xs]) :- K > 0,
   el(X,L,R), K1 is K-1, combination(K1,R,Xs).



el(X,[X|L],L).
el(X,[_|L],R) :- el(X,L,R).