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

#pos(p1, {f(w(23,4),w(23,30)),f(w(23,7),w(23,30)),f(w(5,12),w(5,30)),f(w(21,13),w(21,30)),f(w(28,22),w(28,30)),f(w(16,10),w(16,30)),f(w(15,9),w(15,30)),f(w(2,21),w(2,30)),f(w(18,18),w(18,30)),f(w(17,21),w(17,30)),f(w(13,15),w(13,30)),f(w(4,20),w(4,30)),f(w(8,4),w(8,30)),f(w(27,15),w(27,30)),f(w(16,21),w(16,30)),f(w(1,12),w(1,30)),f(w(5,8),w(5,30)),f(w(22,28),w(22,30)),f(w(5,16),w(5,30)),f(w(5,11),w(5,30)),f(w(24,25),w(24,30)),f(w(25,29),w(25,30)),f(w(1,14),w(1,30)),f(w(21,8),w(21,30)),f(w(6,19),w(6,30)),f(w(11,5),w(11,30)),f(w(23,4),w(23,30)),f(w(9,21),w(9,30)),f(w(9,7),w(9,30)),f(w(20,2),w(20,30)),f(w(14,12),w(14,30)),f(w(2,1),w(2,30)),f(w(13,15),w(13,30)),f(w(15,2),w(15,30)),f(w(22,3),w(22,30)),f(w(12,5),w(12,30)),f(w(4,29),w(4,30)),f(w(4,23),w(4,30)),f(w(27,29),w(27,30)),f(w(16,7),w(16,30)),f(w(9,18),w(9,30)),f(w(8,3),w(8,30)),f(w(28,26),w(28,30)),f(w(3,21),w(3,30)),f(w(7,26),w(7,30)),f(w(23,2),w(23,30)),f(w(18,8),w(18,30)),f(w(17,7),w(17,30)),f(w(18,14),w(18,30)),f(w(24,25),w(24,30))}, {f(w(11,1),w(9,30)),f(w(23,7),w(26,30)),f(w(25,19),w(14,14)),f(w(24,11),w(8,2)),f(w(13,6),w(17,30)),f(w(26,14),w(5,13)),f(w(12,30),w(19,26)),f(w(10,6),w(30,28)),f(w(14,30),w(5,20)),f(w(10,26),w(4,30)),f(w(1,25),w(8,30)),f(w(26,24),w(10,30)),f(w(13,4),w(12,22)),f(w(15,12),w(26,23)),f(w(28,16),w(23,30)),f(w(2,6),w(22,30)),f(w(5,29),w(23,30)),f(w(17,16),w(15,30)),f(w(17,25),w(14,29)),f(w(5,5),w(2,29)),f(w(25,13),w(28,21)),f(w(8,29),w(9,30)),f(w(27,9),w(8,13)),f(w(25,21),w(21,12)),f(w(15,21),w(18,22)),f(w(12,29),w(18,6)),f(w(2,25),w(15,22)),f(w(29,5),w(16,28)),f(w(21,26),w(8,30)),f(w(4,9),w(5,8)),f(w(5,19),w(3,22)),f(w(17,3),w(13,28)),f(w(17,20),w(6,30)),f(w(25,21),w(28,30)),f(w(29,13),w(8,6)),f(w(5,4),w(8,11)),f(w(15,11),w(25,8)),f(w(21,28),w(11,19)),f(w(4,4),w(27,30)),f(w(25,6),w(23,11)),f(w(22,27),w(1,8)),f(w(26,19),w(20,7)),f(w(30,22),w(19,29)),f(w(19,17),w(21,16)),f(w(11,17),w(12,6)),f(w(23,3),w(22,21)),f(w(16,12),w(3,20)),f(w(3,1),w(10,22)),f(w(25,30),w(30,30)),f(w(14,13),w(8,16))}).
