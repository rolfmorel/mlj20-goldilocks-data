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

#pos(p1, {f(w(22,17),w(22,30)),f(w(26,26),w(26,30)),f(w(6,27),w(6,30)),f(w(30,24),w(30,30)),f(w(23,28),w(23,30)),f(w(1,27),w(1,30)),f(w(28,5),w(28,30)),f(w(1,10),w(1,30)),f(w(23,15),w(23,30)),f(w(29,19),w(29,30)),f(w(11,17),w(11,30)),f(w(27,13),w(27,30)),f(w(19,14),w(19,30)),f(w(25,3),w(25,30)),f(w(7,27),w(7,30)),f(w(26,4),w(26,30)),f(w(11,29),w(11,30)),f(w(1,10),w(1,30)),f(w(6,10),w(6,30)),f(w(17,13),w(17,30)),f(w(12,25),w(12,30)),f(w(14,24),w(14,30)),f(w(23,19),w(23,30)),f(w(1,23),w(1,30)),f(w(8,4),w(8,30)),f(w(3,25),w(3,30)),f(w(15,25),w(15,30)),f(w(23,5),w(23,30)),f(w(8,22),w(8,30)),f(w(30,7),w(30,30)),f(w(2,8),w(2,30)),f(w(16,13),w(16,30)),f(w(24,9),w(24,30)),f(w(11,7),w(11,30)),f(w(21,5),w(21,30)),f(w(16,17),w(16,30)),f(w(5,26),w(5,30)),f(w(12,21),w(12,30)),f(w(2,25),w(2,30)),f(w(19,25),w(19,30)),f(w(5,7),w(5,30)),f(w(13,26),w(13,30)),f(w(3,14),w(3,30)),f(w(21,25),w(21,30)),f(w(26,17),w(26,30)),f(w(17,14),w(17,30)),f(w(23,13),w(23,30)),f(w(2,27),w(2,30)),f(w(6,23),w(6,30)),f(w(24,20),w(24,30)),f(w(27,2),w(27,30)),f(w(8,20),w(8,30)),f(w(30,14),w(30,30)),f(w(22,5),w(22,30)),f(w(9,2),w(9,30)),f(w(8,3),w(8,30)),f(w(3,13),w(3,30)),f(w(3,3),w(3,30)),f(w(5,26),w(5,30)),f(w(10,9),w(10,30)),f(w(9,20),w(9,30)),f(w(15,18),w(15,30)),f(w(26,11),w(26,30)),f(w(30,29),w(30,30)),f(w(2,26),w(2,30)),f(w(16,2),w(16,30)),f(w(2,6),w(2,30)),f(w(18,19),w(18,30)),f(w(9,16),w(9,30)),f(w(20,8),w(20,30)),f(w(9,29),w(9,30)),f(w(16,21),w(16,30)),f(w(11,12),w(11,30)),f(w(13,14),w(13,30)),f(w(19,4),w(19,30)),f(w(4,2),w(4,30)),f(w(17,29),w(17,30)),f(w(30,6),w(30,30)),f(w(11,21),w(11,30)),f(w(20,27),w(20,30)),f(w(17,6),w(17,30)),f(w(7,26),w(7,30)),f(w(17,23),w(17,30)),f(w(10,13),w(10,30)),f(w(20,1),w(20,30)),f(w(29,28),w(29,30)),f(w(23,4),w(23,30)),f(w(20,4),w(20,30)),f(w(5,22),w(5,30)),f(w(28,14),w(28,30)),f(w(16,4),w(16,30)),f(w(2,12),w(2,30)),f(w(23,7),w(23,30)),f(w(11,2),w(11,30)),f(w(10,11),w(10,30)),f(w(10,29),w(10,30)),f(w(10,20),w(10,30)),f(w(27,29),w(27,30)),f(w(6,22),w(6,30)),f(w(4,29),w(4,30))}, {f(w(26,1),w(28,19)),f(w(30,26),w(12,17)),f(w(28,11),w(3,30)),f(w(16,29),w(21,22)),f(w(13,12),w(22,25)),f(w(10,15),w(17,24)),f(w(4,24),w(11,30)),f(w(20,4),w(21,9)),f(w(26,23),w(8,25)),f(w(15,9),w(13,30)),f(w(22,11),w(20,30)),f(w(19,10),w(6,6)),f(w(1,21),w(15,25)),f(w(12,9),w(19,7)),f(w(30,12),w(16,15)),f(w(4,12),w(3,19)),f(w(10,18),w(4,30)),f(w(10,11),w(20,15)),f(w(20,21),w(24,8)),f(w(19,23),w(10,12)),f(w(15,27),w(30,20)),f(w(30,13),w(18,28)),f(w(18,25),w(13,30)),f(w(23,8),w(14,14)),f(w(1,26),w(13,28)),f(w(9,5),w(6,5)),f(w(8,28),w(21,30)),f(w(17,8),w(21,30)),f(w(10,3),w(1,30)),f(w(16,21),w(11,7)),f(w(5,5),w(26,20)),f(w(9,30),w(22,30)),f(w(8,29),w(10,28)),f(w(1,7),w(16,14)),f(w(24,11),w(5,26)),f(w(4,18),w(23,30)),f(w(16,2),w(5,30)),f(w(7,19),w(18,30)),f(w(10,4),w(4,30)),f(w(1,25),w(16,30)),f(w(2,9),w(20,22)),f(w(2,7),w(5,21)),f(w(26,16),w(3,9)),f(w(10,5),w(11,19)),f(w(20,30),w(26,30)),f(w(13,6),w(10,30)),f(w(27,13),w(29,30)),f(w(21,10),w(1,25)),f(w(24,4),w(16,29)),f(w(11,2),w(17,20)),f(w(26,24),w(7,7)),f(w(27,1),w(15,27)),f(w(19,22),w(16,15)),f(w(27,18),w(24,30)),f(w(23,17),w(5,30)),f(w(17,9),w(1,17)),f(w(9,20),w(28,30)),f(w(6,20),w(17,28)),f(w(16,14),w(24,27)),f(w(10,8),w(1,3)),f(w(14,5),w(2,23)),f(w(26,2),w(13,27)),f(w(30,4),w(3,14)),f(w(27,4),w(5,27)),f(w(18,22),w(4,14)),f(w(24,26),w(15,13)),f(w(30,11),w(13,7)),f(w(13,16),w(15,30)),f(w(21,10),w(17,29)),f(w(9,11),w(2,8)),f(w(15,23),w(20,30)),f(w(24,7),w(21,14)),f(w(7,1),w(5,7)),f(w(19,11),w(30,2)),f(w(9,15),w(14,27)),f(w(13,5),w(5,20)),f(w(23,18),w(19,5)),f(w(22,27),w(14,26)),f(w(18,5),w(14,30)),f(w(8,7),w(24,9)),f(w(15,5),w(8,29)),f(w(1,22),w(6,19)),f(w(27,4),w(22,20)),f(w(2,22),w(14,30)),f(w(30,19),w(9,11)),f(w(19,20),w(23,12)),f(w(1,18),w(17,10)),f(w(30,12),w(21,30)),f(w(20,25),w(18,22)),f(w(6,17),w(11,18)),f(w(23,3),w(4,29)),f(w(13,4),w(24,30)),f(w(13,5),w(17,30)),f(w(27,7),w(17,9)),f(w(23,1),w(1,21)),f(w(2,25),w(22,8)),f(w(20,26),w(11,30)),f(w(19,23),w(30,10)),f(w(11,1),w(1,5)),f(w(20,17),w(20,15))}).
