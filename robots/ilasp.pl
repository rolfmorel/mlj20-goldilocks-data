%#pos(p1, {f(w(1,1),w(2,2))}, {}).
#pos(p1, {f(w(1,1,1,1,0),w(2,2,2,2,0))}, {f(w(2,2,2,2,0),w(2,2,2,2,0))}).
#neg(n1, {f(w(1,1,1,1,0),w(1,1,1,1,0))}, {}).
#modeh(1,f(var(state),var(state)), (anti_reflexive)).
#modeb(1,move_left(var(state),var(state)), (positive,anti_reflexive)).
#modeb(1,move_right(var(state),var(state)), (positive,anti_reflexive)).
#modeb(1,move_up(var(state),var(state)), (positive,anti_reflexive)).
#modeb(1,move_down(var(state),var(state)), (positive,anti_reflexive)).
#modeb(1,pickup(var(state),var(state)), (positive,anti_reflexive)).
#modeb(1,drop(var(state),var(state)), (positive,anti_reflexive)).

#maxv(5).

%% size(3).
position(1..3).
%position(X):-1<=X,size(Size).
holding(0).
holding(1).


pickup(w(Rx,Ry,Rx,Ry,0),w(Rx,Ry,Rx,Ry,1)):-
    position(Rx),
    position(Ry).


drop(w(Rx,Ry,Rx,Ry,1),w(Rx,Ry,Rx,Ry,0)):-
    position(Rx),
    position(Ry).


move_right(w(Rx1,Ry,Bx1,By,Holding),w(Rx2,Ry,Bx2,By,Holding))
:-
    position(Rx1),
    position(Rx2),
    position(Ry),
    position(Bx1),
    position(Bx2),
    position(By),
    Rx2 = Rx1 + 1,
    Bx2 = Bx1 + Holding,
    holding(Holding).

move_left(w(Rx1,Ry,Bx1,By,Holding),w(Rx2,Ry,Bx2,By,Holding))
:-
    position(Rx1),
    position(Rx2),
    position(Ry),
    position(Bx1),
    position(Bx2),
    position(By),
    Rx2 = Rx1 - 1,
    Bx2 = Bx1 - Holding,
    holding(Holding).

move_up(w(Rx,Ry1,Bx,By1,Holding),w(Rx,Ry2,Bx,By2,Holding))
:-
    position(Rx),
    position(Ry1),
    position(Ry2),
    position(Bx),
    position(By1),
    position(By2),
    Rx2 = Ry1 + 1,
    Bx2 = By1 + Holding,
    holding(Holding).

move_down(w(Rx,Ry1,Bx,By1,Holding),w(Rx,Ry2,Bx,By2,Holding))
:-
    position(Rx),
    position(Ry1),
    position(Ry2),
    position(Bx),
    position(By1),
    position(By2),
    Rx2 = Ry1 + 1,
    Bx2 = By1 + Holding,
    holding(Holding).
