full_words(N) :- N =< 9, num_to_word(N,S),write(S).
full_words(N) :- N > 9,R is N mod 10,D is N // 10,full_words(D),num_to_word(R,S),write(-S).




num_to_word(0,zero).
num_to_word(1,one).
num_to_word(2,two).
num_to_word(3,three).
num_to_word(4,four).
num_to_word(5,five).
num_to_word(6,six).
num_to_word(7,seven).
num_to_word(8,eight).
num_to_word(9,nine).