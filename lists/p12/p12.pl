decode([],[]).

decode(L,X) :- decode(L,X,[]).

decode([],X,X).

decode([H|T],X,Acc) :-

    is_list(H),
    uncompress(H,Temp),
    append(Acc,Temp,Acc1),
    decode(T,X,Acc1).

decode([H|T],X,Acc) :-

    \+is_list(H),
    
    append(Acc,[H],Acc1),
    decode(T,X,Acc1).

   

uncompress([N,H],O) :- uncompress([N,H],O,[],N).


uncompress(_,O,O,0). 

uncompress([N,H],O,Acc,I) :-

    I > 0,
    append(Acc,[H],Acc1),
    I1 is I-1,
    uncompress([N,H],O,Acc1,I1).


