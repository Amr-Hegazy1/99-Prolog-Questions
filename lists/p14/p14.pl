dupli([],[]).
dupli([X|T1],[X,X|T2]) :- dupli(T1,T2).