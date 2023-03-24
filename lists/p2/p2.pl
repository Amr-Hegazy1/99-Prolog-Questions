
before_last(X,[X,_]).

before_last(X,[_|T]) :-
    before_last(X,T).