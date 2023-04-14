lsort([],[]).
lsort(L,LS) :-
    L \= [],
    lengths(L,[pair(N,H)|TF]),
    get_min(TF,Min,N,H),
    LS = [Min|LST],
    delete(L,Min,LD),
    lsort(LD,LST).


lengths([],[]).
lengths([H|T],[pair(N,H)|TF]) :-

    length(H,N),
    lengths(T,TF).



get_min([],Min,_,Min).
get_min([pair(N,H)| TF],Min,MinSoFar,_) :-

    N < MinSoFar,
    
    get_min(TF,Min,N,H).

get_min([pair(N,_)| TF],Min,MinSoFar,MinEle) :-

    N >= MinSoFar,
    
    get_min(TF,Min,MinSoFar,MinEle).

 