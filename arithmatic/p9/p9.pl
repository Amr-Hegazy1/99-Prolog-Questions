totient_phi(1,1).
totient_phi(M,R) :-

    M > 1,
    coprime(M,R),
    M1 is M-1,
    totient_phi(M1,R1).




coprime(A, B) :- gcd(A,B,1).


gcd(0, B, B).
gcd(A, 0, A).


gcd(A, B, G) :-

    A \= 0,
    B \= 0,
    R is A mod B,
    gcd(B,R,G).