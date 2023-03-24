rev([],[]).

rev([H|T],L) :-

    rev(T,L1),
    app(L1,[H],L). % can use built-in append predicate

app([],X,X).

app([H|T],L2,L) :-

    app(T,L2,L1),
    L = [H|L1].