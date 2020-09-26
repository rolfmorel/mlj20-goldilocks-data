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

#pos(p1, {f(w(28,9),w(28,30)),f(w(10,22),w(10,30)),f(w(10,9),w(10,30)),f(w(12,20),w(12,30)),f(w(8,24),w(8,30)),f(w(26,11),w(26,30)),f(w(16,29),w(16,30)),f(w(19,18),w(19,30)),f(w(9,5),w(9,30)),f(w(26,9),w(26,30)),f(w(2,5),w(2,30)),f(w(26,20),w(26,30)),f(w(13,22),w(13,30)),f(w(9,8),w(9,30)),f(w(19,12),w(19,30)),f(w(8,22),w(8,30)),f(w(10,13),w(10,30)),f(w(21,7),w(21,30)),f(w(30,28),w(30,30)),f(w(2,17),w(2,30)),f(w(1,3),w(1,30)),f(w(11,4),w(11,30)),f(w(29,29),w(29,30)),f(w(25,24),w(25,30)),f(w(16,22),w(16,30)),f(w(8,4),w(8,30)),f(w(16,21),w(16,30)),f(w(14,29),w(14,30)),f(w(10,22),w(10,30)),f(w(21,17),w(21,30)),f(w(2,16),w(2,30)),f(w(4,17),w(4,30)),f(w(5,10),w(5,30)),f(w(12,1),w(12,30)),f(w(1,4),w(1,30)),f(w(9,2),w(9,30)),f(w(24,11),w(24,30)),f(w(5,27),w(5,30)),f(w(19,3),w(19,30)),f(w(25,9),w(25,30)),f(w(22,11),w(22,30)),f(w(18,22),w(18,30)),f(w(18,24),w(18,30)),f(w(24,20),w(24,30)),f(w(10,29),w(10,30)),f(w(17,7),w(17,30)),f(w(3,6),w(3,30)),f(w(2,16),w(2,30)),f(w(16,6),w(16,30)),f(w(29,2),w(29,30))}, {f(w(22,22),w(25,30)),f(w(24,26),w(25,30)),f(w(15,7),w(4,25)),f(w(24,25),w(20,13)),f(w(21,9),w(24,30)),f(w(22,24),w(7,30)),f(w(1,27),w(18,30)),f(w(19,9),w(7,27)),f(w(18,14),w(4,9)),f(w(11,19),w(26,6)),f(w(3,17),w(11,30)),f(w(28,6),w(20,30)),f(w(26,3),w(16,30)),f(w(22,2),w(16,20)),f(w(13,13),w(20,18)),f(w(16,12),w(6,28)),f(w(23,24),w(13,24)),f(w(26,18),w(20,30)),f(w(18,27),w(7,30)),f(w(2,4),w(26,22)),f(w(4,14),w(27,2)),f(w(26,12),w(2,3)),f(w(19,30),w(22,30)),f(w(4,24),w(30,5)),f(w(18,12),w(16,15)),f(w(25,5),w(16,12)),f(w(10,6),w(8,9)),f(w(7,14),w(25,23)),f(w(21,16),w(13,13)),f(w(4,2),w(16,5)),f(w(9,17),w(10,22)),f(w(5,24),w(30,25)),f(w(3,3),w(22,17)),f(w(22,3),w(6,10)),f(w(3,27),w(25,30)),f(w(27,7),w(15,3)),f(w(17,10),w(30,22)),f(w(25,29),w(20,22)),f(w(20,20),w(9,15)),f(w(12,6),w(27,23)),f(w(4,5),w(12,30)),f(w(8,12),w(23,30)),f(w(2,10),w(28,30)),f(w(7,14),w(7,19)),f(w(28,23),w(2,30)),f(w(10,2),w(5,4)),f(w(11,22),w(4,29)),f(w(16,13),w(15,30)),f(w(4,25),w(15,19)),f(w(20,26),w(16,19))}).
