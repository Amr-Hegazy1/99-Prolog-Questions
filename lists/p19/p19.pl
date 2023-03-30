rotate(L,N,X) :- 
	N>=0,
	rotate(L,N,[],X).
rotate(L,N,X) :- 
	N<0,
	N1 is N * -1,
	reverse(L,L1),
	rotate(L1,N1,[],X1),
	reverse(X1,X).
	

rotate(T,0,Acc,X) :-
	append(T,Acc,X).

rotate([H|T],N,Acc,X) :-
	N>0,
	N1 is N-1,
	append(Acc,[H],Acc1),
	rotate(T,N1,Acc1,X).
