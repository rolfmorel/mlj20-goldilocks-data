%#pos(a, {f(w(1,1),w(1,1))}, {}).
%#pos(a, {f(w(1,1),w(2,1))}, {}).


#modeh(1,f(var(state),var(state)), (anti_reflexive)).
%#modeb(1,grab(var(state),var(state)), (positive)).
%#modeb(1,drop(var(state),var(state)), (positive)).
#modeb(1,move_left(var(state),var(state)), (positive)).
#modeb(1,move_right(var(state),var(state)), (positive)).
#modeb(1,move_up(var(state),var(state)), (positive)).
#modeb(1,move_down(var(state),var(state)), (positive)).

%#maxv(4).
%
%size(3).
%position(1).
%position(2).
%position(3).


%holding(true).
%holding(false).

%at_leftmost(w(1,Ry,Bx,By,Holding)):-
%        position(Ry),
%        position(Bx),
%        position(By),
%        holding(Holding).
%
%at_rightmost(w(Rx,Ry,Bx,By,Holding)):-
%        size(Rx),
%        position(Ry),
%        position(Bx),
%        position(By),
%        holding(Holding).

%%grab(w(X,Y,X,Y,false),w(X,Y,X,Y,true)):-
%%    x_pos(X),
%%    y_pos(Y).
%%
%%drop(w(X,Y,X,Y,true),w(X,Y,X,Y,false)):-
%%    x_pos(X),
%%    y_pos(Y).

move_right(w(Rx1,Ry),w(Rx2,Ry)):-
    x_pos(Rx1),
    x_pos(Rx2),
    y_pos(Ry),
    Rx2 = Rx1 + 1.

move_left(w(Rx1,Ry),w(Rx2,Ry)):-
    x_pos(Rx1),
    y_pos(Ry),
    x_pos(Rx2),
    Rx2 = Rx1 - 1.

move_up(w(Rx,Ry1),w(Rx,Ry2)):-
    x_pos(Rx),
    y_pos(Ry1),
    y_pos(Ry2),
    Ry2 = Ry1 + 1.

move_down(w(Rx,Ry1),w(Rx,Ry2)):-
    x_pos(Rx),
    y_pos(Ry1),
    y_pos(Ry2),
    Ry2 = Ry1 - 1.
