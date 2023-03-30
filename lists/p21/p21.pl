insert_at(C,L,0,R) :-

	append([C],L,R).


insert_at(C,[H|T],N,L) :-
	
	N > 0,
	N1 is N-1,
	insert_at(C,T,N1,L1),
	L = [H|L1].