neighbour(X,Y,Map) :-  member([X,Y],Map) ; member([Y,X],Map). 


find_regions([],R,R). 
find_regions([[X,Y]|S], R,A) :- 
 (member(X,R) ->  
  (member(Y,R) -> find_regions(S,R,A) ; find_regions(S,[Y|R],A)) ; 
   (member(Y,R) -> find_regions(S,[X|R],A) ; find_regions(S,[X,Y|R],A) ) ). 


color(Coloring) :- map2(Map),
        find_regions(Map,[],Regions), 
        color_all(Regions,[red,blue,green,yellow],Coloring), 
        \+ conflict(Map,Coloring). 
color_all([R|Rs],Colors,[[R,C]|A]) :- 
        member(C,Colors), 
        color_all(Rs,Colors,A). 
color_all([],_,[]). 


conflict(Map,Coloring) :- 
        member([R1,C],Coloring), 
        member([R2,C],Coloring), 
        neighbour(R1,R2,Map). 

member(X,[X|_]).
member(X,[_|T]):- member(X,T).

map2([[antilles,venezuela],[argentina,bolivia],[argentina,brazil],[argentina,chile],[argentina,paraguay],[argentina,uruguay],[bolivia,brazil],[bolivia,chile],[bolivia,paraguay],[bolivia,peru],[brazil,columbia],[brazil,french_guiana],[brazil,guyana],[brazil,paraguay],[brazil,peru],[brazil,surinam],[brazil,uruguay],[brazil,venezuela],[chile,peru],[columbia,ecuador],[columbia,peru],[columbia,venezuela],[ecuador,peru],[french_guiana,surinam],[guyana,surinam],[guyana,venezuela]
]).
map1([[1,2],[1,3],[1,4],[1,5],[2,3],[2,4],[3,4],[4,5]]).


