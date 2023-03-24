my_flatten([], []).

my_flatten([H|T],X) :-

    is_list(H),
    my_flatten(H,XH),
    my_flatten(T,XT),
    append(XH,XT,X).

my_flatten([H|T],X) :-
    \+is_list(H),
    my_flatten(T,XT),
    append([H],XT,X).