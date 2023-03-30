range(E,E,[E]).

range(S,E,L) :-
	S \= E,
	L = [S|T],
	S1 is S+1,
	range(S1,E,T).