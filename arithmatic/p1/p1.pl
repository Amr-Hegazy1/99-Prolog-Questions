is_prime(N) :- is_prime(N,2).

is_prime(N,N).

is_prime(N,D) :-
    N > D,
    N mod D =\= 0,
    D1 is D+1,
    is_prime(N,D1).