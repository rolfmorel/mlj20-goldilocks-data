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

#pos(p1, {f(w(5,29),w(5,30)),f(w(26,26),w(26,30)),f(w(21,25),w(21,30)),f(w(16,23),w(16,30)),f(w(1,19),w(1,30)),f(w(9,4),w(9,30)),f(w(4,29),w(4,30)),f(w(21,29),w(21,30)),f(w(1,12),w(1,30)),f(w(10,26),w(10,30)),f(w(27,29),w(27,30)),f(w(23,1),w(23,30)),f(w(24,15),w(24,30)),f(w(15,23),w(15,30)),f(w(3,16),w(3,30)),f(w(3,4),w(3,30)),f(w(25,14),w(25,30)),f(w(9,27),w(9,30)),f(w(19,10),w(19,30)),f(w(4,29),w(4,30)),f(w(10,15),w(10,30)),f(w(9,23),w(9,30)),f(w(6,6),w(6,30)),f(w(8,24),w(8,30)),f(w(4,1),w(4,30)),f(w(30,16),w(30,30)),f(w(26,22),w(26,30)),f(w(11,27),w(11,30)),f(w(29,3),w(29,30)),f(w(28,4),w(28,30)),f(w(4,1),w(4,30)),f(w(21,2),w(21,30)),f(w(11,26),w(11,30)),f(w(6,12),w(6,30)),f(w(20,14),w(20,30)),f(w(23,26),w(23,30)),f(w(26,29),w(26,30)),f(w(6,16),w(6,30)),f(w(4,14),w(4,30)),f(w(9,24),w(9,30)),f(w(25,20),w(25,30)),f(w(8,17),w(8,30)),f(w(1,22),w(1,30)),f(w(4,9),w(4,30)),f(w(7,27),w(7,30)),f(w(30,5),w(30,30)),f(w(21,23),w(21,30)),f(w(19,16),w(19,30)),f(w(29,2),w(29,30)),f(w(5,4),w(5,30)),f(w(15,3),w(15,30)),f(w(3,24),w(3,30)),f(w(13,1),w(13,30)),f(w(26,24),w(26,30)),f(w(25,1),w(25,30)),f(w(28,9),w(28,30)),f(w(27,10),w(27,30)),f(w(19,1),w(19,30)),f(w(9,24),w(9,30)),f(w(21,7),w(21,30)),f(w(12,24),w(12,30)),f(w(8,26),w(8,30)),f(w(22,3),w(22,30)),f(w(25,28),w(25,30)),f(w(20,21),w(20,30)),f(w(18,18),w(18,30)),f(w(13,11),w(13,30)),f(w(11,10),w(11,30)),f(w(17,9),w(17,30)),f(w(16,29),w(16,30)),f(w(26,14),w(26,30)),f(w(19,16),w(19,30)),f(w(23,29),w(23,30)),f(w(5,1),w(5,30)),f(w(11,24),w(11,30)),f(w(16,28),w(16,30)),f(w(12,12),w(12,30)),f(w(2,6),w(2,30)),f(w(30,14),w(30,30)),f(w(10,19),w(10,30)),f(w(4,24),w(4,30)),f(w(27,20),w(27,30)),f(w(20,3),w(20,30)),f(w(21,1),w(21,30)),f(w(19,20),w(19,30)),f(w(14,18),w(14,30)),f(w(27,22),w(27,30)),f(w(25,20),w(25,30)),f(w(26,14),w(26,30)),f(w(16,7),w(16,30)),f(w(14,5),w(14,30)),f(w(15,15),w(15,30)),f(w(13,26),w(13,30)),f(w(24,18),w(24,30)),f(w(2,9),w(2,30)),f(w(29,28),w(29,30)),f(w(14,4),w(14,30)),f(w(15,14),w(15,30)),f(w(11,3),w(11,30)),f(w(1,26),w(1,30))}, {f(w(28,9),w(26,11)),f(w(1,23),w(25,15)),f(w(29,26),w(6,18)),f(w(8,9),w(15,30)),f(w(20,8),w(7,1)),f(w(5,4),w(19,20)),f(w(12,22),w(3,17)),f(w(6,16),w(7,6)),f(w(30,27),w(20,1)),f(w(30,14),w(3,8)),f(w(7,6),w(15,30)),f(w(16,27),w(15,13)),f(w(29,10),w(10,9)),f(w(18,2),w(8,30)),f(w(27,3),w(5,6)),f(w(25,11),w(9,14)),f(w(22,8),w(9,14)),f(w(6,23),w(7,20)),f(w(1,17),w(5,30)),f(w(10,24),w(28,2)),f(w(18,1),w(17,17)),f(w(28,21),w(12,30)),f(w(10,10),w(30,2)),f(w(5,15),w(2,4)),f(w(18,18),w(5,23)),f(w(22,2),w(16,10)),f(w(10,9),w(4,16)),f(w(29,13),w(8,30)),f(w(4,30),w(1,30)),f(w(15,20),w(3,23)),f(w(2,3),w(11,9)),f(w(29,21),w(27,30)),f(w(29,6),w(15,30)),f(w(3,9),w(11,26)),f(w(13,1),w(25,1)),f(w(17,3),w(9,19)),f(w(16,1),w(4,22)),f(w(5,21),w(11,30)),f(w(19,21),w(26,30)),f(w(24,15),w(24,8)),f(w(18,19),w(9,8)),f(w(28,5),w(9,19)),f(w(26,23),w(24,30)),f(w(12,7),w(1,16)),f(w(21,26),w(23,16)),f(w(12,26),w(1,30)),f(w(18,22),w(29,21)),f(w(16,19),w(8,22)),f(w(12,28),w(9,28)),f(w(24,24),w(20,17)),f(w(9,26),w(5,25)),f(w(15,11),w(10,2)),f(w(21,18),w(11,30)),f(w(28,2),w(16,30)),f(w(27,3),w(3,30)),f(w(26,7),w(6,28)),f(w(20,30),w(26,10)),f(w(29,15),w(2,22)),f(w(27,8),w(13,4)),f(w(30,26),w(14,30)),f(w(16,1),w(9,28)),f(w(19,6),w(16,3)),f(w(12,13),w(24,8)),f(w(24,26),w(6,30)),f(w(23,15),w(30,30)),f(w(24,3),w(29,30)),f(w(21,12),w(23,25)),f(w(3,8),w(1,16)),f(w(20,9),w(22,11)),f(w(6,18),w(25,23)),f(w(29,29),w(24,20)),f(w(2,5),w(25,25)),f(w(27,5),w(18,27)),f(w(25,8),w(21,6)),f(w(19,10),w(28,30)),f(w(16,22),w(25,17)),f(w(2,12),w(28,9)),f(w(20,14),w(12,24)),f(w(21,27),w(6,18)),f(w(13,6),w(6,19)),f(w(12,22),w(15,24)),f(w(27,13),w(23,30)),f(w(5,22),w(6,23)),f(w(15,18),w(29,17)),f(w(14,7),w(1,8)),f(w(12,12),w(20,30)),f(w(30,24),w(12,30)),f(w(24,2),w(8,26)),f(w(8,6),w(6,20)),f(w(16,20),w(3,1)),f(w(17,9),w(25,6)),f(w(3,3),w(29,30)),f(w(27,10),w(26,30)),f(w(1,29),w(22,16)),f(w(5,19),w(13,2)),f(w(4,6),w(28,21)),f(w(10,12),w(18,30)),f(w(14,29),w(15,26)),f(w(26,5),w(23,30)),f(w(30,24),w(13,30))}).
