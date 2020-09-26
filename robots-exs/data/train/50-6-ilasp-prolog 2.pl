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

#pos(p1, {f(w(18,17),w(18,30)),f(w(8,29),w(8,30)),f(w(6,19),w(6,30)),f(w(20,29),w(20,30)),f(w(24,29),w(24,30)),f(w(21,24),w(21,30)),f(w(14,28),w(14,30)),f(w(11,27),w(11,30)),f(w(12,17),w(12,30)),f(w(26,11),w(26,30)),f(w(9,18),w(9,30)),f(w(27,23),w(27,30)),f(w(11,5),w(11,30)),f(w(17,25),w(17,30)),f(w(20,19),w(20,30)),f(w(24,20),w(24,30)),f(w(18,17),w(18,30)),f(w(10,1),w(10,30)),f(w(20,5),w(20,30)),f(w(24,18),w(24,30)),f(w(23,11),w(23,30)),f(w(11,8),w(11,30)),f(w(17,1),w(17,30)),f(w(28,29),w(28,30)),f(w(28,12),w(28,30)),f(w(5,9),w(5,30)),f(w(16,12),w(16,30)),f(w(22,22),w(22,30)),f(w(7,22),w(7,30)),f(w(2,5),w(2,30)),f(w(28,11),w(28,30)),f(w(13,25),w(13,30)),f(w(25,23),w(25,30)),f(w(29,22),w(29,30)),f(w(26,8),w(26,30)),f(w(3,14),w(3,30)),f(w(10,11),w(10,30)),f(w(15,29),w(15,30)),f(w(28,23),w(28,30)),f(w(5,8),w(5,30)),f(w(14,24),w(14,30)),f(w(14,15),w(14,30)),f(w(8,27),w(8,30)),f(w(16,17),w(16,30)),f(w(16,23),w(16,30)),f(w(13,25),w(13,30)),f(w(3,24),w(3,30)),f(w(2,29),w(2,30)),f(w(11,18),w(11,30)),f(w(3,6),w(3,30))}, {f(w(24,20),w(30,30)),f(w(20,21),w(20,12)),f(w(10,16),w(20,12)),f(w(24,21),w(20,30)),f(w(7,20),w(16,30)),f(w(27,7),w(20,17)),f(w(24,16),w(12,30)),f(w(21,1),w(20,30)),f(w(9,21),w(27,18)),f(w(17,22),w(10,22)),f(w(10,12),w(5,30)),f(w(26,13),w(14,20)),f(w(23,13),w(22,23)),f(w(15,10),w(5,30)),f(w(5,14),w(3,30)),f(w(5,20),w(17,11)),f(w(20,6),w(28,22)),f(w(19,1),w(12,1)),f(w(9,14),w(19,22)),f(w(20,9),w(4,29)),f(w(23,30),w(8,1)),f(w(21,10),w(6,8)),f(w(26,24),w(13,14)),f(w(16,4),w(23,30)),f(w(5,6),w(11,3)),f(w(5,4),w(21,2)),f(w(29,5),w(28,15)),f(w(16,5),w(26,14)),f(w(22,5),w(14,30)),f(w(24,10),w(1,12)),f(w(9,29),w(10,7)),f(w(25,11),w(27,16)),f(w(12,7),w(10,21)),f(w(12,23),w(4,30)),f(w(13,12),w(6,6)),f(w(5,20),w(27,8)),f(w(20,10),w(10,30)),f(w(3,29),w(2,30)),f(w(3,17),w(7,19)),f(w(20,15),w(29,22)),f(w(17,5),w(30,6)),f(w(26,20),w(4,30)),f(w(14,22),w(6,30)),f(w(25,21),w(17,17)),f(w(27,11),w(9,30)),f(w(11,19),w(26,23)),f(w(8,24),w(8,20)),f(w(16,4),w(24,15)),f(w(27,15),w(2,30)),f(w(18,8),w(7,19))}).
