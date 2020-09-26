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

#pos(p1, {f(w(25,21),w(25,30)),f(w(12,10),w(12,30)),f(w(16,16),w(16,30)),f(w(4,20),w(4,30)),f(w(30,9),w(30,30)),f(w(14,24),w(14,30)),f(w(18,13),w(18,30)),f(w(5,16),w(5,30)),f(w(22,10),w(22,30)),f(w(5,27),w(5,30)),f(w(25,10),w(25,30)),f(w(8,7),w(8,30)),f(w(16,23),w(16,30)),f(w(17,26),w(17,30)),f(w(18,9),w(18,30)),f(w(8,4),w(8,30)),f(w(26,11),w(26,30)),f(w(25,24),w(25,30)),f(w(11,20),w(11,30)),f(w(19,11),w(19,30)),f(w(29,13),w(29,30)),f(w(16,14),w(16,30)),f(w(1,24),w(1,30)),f(w(30,27),w(30,30)),f(w(4,18),w(4,30)),f(w(30,16),w(30,30)),f(w(28,8),w(28,30)),f(w(25,21),w(25,30)),f(w(11,9),w(11,30)),f(w(1,29),w(1,30)),f(w(11,10),w(11,30)),f(w(25,1),w(25,30)),f(w(30,7),w(30,30)),f(w(6,15),w(6,30)),f(w(20,17),w(20,30)),f(w(24,5),w(24,30)),f(w(22,20),w(22,30)),f(w(25,7),w(25,30)),f(w(28,26),w(28,30)),f(w(7,28),w(7,30)),f(w(19,9),w(19,30)),f(w(5,8),w(5,30)),f(w(15,9),w(15,30)),f(w(22,12),w(22,30)),f(w(8,24),w(8,30)),f(w(15,6),w(15,30)),f(w(7,3),w(7,30)),f(w(5,18),w(5,30)),f(w(17,7),w(17,30)),f(w(1,29),w(1,30)),f(w(5,15),w(5,30)),f(w(18,6),w(18,30)),f(w(11,5),w(11,30)),f(w(23,18),w(23,30)),f(w(11,29),w(11,30)),f(w(2,13),w(2,30)),f(w(18,12),w(18,30)),f(w(4,29),w(4,30)),f(w(18,21),w(18,30)),f(w(22,21),w(22,30)),f(w(13,20),w(13,30)),f(w(11,22),w(11,30)),f(w(12,25),w(12,30)),f(w(25,7),w(25,30)),f(w(5,29),w(5,30)),f(w(5,23),w(5,30)),f(w(19,22),w(19,30)),f(w(3,24),w(3,30)),f(w(24,22),w(24,30)),f(w(30,23),w(30,30)),f(w(12,26),w(12,30)),f(w(25,29),w(25,30)),f(w(8,26),w(8,30)),f(w(2,2),w(2,30)),f(w(13,15),w(13,30)),f(w(24,23),w(24,30)),f(w(11,27),w(11,30)),f(w(22,20),w(22,30)),f(w(16,8),w(16,30)),f(w(19,29),w(19,30)),f(w(28,27),w(28,30)),f(w(4,13),w(4,30)),f(w(15,29),w(15,30)),f(w(7,9),w(7,30)),f(w(14,23),w(14,30)),f(w(28,26),w(28,30)),f(w(15,5),w(15,30)),f(w(27,5),w(27,30)),f(w(10,14),w(10,30)),f(w(30,25),w(30,30)),f(w(26,1),w(26,30)),f(w(1,8),w(1,30)),f(w(16,5),w(16,30)),f(w(8,17),w(8,30)),f(w(6,28),w(6,30)),f(w(13,1),w(13,30)),f(w(15,19),w(15,30)),f(w(10,8),w(10,30)),f(w(11,16),w(11,30)),f(w(17,27),w(17,30))}, {f(w(1,23),w(30,26)),f(w(2,22),w(9,30)),f(w(2,4),w(21,7)),f(w(3,14),w(21,17)),f(w(30,14),w(2,6)),f(w(4,13),w(7,10)),f(w(2,1),w(5,14)),f(w(30,15),w(8,30)),f(w(3,30),w(26,30)),f(w(16,9),w(24,23)),f(w(2,29),w(28,30)),f(w(13,6),w(16,17)),f(w(4,11),w(11,30)),f(w(11,10),w(17,6)),f(w(11,29),w(9,8)),f(w(28,28),w(13,29)),f(w(17,7),w(28,29)),f(w(2,6),w(22,7)),f(w(27,21),w(26,30)),f(w(11,18),w(4,17)),f(w(6,13),w(21,18)),f(w(21,28),w(28,18)),f(w(25,24),w(25,5)),f(w(5,17),w(19,8)),f(w(12,28),w(20,3)),f(w(2,5),w(24,29)),f(w(18,20),w(18,5)),f(w(13,29),w(26,30)),f(w(21,4),w(5,23)),f(w(18,19),w(24,22)),f(w(2,22),w(30,4)),f(w(7,16),w(23,30)),f(w(30,17),w(9,18)),f(w(1,1),w(17,29)),f(w(13,19),w(21,28)),f(w(16,14),w(5,4)),f(w(4,1),w(30,30)),f(w(15,19),w(23,30)),f(w(15,19),w(10,30)),f(w(23,27),w(11,30)),f(w(18,18),w(13,26)),f(w(5,29),w(8,29)),f(w(29,2),w(16,30)),f(w(26,28),w(5,30)),f(w(7,22),w(30,8)),f(w(8,13),w(27,22)),f(w(28,12),w(1,24)),f(w(24,12),w(9,25)),f(w(1,3),w(18,15)),f(w(28,21),w(11,1)),f(w(2,19),w(3,30)),f(w(29,23),w(15,15)),f(w(8,14),w(3,6)),f(w(4,20),w(26,14)),f(w(1,29),w(10,3)),f(w(1,20),w(30,12)),f(w(3,3),w(28,20)),f(w(9,17),w(21,22)),f(w(10,30),w(26,11)),f(w(27,20),w(30,30)),f(w(23,2),w(27,22)),f(w(13,2),w(9,14)),f(w(26,20),w(7,30)),f(w(13,25),w(22,22)),f(w(16,25),w(29,30)),f(w(13,12),w(26,30)),f(w(5,18),w(12,5)),f(w(20,29),w(19,22)),f(w(6,19),w(26,4)),f(w(13,6),w(23,10)),f(w(12,7),w(26,16)),f(w(30,16),w(26,1)),f(w(25,6),w(8,30)),f(w(17,18),w(24,30)),f(w(4,12),w(4,22)),f(w(24,21),w(10,16)),f(w(7,21),w(10,20)),f(w(21,15),w(26,9)),f(w(16,17),w(3,13)),f(w(16,30),w(30,15)),f(w(25,24),w(5,30)),f(w(23,25),w(18,17)),f(w(16,13),w(3,30)),f(w(13,13),w(15,30)),f(w(16,12),w(9,30)),f(w(28,11),w(25,30)),f(w(7,6),w(19,1)),f(w(11,24),w(18,29)),f(w(14,12),w(10,16)),f(w(3,28),w(20,25)),f(w(18,29),w(14,6)),f(w(11,4),w(24,23)),f(w(25,4),w(17,22)),f(w(17,17),w(4,28)),f(w(3,17),w(26,15)),f(w(10,29),w(2,26)),f(w(23,3),w(7,27)),f(w(10,12),w(20,9)),f(w(30,15),w(30,18)),f(w(26,28),w(13,19))}).
