

palindrome(L) :-

    length(L,N),
    reverse(L,RL),
    palindrome(L,RL,N,0).

palindrome([],_,_,_).

palindrome([H|T1],[H|T2],N,Acc) :-

    (N mod 2) =:= 1,
    NHalf is N/2,
    Acc < NHalf,
    Acc1 is Acc+1,
    palindrome(T1,T2,N,Acc1).

palindrome([H|T1],[H|T2],N,Acc) :-

    (N mod 2) =:= 1,
    NHalf is N/2,
    Acc >= NHalf.
    

palindrome([H|T1],[H|T2],N,Acc) :-

    (N mod 2) =:= 0,
    NHalf is N/2,
    Acc < NHalf,
    Acc1 is Acc+1,
    palindrome(T1,T2,N,Acc1).

palindrome([H|T1],[H|T2],N,Acc) :-

    (N mod 2) =:= 0,
    NHalf is N/2,
    Acc >= NHalf.
    
