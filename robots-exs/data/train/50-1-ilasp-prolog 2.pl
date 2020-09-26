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

#pos(p1, {f(w(6,21),w(6,30)),f(w(29,29),w(29,30)),f(w(12,29),w(12,30)),f(w(29,20),w(29,30)),f(w(13,22),w(13,30)),f(w(5,5),w(5,30)),f(w(19,29),w(19,30)),f(w(16,10),w(16,30)),f(w(29,26),w(29,30)),f(w(25,5),w(25,30)),f(w(4,28),w(4,30)),f(w(26,24),w(26,30)),f(w(21,29),w(21,30)),f(w(21,17),w(21,30)),f(w(5,18),w(5,30)),f(w(26,1),w(26,30)),f(w(8,3),w(8,30)),f(w(22,7),w(22,30)),f(w(4,23),w(4,30)),f(w(19,7),w(19,30)),f(w(25,5),w(25,30)),f(w(5,13),w(5,30)),f(w(25,1),w(25,30)),f(w(24,7),w(24,30)),f(w(10,18),w(10,30)),f(w(6,13),w(6,30)),f(w(3,27),w(3,30)),f(w(8,29),w(8,30)),f(w(12,13),w(12,30)),f(w(10,17),w(10,30)),f(w(14,22),w(14,30)),f(w(2,9),w(2,30)),f(w(29,29),w(29,30)),f(w(9,19),w(9,30)),f(w(26,16),w(26,30)),f(w(8,28),w(8,30)),f(w(18,1),w(18,30)),f(w(17,8),w(17,30)),f(w(11,12),w(11,30)),f(w(15,12),w(15,30)),f(w(15,16),w(15,30)),f(w(6,7),w(6,30)),f(w(9,1),w(9,30)),f(w(15,5),w(15,30)),f(w(13,15),w(13,30)),f(w(21,7),w(21,30)),f(w(4,1),w(4,30)),f(w(18,11),w(18,30)),f(w(24,20),w(24,30)),f(w(21,11),w(21,30))}, {f(w(28,14),w(8,8)),f(w(13,22),w(27,26)),f(w(4,21),w(7,26)),f(w(11,24),w(7,4)),f(w(18,16),w(19,22)),f(w(3,6),w(21,30)),f(w(20,1),w(26,11)),f(w(8,2),w(28,27)),f(w(3,27),w(26,21)),f(w(22,23),w(27,15)),f(w(10,13),w(21,11)),f(w(20,1),w(30,22)),f(w(6,17),w(17,30)),f(w(19,10),w(19,19)),f(w(21,14),w(12,25)),f(w(13,20),w(19,25)),f(w(7,28),w(13,28)),f(w(23,22),w(16,16)),f(w(10,29),w(19,12)),f(w(25,19),w(21,14)),f(w(16,11),w(23,21)),f(w(1,10),w(12,18)),f(w(21,20),w(6,28)),f(w(26,27),w(2,7)),f(w(19,5),w(22,27)),f(w(16,29),w(5,30)),f(w(9,2),w(21,30)),f(w(15,20),w(22,17)),f(w(22,2),w(9,30)),f(w(26,26),w(20,5)),f(w(25,9),w(9,19)),f(w(23,21),w(25,17)),f(w(29,11),w(4,30)),f(w(10,1),w(29,2)),f(w(1,22),w(13,30)),f(w(2,11),w(15,24)),f(w(8,22),w(7,11)),f(w(28,20),w(6,30)),f(w(11,14),w(3,19)),f(w(13,9),w(22,15)),f(w(5,29),w(26,23)),f(w(9,7),w(12,30)),f(w(22,10),w(23,14)),f(w(16,1),w(2,2)),f(w(23,21),w(5,30)),f(w(30,7),w(8,30)),f(w(7,3),w(30,1)),f(w(8,1),w(12,6)),f(w(4,7),w(19,28)),f(w(1,6),w(21,15))}).
