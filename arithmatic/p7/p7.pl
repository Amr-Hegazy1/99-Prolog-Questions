gcd(0, B, B).
gcd(A, 0, A).


gcd(A, B, G) :-

    A \= 0,
    B \= 0,
    R is A mod B,
    gcd(B,R,G).