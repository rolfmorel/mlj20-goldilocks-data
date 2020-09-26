size(30).
position(1..30).
#maxv(3).
#modeh(f(var(state),var(state)), (positive)).
#modeb(3,move_up(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_down(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_left(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,move_right(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,f(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(3,at_top(var(state)), (positive)).
#modeb(3,at_bottom(var(state)), (positive)).
#modeb(3,at_left(var(state)), (positive)).
#modeb(3,at_right(var(state)), (positive)).


#bias(":- occurs(V, X), #false : occurs(V, Y), Y != X.").
#bias("occurs(X, f(X, Y)) :- head(f(X, Y)).").
#bias("occurs(X, f(Y, X)) :- head(f(Y, X)).").
#bias("occurs(X, f(X, Y)) :- body(f(X, Y)).").
#bias("occurs(X, f(Y, X)) :- body(f(Y, X)).").
#bias("occurs(X, at_top(X)) :- body(at_top(X)).").
#bias("occurs(X, at_bottom(X)) :- body(at_bottom(X)).").
#bias("occurs(X, at_left(X)) :- body(at_left(X)).").
#bias("occurs(X, at_right(X)) :- body(at_right(X)).").
#bias("occurs(X, move_up(X, Y)) :- body(move_up(X, Y)).").
#bias("occurs(X, move_left(X, Y)) :- body(move_left(X, Y)).").
#bias("occurs(X, move_right(X, Y)) :- body(move_right(X, Y)).").
#bias("occurs(X, move_down(X, Y)) :- body(move_down(X, Y)).").
#bias("occurs(X, move_up(Y, X)) :- body(move_up(Y, X)).").
#bias("occurs(X, move_left(Y, X)) :- body(move_left(Y, X)).").
#bias("occurs(X, move_right(Y, X)) :- body(move_right(Y, X)).").
#bias("occurs(X, move_down(Y, X)) :- body(move_down(Y, X)).").
move_right(w(X1,Y),w(X2,Y)):-
    position(X1),
    position(X2),
    position(Y),
    X2 = X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    position(X1),
    position(X2),
    position(Y),
    X2 = X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
    position(X),
    position(Y1),
    position(Y2),
    Y2 = Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    position(X),
    position(Y1),
    position(Y2),
    Y2 = Y1 - 1.

at_left(w(1,Y)):-
    position(Y).
at_right(w(X,Y)):-
    size(X),
    position(Y).
at_top(w(X,Y)):-
    position(X),
    size(Y).
at_bottom(w(X,1)):-
    position(X).

#pos(p1, {f(w(22,8),w(22,30)),f(w(1,3),w(1,30)),f(w(28,20),w(28,30)),f(w(10,4),w(10,30)),f(w(10,12),w(10,30)),f(w(17,6),w(17,30)),f(w(8,21),w(8,30)),f(w(14,26),w(14,30)),f(w(22,29),w(22,30)),f(w(28,6),w(28,30)),f(w(2,8),w(2,30)),f(w(2,5),w(2,30)),f(w(28,19),w(28,30)),f(w(2,22),w(2,30)),f(w(11,29),w(11,30)),f(w(1,17),w(1,30)),f(w(19,1),w(19,30)),f(w(17,5),w(17,30)),f(w(2,9),w(2,30)),f(w(6,3),w(6,30))}, {f(w(3,16),w(18,6)),f(w(3,27),w(21,4)),f(w(22,16),w(24,30)),f(w(19,8),w(14,30)),f(w(14,1),w(19,30)),f(w(27,9),w(17,30)),f(w(19,30),w(19,20)),f(w(8,2),w(12,15)),f(w(25,9),w(7,30)),f(w(3,14),w(19,24)),f(w(5,12),w(28,30)),f(w(6,8),w(18,30)),f(w(16,1),w(28,25)),f(w(23,19),w(3,24)),f(w(21,13),w(6,30)),f(w(3,12),w(7,28)),f(w(25,3),w(1,26)),f(w(18,25),w(24,29)),f(w(14,29),w(8,10)),f(w(13,1),w(23,7))}).
