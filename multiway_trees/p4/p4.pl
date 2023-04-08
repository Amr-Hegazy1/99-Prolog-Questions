ipl(t(_,[]),0).
ipl(t(_,[H|T]),IPL) :- ipl(t(_,[H|T]),IPL,0).

ipl(t(_,[]),Acc,Acc).

ipl(t(_,[H|T]),IPL,Acc) :-

    Acc1 is Acc + 1,
    ipl(H,IPL1,Acc1),
    ipl(t(_,T),IPL2,Acc),
    IPL is IPL1 + IPL2.

    
