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

#pos(p1, {f(w(4,16),w(4,30)),f(w(16,18),w(16,30)),f(w(7,28),w(7,30)),f(w(10,17),w(10,30)),f(w(25,8),w(25,30)),f(w(30,13),w(30,30)),f(w(28,9),w(28,30)),f(w(13,6),w(13,30)),f(w(9,5),w(9,30)),f(w(25,22),w(25,30)),f(w(15,10),w(15,30)),f(w(22,2),w(22,30)),f(w(13,29),w(13,30)),f(w(29,5),w(29,30)),f(w(28,29),w(28,30)),f(w(28,16),w(28,30)),f(w(2,11),w(2,30)),f(w(24,27),w(24,30)),f(w(28,3),w(28,30)),f(w(16,10),w(16,30)),f(w(12,8),w(12,30)),f(w(29,7),w(29,30)),f(w(16,2),w(16,30)),f(w(28,6),w(28,30)),f(w(17,2),w(17,30)),f(w(7,28),w(7,30)),f(w(13,19),w(13,30)),f(w(6,19),w(6,30)),f(w(30,26),w(30,30)),f(w(18,29),w(18,30)),f(w(26,16),w(26,30)),f(w(27,25),w(27,30)),f(w(15,18),w(15,30)),f(w(3,3),w(3,30)),f(w(25,27),w(25,30)),f(w(6,9),w(6,30)),f(w(10,10),w(10,30)),f(w(16,29),w(16,30)),f(w(5,25),w(5,30)),f(w(21,19),w(21,30)),f(w(17,28),w(17,30)),f(w(29,12),w(29,30)),f(w(1,17),w(1,30)),f(w(30,9),w(30,30)),f(w(13,18),w(13,30)),f(w(10,25),w(10,30)),f(w(22,22),w(22,30)),f(w(8,3),w(8,30)),f(w(19,11),w(19,30)),f(w(5,10),w(5,30)),f(w(30,16),w(30,30)),f(w(21,22),w(21,30)),f(w(23,6),w(23,30)),f(w(2,24),w(2,30)),f(w(1,1),w(1,30)),f(w(25,23),w(25,30)),f(w(1,23),w(1,30)),f(w(30,24),w(30,30)),f(w(20,16),w(20,30)),f(w(20,2),w(20,30)),f(w(4,2),w(4,30)),f(w(22,29),w(22,30)),f(w(8,24),w(8,30)),f(w(5,22),w(5,30)),f(w(18,1),w(18,30)),f(w(16,16),w(16,30)),f(w(10,13),w(10,30)),f(w(22,28),w(22,30)),f(w(27,29),w(27,30)),f(w(25,8),w(25,30)),f(w(2,5),w(2,30)),f(w(22,14),w(22,30)),f(w(24,12),w(24,30)),f(w(24,9),w(24,30)),f(w(17,3),w(17,30)),f(w(9,26),w(9,30)),f(w(21,20),w(21,30)),f(w(26,12),w(26,30)),f(w(6,17),w(6,30)),f(w(8,15),w(8,30)),f(w(16,14),w(16,30)),f(w(30,4),w(30,30)),f(w(26,1),w(26,30)),f(w(11,12),w(11,30)),f(w(23,4),w(23,30)),f(w(10,12),w(10,30)),f(w(18,7),w(18,30)),f(w(3,22),w(3,30)),f(w(14,28),w(14,30)),f(w(14,8),w(14,30)),f(w(5,5),w(5,30)),f(w(16,21),w(16,30)),f(w(4,29),w(4,30)),f(w(7,7),w(7,30)),f(w(25,28),w(25,30)),f(w(8,22),w(8,30)),f(w(18,19),w(18,30)),f(w(15,16),w(15,30)),f(w(6,6),w(6,30)),f(w(24,4),w(24,30))}, {f(w(1,1),w(7,30)),f(w(17,4),w(9,2)),f(w(1,16),w(8,28)),f(w(5,10),w(25,4)),f(w(10,30),w(12,30)),f(w(19,21),w(24,18)),f(w(27,24),w(22,30)),f(w(6,10),w(26,30)),f(w(21,3),w(21,11)),f(w(11,15),w(9,3)),f(w(13,5),w(29,2)),f(w(5,23),w(4,17)),f(w(5,19),w(12,30)),f(w(29,8),w(10,19)),f(w(8,17),w(27,9)),f(w(27,22),w(22,4)),f(w(26,8),w(13,16)),f(w(25,28),w(24,3)),f(w(5,28),w(2,23)),f(w(16,18),w(8,21)),f(w(28,12),w(3,30)),f(w(7,11),w(8,25)),f(w(7,24),w(4,28)),f(w(27,7),w(27,17)),f(w(17,5),w(12,1)),f(w(14,1),w(22,30)),f(w(12,6),w(27,13)),f(w(16,9),w(3,26)),f(w(9,29),w(9,1)),f(w(26,20),w(6,30)),f(w(23,11),w(25,23)),f(w(19,3),w(17,9)),f(w(4,11),w(2,20)),f(w(15,6),w(19,30)),f(w(15,3),w(20,29)),f(w(11,19),w(12,30)),f(w(18,4),w(28,30)),f(w(2,5),w(6,30)),f(w(11,18),w(12,2)),f(w(24,6),w(23,18)),f(w(25,21),w(13,30)),f(w(3,4),w(5,4)),f(w(26,18),w(4,24)),f(w(2,20),w(17,20)),f(w(10,10),w(16,7)),f(w(13,12),w(6,2)),f(w(10,21),w(5,5)),f(w(24,17),w(27,30)),f(w(21,4),w(10,26)),f(w(13,24),w(11,12)),f(w(7,17),w(25,26)),f(w(4,1),w(13,3)),f(w(12,6),w(5,25)),f(w(14,20),w(22,28)),f(w(5,12),w(20,17)),f(w(6,22),w(9,24)),f(w(15,15),w(12,30)),f(w(10,3),w(1,1)),f(w(28,13),w(9,26)),f(w(16,17),w(26,9)),f(w(19,19),w(30,2)),f(w(6,8),w(4,30)),f(w(21,17),w(6,21)),f(w(14,29),w(13,29)),f(w(11,26),w(11,26)),f(w(14,10),w(27,30)),f(w(30,21),w(6,23)),f(w(23,20),w(12,30)),f(w(16,9),w(5,15)),f(w(9,16),w(19,30)),f(w(8,1),w(24,10)),f(w(1,11),w(15,24)),f(w(29,21),w(17,18)),f(w(24,29),w(25,30)),f(w(1,16),w(16,30)),f(w(26,22),w(22,20)),f(w(19,26),w(18,14)),f(w(28,23),w(3,30)),f(w(12,28),w(1,30)),f(w(9,6),w(20,30)),f(w(12,1),w(10,18)),f(w(20,22),w(15,24)),f(w(13,21),w(16,3)),f(w(2,22),w(22,30)),f(w(24,5),w(9,15)),f(w(27,28),w(29,9)),f(w(8,6),w(14,12)),f(w(23,27),w(28,30)),f(w(11,28),w(19,3)),f(w(21,24),w(1,1)),f(w(24,25),w(28,30)),f(w(3,23),w(5,29)),f(w(17,15),w(10,29)),f(w(11,9),w(9,30)),f(w(17,7),w(27,13)),f(w(30,24),w(18,30)),f(w(13,20),w(30,23)),f(w(28,21),w(26,1)),f(w(1,23),w(4,5)),f(w(16,6),w(10,13))}).
