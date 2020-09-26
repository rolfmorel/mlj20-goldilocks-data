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

#pos(p1, {f(w(21,9),w(21,30)),f(w(20,4),w(20,30)),f(w(2,22),w(2,30)),f(w(18,24),w(18,30)),f(w(11,23),w(11,30)),f(w(12,18),w(12,30)),f(w(26,12),w(26,30)),f(w(17,6),w(17,30)),f(w(20,26),w(20,30)),f(w(27,13),w(27,30)),f(w(20,8),w(20,30)),f(w(23,11),w(23,30)),f(w(7,2),w(7,30)),f(w(9,12),w(9,30)),f(w(28,14),w(28,30)),f(w(2,24),w(2,30)),f(w(30,15),w(30,30)),f(w(3,11),w(3,30)),f(w(23,1),w(23,30)),f(w(19,26),w(19,30))}, {f(w(1,4),w(21,9)),f(w(21,13),w(30,3)),f(w(9,6),w(18,20)),f(w(3,4),w(24,17)),f(w(20,1),w(27,12)),f(w(5,12),w(28,25)),f(w(9,13),w(29,30)),f(w(29,4),w(23,26)),f(w(9,23),w(3,30)),f(w(8,14),w(15,1)),f(w(23,28),w(21,30)),f(w(24,29),w(19,30)),f(w(3,29),w(3,1)),f(w(18,1),w(22,9)),f(w(10,3),w(11,15)),f(w(15,13),w(17,10)),f(w(2,22),w(1,30)),f(w(15,4),w(22,30)),f(w(25,6),w(24,10)),f(w(3,28),w(4,20))}).