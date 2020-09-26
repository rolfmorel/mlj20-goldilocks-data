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

#pos(p1, {f(w(5,17),w(5,30)),f(w(2,15),w(2,30)),f(w(7,4),w(7,30)),f(w(11,26),w(11,30)),f(w(21,2),w(21,30)),f(w(24,21),w(24,30)),f(w(23,4),w(23,30)),f(w(7,27),w(7,30)),f(w(29,27),w(29,30)),f(w(9,1),w(9,30)),f(w(8,19),w(8,30)),f(w(10,24),w(10,30)),f(w(5,11),w(5,30)),f(w(23,25),w(23,30)),f(w(24,28),w(24,30)),f(w(2,13),w(2,30)),f(w(9,1),w(9,30)),f(w(30,9),w(30,30)),f(w(29,12),w(29,30)),f(w(17,3),w(17,30)),f(w(28,1),w(28,30)),f(w(7,25),w(7,30)),f(w(1,26),w(1,30)),f(w(5,8),w(5,30)),f(w(26,25),w(26,30)),f(w(20,22),w(20,30)),f(w(8,19),w(8,30)),f(w(11,24),w(11,30)),f(w(29,12),w(29,30)),f(w(12,19),w(12,30)),f(w(15,26),w(15,30)),f(w(3,9),w(3,30)),f(w(7,12),w(7,30)),f(w(20,3),w(20,30)),f(w(3,21),w(3,30)),f(w(17,24),w(17,30)),f(w(26,20),w(26,30)),f(w(12,23),w(12,30)),f(w(15,22),w(15,30)),f(w(28,18),w(28,30)),f(w(11,24),w(11,30)),f(w(23,23),w(23,30)),f(w(8,13),w(8,30)),f(w(8,25),w(8,30)),f(w(11,15),w(11,30)),f(w(10,17),w(10,30)),f(w(14,25),w(14,30)),f(w(24,3),w(24,30)),f(w(11,17),w(11,30)),f(w(16,8),w(16,30))}, {f(w(2,18),w(13,30)),f(w(13,15),w(5,19)),f(w(27,7),w(2,30)),f(w(9,13),w(17,12)),f(w(19,30),w(19,16)),f(w(3,25),w(16,28)),f(w(12,21),w(1,14)),f(w(27,26),w(1,1)),f(w(26,9),w(14,28)),f(w(15,7),w(2,7)),f(w(24,4),w(3,30)),f(w(17,10),w(20,30)),f(w(30,4),w(14,30)),f(w(6,30),w(8,30)),f(w(26,17),w(16,4)),f(w(2,4),w(3,30)),f(w(22,15),w(3,15)),f(w(12,25),w(7,11)),f(w(18,4),w(24,30)),f(w(12,5),w(8,30)),f(w(11,26),w(24,2)),f(w(18,17),w(1,30)),f(w(15,2),w(10,1)),f(w(2,6),w(10,17)),f(w(17,1),w(26,6)),f(w(6,1),w(21,23)),f(w(28,20),w(26,20)),f(w(9,2),w(7,6)),f(w(26,22),w(25,30)),f(w(28,16),w(10,5)),f(w(1,10),w(8,30)),f(w(2,24),w(29,6)),f(w(12,19),w(21,30)),f(w(13,29),w(17,30)),f(w(26,26),w(30,30)),f(w(19,15),w(4,30)),f(w(19,16),w(19,22)),f(w(7,6),w(27,15)),f(w(29,11),w(4,9)),f(w(29,28),w(2,8)),f(w(6,19),w(28,23)),f(w(14,1),w(29,9)),f(w(14,3),w(2,4)),f(w(6,17),w(27,18)),f(w(28,12),w(20,15)),f(w(19,25),w(28,30)),f(w(9,5),w(11,30)),f(w(16,13),w(29,19)),f(w(4,4),w(17,19)),f(w(10,16),w(18,12))}).
