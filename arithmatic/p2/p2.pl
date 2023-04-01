prime_factors(N,L) :- prime_factors(N,2,L).

prime_factors(N,N,[N]).

prime_factors(N,D,[D|T]):-

    N > D,
    is_prime(D),
    N mod D =:= 0,
    N1 is N / D,
    
    prime_factors(N1,2,T).

prime_factors(N,D,L):-

    N > D,
    \+is_prime(D),
    D1 is D + 1,
    prime_factors(N,D1,L).

prime_factors(N,D,L):-

    N > D,
    is_prime(D),
    N mod D =\= 0,
    D1 is D + 1,
    prime_factors(N,D1,L).




% is_prime(P) :- P is a prime number
%    (integer) (+)

is_prime(2).
is_prime(3).
is_prime(P) :- integer(P), P > 3, P mod 2 =\= 0, \+ has_factor(P,3).  

% has_factor(N,L) :- N has an odd factor F >= L.
%    (integer, integer) (+,+)

has_factor(N,L) :- N mod L =:= 0.
has_factor(N,L) :- L * L < N, L2 is L + 2, has_factor(N,L2).
