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

#pos(p1, {f(w(4,18),w(4,30)),f(w(22,18),w(22,30)),f(w(26,15),w(26,30)),f(w(10,14),w(10,30)),f(w(3,12),w(3,30)),f(w(24,12),w(24,30)),f(w(24,28),w(24,30)),f(w(8,7),w(8,30)),f(w(22,27),w(22,30)),f(w(25,11),w(25,30)),f(w(5,25),w(5,30)),f(w(19,11),w(19,30)),f(w(7,3),w(7,30)),f(w(24,14),w(24,30)),f(w(29,19),w(29,30)),f(w(27,16),w(27,30)),f(w(26,16),w(26,30)),f(w(10,18),w(10,30)),f(w(22,9),w(22,30)),f(w(3,28),w(3,30)),f(w(22,28),w(22,30)),f(w(1,22),w(1,30)),f(w(1,24),w(1,30)),f(w(3,3),w(3,30)),f(w(9,23),w(9,30)),f(w(22,11),w(22,30)),f(w(10,10),w(10,30)),f(w(27,2),w(27,30)),f(w(23,21),w(23,30)),f(w(24,14),w(24,30)),f(w(18,11),w(18,30)),f(w(23,17),w(23,30)),f(w(28,19),w(28,30)),f(w(17,16),w(17,30)),f(w(14,26),w(14,30)),f(w(10,28),w(10,30)),f(w(14,10),w(14,30)),f(w(7,15),w(7,30)),f(w(19,11),w(19,30)),f(w(15,20),w(15,30)),f(w(2,16),w(2,30)),f(w(28,24),w(28,30)),f(w(14,5),w(14,30)),f(w(4,17),w(4,30)),f(w(8,10),w(8,30)),f(w(14,7),w(14,30)),f(w(27,18),w(27,30)),f(w(9,3),w(9,30)),f(w(29,2),w(29,30)),f(w(6,1),w(6,30))}, {f(w(14,20),w(30,20)),f(w(25,29),w(16,30)),f(w(28,18),w(22,16)),f(w(26,30),w(29,8)),f(w(3,6),w(28,30)),f(w(6,3),w(23,22)),f(w(1,21),w(12,3)),f(w(16,4),w(16,18)),f(w(30,9),w(4,29)),f(w(18,2),w(2,30)),f(w(15,9),w(17,9)),f(w(13,26),w(30,14)),f(w(16,14),w(7,4)),f(w(3,22),w(29,24)),f(w(5,11),w(5,16)),f(w(4,11),w(24,30)),f(w(13,26),w(1,16)),f(w(7,24),w(23,18)),f(w(23,30),w(16,30)),f(w(18,18),w(17,30)),f(w(19,15),w(23,30)),f(w(30,10),w(30,29)),f(w(17,13),w(13,30)),f(w(13,20),w(16,30)),f(w(1,14),w(22,27)),f(w(16,13),w(13,30)),f(w(27,18),w(16,12)),f(w(11,12),w(6,26)),f(w(21,8),w(23,1)),f(w(6,14),w(11,30)),f(w(6,6),w(24,7)),f(w(18,8),w(2,30)),f(w(12,21),w(9,2)),f(w(16,22),w(23,9)),f(w(12,29),w(10,25)),f(w(10,27),w(25,29)),f(w(27,9),w(26,4)),f(w(8,8),w(11,27)),f(w(23,18),w(18,25)),f(w(23,19),w(3,9)),f(w(25,24),w(30,27)),f(w(1,15),w(28,20)),f(w(14,17),w(30,30)),f(w(3,8),w(17,26)),f(w(28,7),w(11,30)),f(w(13,1),w(19,23)),f(w(15,21),w(7,20)),f(w(19,6),w(16,15)),f(w(15,12),w(17,30)),f(w(2,12),w(25,10))}).
