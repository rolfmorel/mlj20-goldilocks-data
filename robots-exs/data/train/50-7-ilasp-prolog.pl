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

#pos(p1, {f(w(14,13),w(14,30)),f(w(23,14),w(23,30)),f(w(22,15),w(22,30)),f(w(7,26),w(7,30)),f(w(6,19),w(6,30)),f(w(17,8),w(17,30)),f(w(20,1),w(20,30)),f(w(22,20),w(22,30)),f(w(22,6),w(22,30)),f(w(21,3),w(21,30)),f(w(2,8),w(2,30)),f(w(30,29),w(30,30)),f(w(6,14),w(6,30)),f(w(24,20),w(24,30)),f(w(9,25),w(9,30)),f(w(8,9),w(8,30)),f(w(12,19),w(12,30)),f(w(26,8),w(26,30)),f(w(22,5),w(22,30)),f(w(26,1),w(26,30)),f(w(3,17),w(3,30)),f(w(27,4),w(27,30)),f(w(29,15),w(29,30)),f(w(13,2),w(13,30)),f(w(18,26),w(18,30)),f(w(18,17),w(18,30)),f(w(25,1),w(25,30)),f(w(23,2),w(23,30)),f(w(10,19),w(10,30)),f(w(29,1),w(29,30)),f(w(5,28),w(5,30)),f(w(21,13),w(21,30)),f(w(11,26),w(11,30)),f(w(25,26),w(25,30)),f(w(12,17),w(12,30)),f(w(20,13),w(20,30)),f(w(11,29),w(11,30)),f(w(3,17),w(3,30)),f(w(28,29),w(28,30)),f(w(24,9),w(24,30)),f(w(14,21),w(14,30)),f(w(26,18),w(26,30)),f(w(17,19),w(17,30)),f(w(24,29),w(24,30)),f(w(25,6),w(25,30)),f(w(28,9),w(28,30)),f(w(10,21),w(10,30)),f(w(3,25),w(3,30)),f(w(3,5),w(3,30)),f(w(16,8),w(16,30))}, {f(w(14,1),w(30,11)),f(w(4,4),w(12,22)),f(w(26,21),w(10,30)),f(w(17,23),w(4,17)),f(w(21,3),w(8,5)),f(w(28,4),w(11,30)),f(w(24,17),w(19,10)),f(w(19,30),w(8,15)),f(w(30,4),w(28,2)),f(w(25,22),w(9,30)),f(w(4,24),w(19,10)),f(w(27,20),w(26,9)),f(w(3,1),w(25,9)),f(w(17,1),w(26,16)),f(w(6,23),w(12,30)),f(w(18,21),w(25,21)),f(w(13,30),w(19,11)),f(w(29,19),w(4,30)),f(w(3,17),w(23,11)),f(w(16,23),w(22,19)),f(w(25,25),w(2,13)),f(w(24,22),w(18,11)),f(w(16,29),w(15,23)),f(w(23,29),w(24,28)),f(w(8,17),w(15,25)),f(w(11,16),w(14,9)),f(w(17,28),w(19,18)),f(w(21,15),w(23,30)),f(w(12,5),w(14,18)),f(w(9,29),w(6,30)),f(w(28,14),w(5,2)),f(w(17,3),w(27,5)),f(w(13,22),w(13,17)),f(w(11,27),w(11,5)),f(w(18,16),w(1,22)),f(w(6,1),w(30,3)),f(w(29,15),w(12,6)),f(w(29,30),w(20,30)),f(w(26,3),w(7,7)),f(w(8,24),w(26,17)),f(w(28,29),w(7,5)),f(w(26,4),w(23,30)),f(w(22,22),w(8,2)),f(w(16,23),w(23,10)),f(w(4,24),w(5,30)),f(w(24,30),w(15,21)),f(w(21,6),w(13,30)),f(w(27,20),w(29,10)),f(w(5,3),w(15,17)),f(w(10,3),w(5,30))}).
