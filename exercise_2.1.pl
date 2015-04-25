orderedT(empty).
orderedT(tree(X,L,R)):-order_left(X,L),order_right(X,R).


order_left(X,empty).
order_left(X,tree(Y,L,R)):-X>Y,orderedT(tree(Y,L,R)),orderedT(tree(X,R,empty)).


order_right(X,empty).
order_right(X,tree(Y,L,R)):-X<Y,orderedT(tree(Y,L,R)),orderedT(tree(X,empty,L)).