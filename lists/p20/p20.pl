remove_at(H,[H|T],1,T).

remove_at(X,[H|T],N,R):-
	N>1,
	N1 is N-1,
	remove_at(X,T,N1,R1),
	R = [H|R1].