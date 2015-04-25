tree_ins(X,empty,tree(X,empty,empty)).
tree_ins(X,tree(X,L,R),tree(X,L,R)).
tree_ins(X,tree(Y,L,R),tree(Y,L1,R)):-X < Y,tree_ins(X,L,L1).
tree_ins(X,tree(Y,L,R),tree(Y,L,R1)):-X > Y,tree_ins(X,R,R1).