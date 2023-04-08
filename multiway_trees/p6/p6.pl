tree_ltl(t(X,[]),[X]).
tree_ltl(t(X,[H|T]),LTL) :-

    tree_ltl(H,LTL1),
    tree_ltl(T,LTL2),
    append(LTL1,LTL2,LTL3),
    append(['(',X],LTL3,LTL4),
    append(LTL4,[')'],LTL).

tree_ltl([],[]).

tree_ltl([H|T],LTL) :-

    tree_ltl(H,LTL1),
    tree_ltl(T,LTL2),
    append(LTL1,LTL2,LTL3),
    append(['('],LTL3,LTL4),
    append(LTL4,[')'],LTL).
