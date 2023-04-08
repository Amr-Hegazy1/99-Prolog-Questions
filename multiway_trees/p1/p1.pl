istree(t(_,[])).
istree(t(_,[H|T])) :-

    istree(H),
    istree(t(_,T)).
