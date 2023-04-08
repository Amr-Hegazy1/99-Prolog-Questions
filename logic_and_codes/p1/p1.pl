%%%% Knowledge Base

%% OR

or(true,_).
or(_,true).


%% AND

and(true,true).


%% NAND

nand(false,_).
nand(_,false).



%% NOR


nor(false,false).


%% XOR


xor(false,true).
xor(true,false).


%% IMPLICATION

impl(false,false).
impl(false,true).

impl(true,true).

%% EQUIVALENCE

eq(false,false).

eq(true,true).


%%%% TABLE PREDICATE

table(A,B,and(A,B)).
table(A,B,or(A,B)).
table(A,B,nand(A,B)).
table(A,B,xor(A,B)).
table(A,B,nor(A,B)).
table(A,B,impl(A,B)).
table(A,B,eq(A,B)).

table(A,B,and(F1,F2)) :- 

    F1 \= A,
    F2 \= B,
    table(F1,F2,F3).

table(A,B,and(F1,F2)) :- 

    F1 \= A,
    F2 \= B,
    table(F1,F2,F3).
