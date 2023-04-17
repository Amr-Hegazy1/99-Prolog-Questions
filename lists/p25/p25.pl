rnd_permu(NL,L) :-
    length(NL,NLN),
    rnd_select(NL,NLN,L).


rnd_select([],N,[]).
rnd_select(NL,N,[Y|T]) :-

    length(NL,NLN),
    
    random_between(1,NLN,X),
    remove_at(Y,NL,X,NL1),
    rnd_select(NL1,N,T).





remove_at(X,[X|Xs],1,Xs).
remove_at(X,[Y|Xs],K,[Y|Ys]) :- K > 1, 
   K1 is K - 1, remove_at(X,Xs,K1,Ys).