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

#pos(p1, {f(w(21,23),w(21,30)),f(w(6,5),w(6,30)),f(w(21,17),w(21,30)),f(w(16,23),w(16,30)),f(w(28,7),w(28,30)),f(w(16,3),w(16,30)),f(w(22,11),w(22,30)),f(w(30,12),w(30,30)),f(w(3,9),w(3,30)),f(w(21,26),w(21,30)),f(w(8,16),w(8,30)),f(w(14,23),w(14,30)),f(w(30,15),w(30,30)),f(w(23,21),w(23,30)),f(w(5,16),w(5,30)),f(w(6,11),w(6,30)),f(w(3,22),w(3,30)),f(w(25,12),w(25,30)),f(w(26,25),w(26,30)),f(w(17,27),w(17,30))}, {f(w(9,17),w(30,27)),f(w(24,24),w(17,30)),f(w(19,8),w(20,1)),f(w(14,26),w(3,7)),f(w(14,28),w(16,30)),f(w(3,15),w(12,5)),f(w(19,5),w(30,28)),f(w(6,28),w(24,22)),f(w(11,22),w(3,23)),f(w(5,18),w(6,25)),f(w(19,22),w(11,30)),f(w(1,23),w(1,24)),f(w(21,20),w(18,30)),f(w(27,9),w(29,1)),f(w(7,25),w(9,22)),f(w(14,16),w(16,30)),f(w(24,8),w(3,29)),f(w(16,27),w(24,25)),f(w(14,28),w(6,30)),f(w(28,27),w(12,23))}).
