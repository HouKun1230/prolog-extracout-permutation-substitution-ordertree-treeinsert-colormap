extractout(X,[X|T],T).
extractout(X,[H|R],[H|S]):- extractout(X,R,S).

permutation([],[]).
permutation([X|Y],Z) :- permutation(Y,W), extractout(X,Z,W).