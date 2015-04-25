extractout(X,[X|T],T).
extractout(X,[H|R],[H|S]):- extractout(X,R,S).