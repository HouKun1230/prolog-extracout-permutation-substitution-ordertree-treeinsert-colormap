sub(X,Y,[],[]).
sub(X,Y,[X|T1],[Y|T2]):-sub(X,Y,T1,T2).
sub(X,Y,[Z|T1],[Z|T2]):-X\=Z, sub(X,Y,T1,T2).