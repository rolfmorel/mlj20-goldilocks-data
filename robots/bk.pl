:- use_module(library(clpfd)).

move_right(w(Rx1,Ry,Bx1,By,Holding),w(Rx2,Ry,Bx2,By,Holding)):-
    size(Size),
    Rx1 #< Size,
    Rx2 #= Rx1 + 1,
    Bx2 #= Bx1 + Holding.

move_left(w(Rx1,Ry,Bx1,By,Holding),w(Rx2,Ry,Bx2,By,Holding)):-
    Rx1 #> 1,
    Rx2 #= Rx1 - 1,
    Bx2 #= Bx1 - Holding.

move_up(w(Rx,Ry1,Bx,By1,Holding),w(Rx,Ry2,Bx,By2,Holding)):-
    size(Size),
    Ry1 #< Size,
    Ry2 #= Ry1 + 1,
    By2 #= By1 + Holding.

move_down(w(Rx,Ry1,Bx,By1,Holding),w(Rx,Ry2,Bx,By2,Holding)):-
    Ry1 #> 1,
    Ry2 #= Ry1 - 1,
    By2 #= By1 - Holding.

pickup(w(X,Y,X,Y,0),w(X,Y,X,Y,1)).
drop(w(X,Y,X,Y,1),w(X,Y,X,Y,0)).

