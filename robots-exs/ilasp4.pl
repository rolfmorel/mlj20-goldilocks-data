size(5).
position(1..5).

#pos(p1, {f(w(1,5))}, {}, {
    start_state(w(1,4)).
}).

#pos(p2, {f(w(1,5))}, {}, {
    start_state(w(1,3)).
}).

#pos(p3, {f(w(2,5))}, {}, {
    start_state(w(2,2)).
}).

#pos(n1, {}, {f(w(1,5))}, {
    start_state(w(2,4)).
}).

#pos(n2, {}, {f(w(1,2))}, {
    start_state(w(1,2)).
}).

#pos(n3, {}, {f(w(1,4))}, {
    start_state(w(1,3)).
}).

#pos(n4, {}, {f(w(1,1))}, {
    start_state(w(1,5)).
}).

#pos(n5, {}, {f(w(1,3))}, {
    start_state(w(1,1)).
}).


#modeh(f(var(state)), (positive)).
#modeh(start_state(var(state)), (positive)).
#modeb(3,move_up(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_down(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_left(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_right(var(state),var(state)), (anti_reflexive,symmetric,positive)).
%% #modeb(1,f(var(state)), (positive)).
#modeb(3,at_top(var(state)), (positive)).
#modeb(3,at_bottom(var(state)), (positive)).
#modeb(3,at_left(var(state)), (positive)).
#modeb(3,at_right(var(state)), (positive)).
#modeb(3,start_state(var(state)), (positive)).

#bias(":- occurs(V, X), #false : occurs(V, Y), Y != X.").
#bias("occurs(X, f(X)) :- head(f(X)).").
#bias("occurs(X, start_state(X)) :- head(start_state(X)).").
#bias("occurs(X, start_state(X)) :- body(start_state(X)).").
#bias("occurs(X, at_top(X)) :- body(at_top(X)).").
#bias("occurs(X, move_up(X, Y)) :- body(move_up(X, Y)).").
#bias("occurs(X, move_left(X, Y)) :- body(move_left(X, Y)).").
#bias("occurs(X, move_right(X, Y)) :- body(move_right(X, Y)).").
#bias("occurs(X, move_down(X, Y)) :- body(move_down(X, Y)).").
#bias("occurs(X, move_up(Y, X)) :- body(move_up(Y, X)).").
#bias("occurs(X, move_left(Y, X)) :- body(move_left(Y, X)).").
#bias("occurs(X, move_right(Y, X)) :- body(move_right(Y, X)).").
#bias("occurs(X, move_down(Y, X)) :- body(move_down(Y, X)).").


at_top(w(X,Y)):-
    position(X),
    size(Y).

at_bottom(w(X,1)):-
    position(X).

at_left(w(1,Y)):-
    position(Y).

at_right(w(X,Y)):-
    position(Y),
    size(X).

move_up(w(X,Y1),w(X,Y2)):-
    position(X),
    position(Y1),
    position(Y2),
    Y2 = Y1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    position(X1),
    position(X2),
    position(Y),
    X2 = X1 - 1.

move_right(w(X1,Y),w(X2,Y)):-
    position(X1),
    position(X2),
    position(Y),
    X2 = X1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    position(X),
    position(Y1),
    position(Y2),
    Y2 = Y1 - 1.