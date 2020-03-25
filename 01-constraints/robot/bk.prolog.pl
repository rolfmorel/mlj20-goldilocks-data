:- include("parameters.pl").

:- style_check(-singleton).

at_top(w(Rx,Ry,Bx,By,Holding)):-
    max_pos_y(Ry).

at_right(w(Rx,Ry,Bx,By,Holding)):-
    max_pos_x(Rx).

at_bottom(w(Rx,0,Bx,By,Holding)).

at_left(w(0,Ry,Bx,By,Holding)).

grab(w(X,Y,X,Y,0),w(X,Y,X,Y,1)).

drop(w(X,Y,X,Y,1),w(X,Y,X,Y,0)).

move_right(w(Rx1,Ry,Bx1,By,Holding),w(Rx2,Ry,Bx2,By,Holding)):-
    Rx2 is Rx1 + 1,
    Bx2 is Bx1 + Holding,
    max_pos_x(MaxX),
    MaxX >= Rx2.

move_left(w(Rx1,Ry,Bx1,By,Holding),w(Rx2,Ry,Bx2,By,Holding)):-
    Rx2 is Rx1 - 1,
    Bx2 is Bx1 - Holding,
    Rx2 >= 0.

move_up(w(Rx,Ry1,Bx,By1,Holding),w(Rx,Ry2,Bx,By2,Holding)):-
    Ry2 is Ry1 + 1,
    By2 is By1 + Holding,
    max_pos_y(MaxY),
    MaxY >= Ry2.

move_down(w(Rx,Ry1,Bx,By1,Holding),w(Rx,Ry2,Bx,By2,Holding)):-
    Ry2 is Ry1 - 1,
    By2 is By1 - Holding,
    Ry2 >= 0.

