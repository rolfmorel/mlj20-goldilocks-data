#pos(p1, {f(w(1,1),w(2,2))}, {}).
#modeh(1,f(var(state),var(state)), (anti_reflexive)).
#modeb(1,move_left(var(state),var(state)), (positive,anti_reflexive)).
#modeb(1,move_right(var(state),var(state)), (positive,anti_reflexive)).
#modeb(1,move_up(var(state),var(state)), (positive,anti_reflexive)).
#modeb(1,move_down(var(state),var(state)), (positive,anti_reflexive)).

#maxv(4).

%% size(3).
position(1..3).

move_right(w(Rx1,Ry),w(Rx2,Ry)):-
    position(Rx1),
    position(Rx2),
    position(Ry),
    Rx2 = Rx1 + 1.

move_left(w(Rx1,Ry),w(Rx2,Ry)):-
    position(Rx1),
    position(Ry),
    position(Rx2),
    Rx2 = Rx1-1.

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
