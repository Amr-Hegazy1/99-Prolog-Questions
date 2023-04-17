% Knowledge Base

% OR

or(true,_).
or(_,true).


% AND

and(true,true).


% NAND

nand(false,_).
nand(_,false).



% NOR


nor(false,false).


% XOR


xor(false,true).
xor(true,false).


% IMPLICATION

impl(false,false).
impl(false,true).

impl(true,true).

% EQUIVALENCE

eq(false,false).

eq(true,true).


% TABLE PREDICATE

table(A,B,and(A,B)) :- bind(A),bind(B),and(A,B).
table(A,B,or(A,B)) :- bind(A),bind(B),or(A,B).
table(A,B,nand(A,B)) :- bind(A),bind(B),nand(A,B).
table(A,B,xor(A,B)) :- bind(A),bind(B),xor(A,B).
table(A,B,nor(A,B)) :- bind(A),bind(B),nor(A,B).
table(A,B,impl(A,B)) :- bind(A),bind(B),impl(A,B).
table(A,B,eq(A,B)) :-  bind(A),bind(B),eq(A,B).

table(A,B,Exp) :-
    
    compute(A,B,Exp,Res).

compute(A,B,and(A,B),true) :- bind(A),bind(B),and(A,B).
compute(A,B,or(A,B),true) :- bind(A),bind(B),or(A,B).
compute(A,B,nand(A,B),true) :- bind(A),bind(B),nand(A,B).
compute(A,B,xor(A,B),true) :- bind(A),bind(B),xor(A,B).
compute(A,B,nor(A,B),true) :- bind(A),bind(B),nor(A,B).
compute(A,B,impl(A,B),true) :- bind(A),bind(B),impl(A,B).
compute(A,B,eq(A,B),true) :-  bind(A),bind(B),eq(A,B).


compute(A,B,and(A,B),false) :- bind(A),bind(B), \+ and(A,B).
compute(A,B,or(A,B),false) :- bind(A),bind(B),\+ or(A,B).
compute(A,B,nand(A,B),false) :- bind(A),bind(B),\+ nand(A,B).
compute(A,B,xor(A,B),false) :- bind(A),bind(B),\+ xor(A,B).
compute(A,B,nor(A,B),false) :- bind(A),bind(B),\+ nor(A,B).
compute(A,B,impl(A,B),false) :- bind(A),bind(B),\+ impl(A,B).
compute(A,B,eq(A,B),false) :-  bind(A),bind(B),\+ eq(A,B).

compute(_,B,B,B).
compute(A,_,A,A).
compute(A,B,and(F1,F2),true) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    and(Res1,Res2).

compute(A,B,or(F1,F2),true) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    or(Res1,Res2).


compute(A,B,nand(F1,F2),true) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    nand(Res1,Res2).


compute(A,B,xor(F1,F2),true) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    xor(Res1,Res2).

compute(A,B,nor(F1,F2),true) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    nor(Res1,Res2).

compute(A,B,impl(F1,F2),true) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    impl(Res1,Res2).

compute(A,B,eq(F1,F2),true) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    eq(Res1,Res2).




compute(A,B,and(F1,F2),false) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    \+and(Res1,Res2).

compute(A,B,or(F1,F2),false) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    \+or(Res1,Res2).


compute(A,B,nand(F1,F2),false) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    \+nand(Res1,Res2).


compute(A,B,xor(F1,F2),false) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    \+xor(Res1,Res2).

compute(A,B,nor(F1,F2),false) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    \+nor(Res1,Res2).

compute(A,B,impl(F1,F2),false) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    \+impl(Res1,Res2).

compute(A,B,eq(F1,F2),false) :-

    (
        F1 \= A;
        F2 \= B
    ),
    compute(A,B,F1,Res1),
    compute(A,B,F2,Res2),
    \+eq(Res1,Res2).





bind(true).
bind(false).