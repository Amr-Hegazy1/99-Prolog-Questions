pack(L,X) :- pack(L,X,[],[]).

pack([],X,T,Acc) :- append(Acc,[T],X).
pack([H],X,Temp,Acc) :- 
    Temp = [H|_],
    append(Acc,[[H|Temp]],X).

pack([H],X,Temp,Acc) :- 
    Temp \= [],
    Temp \= [H|_],
    append(Acc,[Temp],X1),
    append(X1,[[H]],X).

pack([H],X,Temp,Acc) :- 
    Temp = [],
    append(Acc,[[H]],X).

pack([H,H|T],X,Temp,Acc) :-
    append(Temp,[H],Temp1),
    pack([H|T],X,Temp1,Acc).


pack([H1,H2|T],X,Temp,Acc) :-
    H1 \= H2,
    
    append(Temp,[H1],Temp1),
    append(Acc,[Temp1],Acc1),
    
    pack([H2|T],X,[],Acc1).



