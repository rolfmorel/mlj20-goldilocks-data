:- use_module(library(clpfd)).

move_right(w(Rx1,Ry),w(Rx2,Ry)):-
    size(Size),
    Rx1 #< Size,
    Rx2 #= Rx1 + 1.

move_left(w(Rx1,Ry),w(Rx2,Ry)):-
    Rx1 #> 1,
    Rx2 #= Rx1 - 1.

move_up(w(Rx,Ry1),w(Rx,Ry2)):-
    size(Size),
    Ry1 #< Size,
    Ry2 #= Ry1 + 1.

move_down(w(Rx,Ry1),w(Rx,Ry2)):-
    Ry1 #> 1,
    Ry2 #= Ry1 - 1.

%pickup(w(X,Y,X,Y,0),w(X,Y,X,Y,1)).
%drop(w(X,Y,X,Y,1),w(X,Y,X,Y,0)).
