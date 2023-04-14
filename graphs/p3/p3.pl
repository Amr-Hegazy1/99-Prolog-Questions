cycle(G,A,P) :- cycle(G,A,A,P).

cycle([B-A|T],A,Str,Str) :- Str \= A.
cycle([],_,_,"").

cycle([A-B|T],A,Str,P) :-

    
    atom_concat(Str,"-",Str2),
    atom_concat(Str2,B,Str3),
    
    cycle(T,A,Str3,P).



cycle([X|T],A,Str,P) :-

    X \= _ - _ ,
    cycle(T,A,Str,P).

cycle([Y-X|T],A,Str,P) :-
    Y \= A,
    sub_atom(Str, _, 1, 0, Y),
    
    atom_concat(Str,"-",Str2),
    atom_concat(Str2,X,Str3),
    atom_concat(Str3,"-",Str4),
    cycle(T,A,Str4,P).

cycle([Y-X|T],A,Str,P) :-
    Y \= A,
    sub_atom(Str, _, 1, 0, X),
    
    atom_concat(Str,"-",Str2),
    atom_concat(Str2,Y,Str3),
    atom_concat(Str3,"-",Str4),
    cycle(T,A,Str4,P).

cycle([Y-X|T],A,Str,P) :-
    Y \= A,
    Str \= _ - Y,
    
    cycle(T,A,Str,P).

cycle([Y-X|T],A,Str,P) :-
    Y \= A,
    Str \= _ - X,
    
    cycle(T,A,Str,P).






