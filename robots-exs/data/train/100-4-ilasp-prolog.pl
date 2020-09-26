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

#pos(p1, {f(w(21,4),w(21,30)),f(w(12,9),w(12,30)),f(w(23,18),w(23,30)),f(w(21,18),w(21,30)),f(w(29,11),w(29,30)),f(w(21,5),w(21,30)),f(w(12,4),w(12,30)),f(w(23,3),w(23,30)),f(w(4,13),w(4,30)),f(w(17,17),w(17,30)),f(w(6,8),w(6,30)),f(w(18,29),w(18,30)),f(w(12,21),w(12,30)),f(w(7,2),w(7,30)),f(w(20,16),w(20,30)),f(w(25,1),w(25,30)),f(w(19,29),w(19,30)),f(w(18,25),w(18,30)),f(w(27,29),w(27,30)),f(w(28,13),w(28,30)),f(w(3,27),w(3,30)),f(w(14,1),w(14,30)),f(w(4,24),w(4,30)),f(w(23,4),w(23,30)),f(w(26,17),w(26,30)),f(w(11,22),w(11,30)),f(w(28,5),w(28,30)),f(w(22,22),w(22,30)),f(w(6,20),w(6,30)),f(w(1,6),w(1,30)),f(w(1,25),w(1,30)),f(w(20,6),w(20,30)),f(w(2,24),w(2,30)),f(w(30,4),w(30,30)),f(w(15,29),w(15,30)),f(w(13,2),w(13,30)),f(w(24,13),w(24,30)),f(w(19,14),w(19,30)),f(w(19,15),w(19,30)),f(w(22,4),w(22,30)),f(w(16,29),w(16,30)),f(w(5,1),w(5,30)),f(w(19,20),w(19,30)),f(w(27,5),w(27,30)),f(w(13,15),w(13,30)),f(w(28,26),w(28,30)),f(w(30,8),w(30,30)),f(w(2,28),w(2,30)),f(w(2,2),w(2,30)),f(w(30,8),w(30,30)),f(w(23,13),w(23,30)),f(w(25,12),w(25,30)),f(w(29,14),w(29,30)),f(w(13,26),w(13,30)),f(w(1,25),w(1,30)),f(w(1,10),w(1,30)),f(w(27,25),w(27,30)),f(w(3,15),w(3,30)),f(w(3,10),w(3,30)),f(w(19,24),w(19,30)),f(w(24,13),w(24,30)),f(w(26,4),w(26,30)),f(w(13,20),w(13,30)),f(w(12,28),w(12,30)),f(w(22,14),w(22,30)),f(w(23,6),w(23,30)),f(w(16,24),w(16,30)),f(w(26,28),w(26,30)),f(w(6,25),w(6,30)),f(w(18,14),w(18,30)),f(w(23,13),w(23,30)),f(w(29,12),w(29,30)),f(w(20,5),w(20,30)),f(w(14,29),w(14,30)),f(w(16,29),w(16,30)),f(w(16,24),w(16,30)),f(w(28,20),w(28,30)),f(w(19,11),w(19,30)),f(w(8,5),w(8,30)),f(w(24,19),w(24,30)),f(w(30,19),w(30,30)),f(w(22,14),w(22,30)),f(w(10,6),w(10,30)),f(w(18,2),w(18,30)),f(w(9,19),w(9,30)),f(w(28,28),w(28,30)),f(w(17,22),w(17,30)),f(w(11,26),w(11,30)),f(w(15,21),w(15,30)),f(w(21,29),w(21,30)),f(w(28,16),w(28,30)),f(w(2,6),w(2,30)),f(w(30,9),w(30,30)),f(w(4,24),w(4,30)),f(w(25,11),w(25,30)),f(w(26,25),w(26,30)),f(w(25,22),w(25,30)),f(w(20,5),w(20,30)),f(w(20,11),w(20,30)),f(w(20,15),w(20,30))}, {f(w(30,7),w(4,24)),f(w(20,21),w(12,22)),f(w(27,12),w(22,30)),f(w(22,14),w(2,15)),f(w(21,20),w(2,5)),f(w(11,13),w(1,12)),f(w(2,26),w(11,30)),f(w(21,10),w(29,18)),f(w(6,30),w(11,30)),f(w(8,10),w(29,3)),f(w(27,24),w(25,27)),f(w(20,2),w(7,30)),f(w(4,29),w(12,7)),f(w(11,25),w(2,2)),f(w(9,3),w(25,6)),f(w(30,15),w(9,30)),f(w(6,21),w(10,30)),f(w(15,29),w(21,30)),f(w(17,20),w(10,20)),f(w(7,24),w(17,12)),f(w(27,18),w(24,1)),f(w(28,11),w(10,26)),f(w(5,6),w(24,11)),f(w(25,21),w(13,28)),f(w(23,4),w(25,30)),f(w(6,5),w(18,7)),f(w(15,28),w(11,30)),f(w(7,9),w(12,5)),f(w(9,26),w(20,10)),f(w(25,10),w(23,30)),f(w(22,11),w(23,30)),f(w(28,13),w(7,20)),f(w(2,17),w(28,4)),f(w(16,21),w(25,10)),f(w(11,8),w(6,30)),f(w(10,6),w(8,7)),f(w(1,1),w(12,7)),f(w(1,16),w(11,30)),f(w(28,5),w(20,30)),f(w(2,28),w(16,26)),f(w(2,30),w(14,30)),f(w(13,4),w(28,30)),f(w(7,17),w(17,30)),f(w(15,8),w(6,3)),f(w(19,27),w(3,2)),f(w(23,15),w(28,17)),f(w(3,15),w(14,24)),f(w(22,4),w(15,30)),f(w(19,21),w(24,12)),f(w(26,15),w(13,30)),f(w(26,25),w(20,30)),f(w(19,10),w(8,30)),f(w(30,24),w(20,8)),f(w(4,4),w(13,15)),f(w(23,28),w(12,22)),f(w(17,23),w(30,7)),f(w(28,10),w(19,9)),f(w(14,19),w(17,30)),f(w(30,27),w(2,30)),f(w(22,20),w(29,30)),f(w(15,13),w(26,30)),f(w(4,12),w(8,24)),f(w(16,11),w(9,30)),f(w(4,3),w(14,1)),f(w(20,13),w(1,18)),f(w(3,11),w(19,15)),f(w(27,16),w(14,9)),f(w(19,29),w(4,2)),f(w(25,10),w(8,29)),f(w(3,26),w(18,2)),f(w(23,16),w(27,26)),f(w(20,28),w(8,16)),f(w(23,19),w(18,14)),f(w(2,23),w(14,30)),f(w(26,19),w(1,30)),f(w(5,7),w(6,4)),f(w(21,22),w(20,5)),f(w(18,28),w(21,8)),f(w(16,16),w(5,30)),f(w(4,14),w(8,23)),f(w(24,23),w(28,24)),f(w(26,9),w(14,30)),f(w(13,11),w(11,22)),f(w(7,6),w(12,17)),f(w(27,3),w(11,30)),f(w(1,30),w(1,24)),f(w(12,7),w(15,19)),f(w(26,30),w(8,16)),f(w(23,8),w(3,28)),f(w(1,29),w(24,30)),f(w(19,11),w(21,5)),f(w(2,4),w(10,30)),f(w(23,21),w(5,30)),f(w(4,6),w(24,3)),f(w(24,17),w(19,28)),f(w(12,7),w(28,25)),f(w(1,16),w(21,21)),f(w(8,18),w(2,3)),f(w(19,11),w(1,30)),f(w(29,3),w(5,14))}).
