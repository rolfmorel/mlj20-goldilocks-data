move_right(w(Rx1,Ry),w(Rx2,Ry)):-
    position(Rx1),
    position(Rx2),
    position(Ry),
    Rx2 = Rx1 + 1.

move_left(w(Rx1,Ry),w(Rx2,Ry)):-
    position(Rx1),
    position(Rx2),
    position(Ry),
    Rx2 = Rx1 - 1.

move_up(w(Rx,Ry1),w(Rx,Ry2)):-
    position(Rx),
    position(Ry1),
    position(Ry2),
    Ry2 = Ry1 + 1.

move_down(w(Rx,Ry1),w(Rx,Ry2)):-
    position(Rx),
    position(Ry1),
    position(Ry2),
    Ry2 = Ry1 - 1.
