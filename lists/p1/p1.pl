my_last(H,[H|[]]).

my_last(X,[H|T]):- 
    my_last(X,T).