identifier([X]) :- X \= "-".

identifier([X,"-",Y|T]):-
    identifier(T).

identifier([_,Y|T]):-
    Y \= "-",
    identifier(T).

