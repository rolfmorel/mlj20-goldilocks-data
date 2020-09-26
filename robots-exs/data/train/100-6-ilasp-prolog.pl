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

#pos(p1, {f(w(1,6),w(1,30)),f(w(15,28),w(15,30)),f(w(15,12),w(15,30)),f(w(26,11),w(26,30)),f(w(7,29),w(7,30)),f(w(29,6),w(29,30)),f(w(6,13),w(6,30)),f(w(9,8),w(9,30)),f(w(15,19),w(15,30)),f(w(21,14),w(21,30)),f(w(15,12),w(15,30)),f(w(28,7),w(28,30)),f(w(25,11),w(25,30)),f(w(30,19),w(30,30)),f(w(17,17),w(17,30)),f(w(1,18),w(1,30)),f(w(27,27),w(27,30)),f(w(14,4),w(14,30)),f(w(1,23),w(1,30)),f(w(8,17),w(8,30)),f(w(2,2),w(2,30)),f(w(19,12),w(19,30)),f(w(14,26),w(14,30)),f(w(13,15),w(13,30)),f(w(6,19),w(6,30)),f(w(6,2),w(6,30)),f(w(24,19),w(24,30)),f(w(17,2),w(17,30)),f(w(14,5),w(14,30)),f(w(12,15),w(12,30)),f(w(15,3),w(15,30)),f(w(30,27),w(30,30)),f(w(10,12),w(10,30)),f(w(20,26),w(20,30)),f(w(5,8),w(5,30)),f(w(25,7),w(25,30)),f(w(9,6),w(9,30)),f(w(29,11),w(29,30)),f(w(19,24),w(19,30)),f(w(18,17),w(18,30)),f(w(15,11),w(15,30)),f(w(2,16),w(2,30)),f(w(11,17),w(11,30)),f(w(18,21),w(18,30)),f(w(5,26),w(5,30)),f(w(3,10),w(3,30)),f(w(6,19),w(6,30)),f(w(23,20),w(23,30)),f(w(27,22),w(27,30)),f(w(7,3),w(7,30)),f(w(12,17),w(12,30)),f(w(14,10),w(14,30)),f(w(18,27),w(18,30)),f(w(26,18),w(26,30)),f(w(19,13),w(19,30)),f(w(24,15),w(24,30)),f(w(7,15),w(7,30)),f(w(20,16),w(20,30)),f(w(11,2),w(11,30)),f(w(12,12),w(12,30)),f(w(23,4),w(23,30)),f(w(20,27),w(20,30)),f(w(1,28),w(1,30)),f(w(2,22),w(2,30)),f(w(27,24),w(27,30)),f(w(17,23),w(17,30)),f(w(6,3),w(6,30)),f(w(15,18),w(15,30)),f(w(12,29),w(12,30)),f(w(29,27),w(29,30)),f(w(11,25),w(11,30)),f(w(17,10),w(17,30)),f(w(27,14),w(27,30)),f(w(14,12),w(14,30)),f(w(28,13),w(28,30)),f(w(3,23),w(3,30)),f(w(2,25),w(2,30)),f(w(27,4),w(27,30)),f(w(20,29),w(20,30)),f(w(25,27),w(25,30)),f(w(2,15),w(2,30)),f(w(19,3),w(19,30)),f(w(15,25),w(15,30)),f(w(15,24),w(15,30)),f(w(14,7),w(14,30)),f(w(25,3),w(25,30)),f(w(1,18),w(1,30)),f(w(2,28),w(2,30)),f(w(1,17),w(1,30)),f(w(2,15),w(2,30)),f(w(10,2),w(10,30)),f(w(24,28),w(24,30)),f(w(8,13),w(8,30)),f(w(5,16),w(5,30)),f(w(18,26),w(18,30)),f(w(21,4),w(21,30)),f(w(6,17),w(6,30)),f(w(7,14),w(7,30)),f(w(2,8),w(2,30)),f(w(25,10),w(25,30))}, {f(w(15,28),w(15,11)),f(w(29,29),w(25,1)),f(w(5,7),w(7,8)),f(w(22,25),w(9,30)),f(w(30,19),w(16,15)),f(w(1,16),w(13,5)),f(w(4,9),w(5,12)),f(w(15,28),w(11,13)),f(w(14,27),w(6,1)),f(w(8,12),w(12,20)),f(w(18,21),w(28,30)),f(w(8,26),w(10,30)),f(w(12,12),w(30,7)),f(w(19,19),w(21,12)),f(w(24,21),w(7,7)),f(w(23,22),w(14,30)),f(w(21,19),w(11,30)),f(w(4,19),w(28,19)),f(w(27,2),w(14,4)),f(w(22,8),w(14,16)),f(w(13,21),w(30,30)),f(w(21,28),w(9,1)),f(w(15,17),w(5,19)),f(w(30,2),w(5,30)),f(w(29,12),w(29,22)),f(w(12,3),w(26,6)),f(w(23,10),w(5,22)),f(w(16,23),w(7,14)),f(w(16,7),w(10,25)),f(w(1,16),w(13,14)),f(w(15,17),w(14,30)),f(w(10,24),w(4,13)),f(w(9,10),w(5,9)),f(w(8,26),w(29,19)),f(w(20,7),w(2,30)),f(w(11,26),w(27,30)),f(w(27,22),w(5,9)),f(w(27,15),w(25,20)),f(w(26,17),w(27,1)),f(w(21,19),w(12,18)),f(w(18,29),w(24,23)),f(w(28,7),w(30,7)),f(w(26,14),w(22,29)),f(w(10,19),w(30,19)),f(w(18,18),w(26,30)),f(w(1,19),w(25,16)),f(w(5,6),w(8,30)),f(w(6,30),w(20,3)),f(w(25,2),w(23,27)),f(w(8,29),w(2,21)),f(w(10,16),w(14,16)),f(w(29,7),w(3,20)),f(w(11,17),w(9,1)),f(w(6,19),w(12,30)),f(w(27,4),w(5,10)),f(w(2,10),w(8,1)),f(w(28,30),w(20,30)),f(w(28,14),w(30,2)),f(w(22,12),w(5,29)),f(w(13,15),w(16,13)),f(w(26,12),w(19,26)),f(w(10,26),w(12,5)),f(w(2,25),w(11,30)),f(w(30,11),w(2,30)),f(w(26,28),w(2,7)),f(w(30,29),w(23,30)),f(w(5,21),w(7,30)),f(w(27,16),w(11,2)),f(w(9,16),w(21,18)),f(w(10,17),w(8,9)),f(w(30,28),w(4,9)),f(w(29,5),w(8,27)),f(w(24,11),w(3,27)),f(w(12,26),w(14,13)),f(w(1,14),w(10,29)),f(w(10,28),w(20,29)),f(w(4,13),w(11,22)),f(w(14,10),w(9,10)),f(w(24,23),w(19,23)),f(w(7,4),w(9,17)),f(w(29,3),w(28,30)),f(w(25,13),w(28,17)),f(w(28,26),w(3,30)),f(w(1,8),w(15,3)),f(w(16,5),w(5,15)),f(w(1,17),w(24,30)),f(w(15,30),w(3,26)),f(w(20,5),w(27,6)),f(w(21,9),w(20,30)),f(w(30,27),w(25,24)),f(w(23,1),w(21,30)),f(w(24,6),w(3,30)),f(w(22,4),w(25,30)),f(w(10,19),w(7,13)),f(w(24,7),w(24,15)),f(w(13,21),w(10,30)),f(w(14,9),w(23,30)),f(w(13,1),w(26,26)),f(w(23,25),w(16,30)),f(w(28,9),w(4,17))}).
