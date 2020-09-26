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

#pos(p1, {f(w(20,26),w(20,30)),f(w(20,17),w(20,30)),f(w(5,25),w(5,30)),f(w(9,2),w(9,30)),f(w(4,7),w(4,30)),f(w(18,12),w(18,30)),f(w(5,17),w(5,30)),f(w(26,18),w(26,30)),f(w(14,25),w(14,30)),f(w(6,29),w(6,30)),f(w(14,26),w(14,30)),f(w(20,9),w(20,30)),f(w(23,24),w(23,30)),f(w(25,12),w(25,30)),f(w(26,22),w(26,30)),f(w(20,17),w(20,30)),f(w(9,20),w(9,30)),f(w(22,22),w(22,30)),f(w(10,27),w(10,30)),f(w(14,3),w(14,30)),f(w(5,24),w(5,30)),f(w(9,21),w(9,30)),f(w(28,23),w(28,30)),f(w(23,20),w(23,30)),f(w(20,13),w(20,30)),f(w(26,24),w(26,30)),f(w(13,12),w(13,30)),f(w(11,12),w(11,30)),f(w(9,28),w(9,30)),f(w(3,16),w(3,30)),f(w(9,24),w(9,30)),f(w(27,20),w(27,30)),f(w(8,25),w(8,30)),f(w(28,4),w(28,30)),f(w(20,28),w(20,30)),f(w(12,4),w(12,30)),f(w(5,17),w(5,30)),f(w(29,18),w(29,30)),f(w(10,5),w(10,30)),f(w(19,4),w(19,30)),f(w(6,3),w(6,30)),f(w(12,25),w(12,30)),f(w(28,16),w(28,30)),f(w(23,23),w(23,30)),f(w(7,24),w(7,30)),f(w(9,24),w(9,30)),f(w(1,16),w(1,30)),f(w(30,2),w(30,30)),f(w(9,23),w(9,30)),f(w(22,29),w(22,30)),f(w(26,7),w(26,30)),f(w(15,9),w(15,30)),f(w(24,2),w(24,30)),f(w(23,26),w(23,30)),f(w(25,7),w(25,30)),f(w(9,1),w(9,30)),f(w(25,22),w(25,30)),f(w(25,8),w(25,30)),f(w(15,26),w(15,30)),f(w(4,1),w(4,30)),f(w(28,12),w(28,30)),f(w(1,6),w(1,30)),f(w(12,7),w(12,30)),f(w(17,27),w(17,30)),f(w(2,7),w(2,30)),f(w(18,11),w(18,30)),f(w(10,23),w(10,30)),f(w(27,17),w(27,30)),f(w(2,25),w(2,30)),f(w(12,12),w(12,30)),f(w(28,6),w(28,30)),f(w(27,23),w(27,30)),f(w(21,20),w(21,30)),f(w(7,18),w(7,30)),f(w(29,16),w(29,30)),f(w(2,26),w(2,30)),f(w(22,18),w(22,30)),f(w(18,15),w(18,30)),f(w(30,13),w(30,30)),f(w(7,17),w(7,30)),f(w(29,20),w(29,30)),f(w(10,25),w(10,30)),f(w(9,25),w(9,30)),f(w(26,5),w(26,30)),f(w(14,24),w(14,30)),f(w(2,6),w(2,30)),f(w(28,14),w(28,30)),f(w(28,15),w(28,30)),f(w(24,11),w(24,30)),f(w(11,25),w(11,30)),f(w(22,27),w(22,30)),f(w(10,9),w(10,30)),f(w(7,23),w(7,30)),f(w(28,10),w(28,30)),f(w(22,18),w(22,30)),f(w(27,15),w(27,30)),f(w(6,26),w(6,30)),f(w(2,20),w(2,30)),f(w(2,5),w(2,30)),f(w(6,12),w(6,30))}, {f(w(20,27),w(6,5)),f(w(11,6),w(20,30)),f(w(2,10),w(6,9)),f(w(24,2),w(3,1)),f(w(17,15),w(12,30)),f(w(29,9),w(15,6)),f(w(18,6),w(22,30)),f(w(19,28),w(17,22)),f(w(19,18),w(21,30)),f(w(8,29),w(18,16)),f(w(29,5),w(23,20)),f(w(18,3),w(18,12)),f(w(30,26),w(29,11)),f(w(9,7),w(19,4)),f(w(29,26),w(2,1)),f(w(30,17),w(17,26)),f(w(27,3),w(28,25)),f(w(18,4),w(2,24)),f(w(2,15),w(4,7)),f(w(22,23),w(17,9)),f(w(10,13),w(29,20)),f(w(20,20),w(27,30)),f(w(21,24),w(13,28)),f(w(17,18),w(29,30)),f(w(20,11),w(2,8)),f(w(15,26),w(6,19)),f(w(26,4),w(22,13)),f(w(27,30),w(10,30)),f(w(29,24),w(12,17)),f(w(6,16),w(7,14)),f(w(11,24),w(2,8)),f(w(12,9),w(17,30)),f(w(5,7),w(9,30)),f(w(1,1),w(4,11)),f(w(27,9),w(24,2)),f(w(19,10),w(25,4)),f(w(21,27),w(5,14)),f(w(11,12),w(5,30)),f(w(21,1),w(12,16)),f(w(14,18),w(26,21)),f(w(30,22),w(7,30)),f(w(14,19),w(15,2)),f(w(3,15),w(24,28)),f(w(30,27),w(27,30)),f(w(15,8),w(1,21)),f(w(29,1),w(4,24)),f(w(25,22),w(25,23)),f(w(17,12),w(18,29)),f(w(4,19),w(23,9)),f(w(27,15),w(8,26)),f(w(23,19),w(26,7)),f(w(6,28),w(14,28)),f(w(15,29),w(17,19)),f(w(1,24),w(3,30)),f(w(11,13),w(18,24)),f(w(5,16),w(25,23)),f(w(20,18),w(30,24)),f(w(6,12),w(7,3)),f(w(15,20),w(28,16)),f(w(15,14),w(12,9)),f(w(6,18),w(2,3)),f(w(28,23),w(14,10)),f(w(18,21),w(8,30)),f(w(20,12),w(9,30)),f(w(21,12),w(13,2)),f(w(24,2),w(15,11)),f(w(20,21),w(30,24)),f(w(3,17),w(13,25)),f(w(8,16),w(12,29)),f(w(30,2),w(7,28)),f(w(13,1),w(11,5)),f(w(17,8),w(28,15)),f(w(30,21),w(16,30)),f(w(19,4),w(17,30)),f(w(16,19),w(8,1)),f(w(30,9),w(7,9)),f(w(19,13),w(17,30)),f(w(10,19),w(14,15)),f(w(20,7),w(16,24)),f(w(9,26),w(18,30)),f(w(16,4),w(29,30)),f(w(17,9),w(15,30)),f(w(8,23),w(13,23)),f(w(4,21),w(18,1)),f(w(10,10),w(17,30)),f(w(12,15),w(27,17)),f(w(30,18),w(29,7)),f(w(2,6),w(24,26)),f(w(28,21),w(11,2)),f(w(9,6),w(6,30)),f(w(5,2),w(25,12)),f(w(1,30),w(13,27)),f(w(15,24),w(13,23)),f(w(7,7),w(5,30)),f(w(11,6),w(9,21)),f(w(29,21),w(11,14)),f(w(15,30),w(6,29)),f(w(17,4),w(5,6)),f(w(14,8),w(22,27)),f(w(26,26),w(11,30))}).
