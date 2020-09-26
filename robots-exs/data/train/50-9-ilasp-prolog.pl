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

#pos(p1, {f(w(27,8),w(27,30)),f(w(22,5),w(22,30)),f(w(27,29),w(27,30)),f(w(6,14),w(6,30)),f(w(1,15),w(1,30)),f(w(7,2),w(7,30)),f(w(14,29),w(14,30)),f(w(2,25),w(2,30)),f(w(29,25),w(29,30)),f(w(30,5),w(30,30)),f(w(22,10),w(22,30)),f(w(25,11),w(25,30)),f(w(25,24),w(25,30)),f(w(16,17),w(16,30)),f(w(25,13),w(25,30)),f(w(13,29),w(13,30)),f(w(14,10),w(14,30)),f(w(11,22),w(11,30)),f(w(13,19),w(13,30)),f(w(12,18),w(12,30)),f(w(30,29),w(30,30)),f(w(8,29),w(8,30)),f(w(1,16),w(1,30)),f(w(20,5),w(20,30)),f(w(13,2),w(13,30)),f(w(19,3),w(19,30)),f(w(17,2),w(17,30)),f(w(14,8),w(14,30)),f(w(22,14),w(22,30)),f(w(18,25),w(18,30)),f(w(16,23),w(16,30)),f(w(10,2),w(10,30)),f(w(12,10),w(12,30)),f(w(3,3),w(3,30)),f(w(30,6),w(30,30)),f(w(28,3),w(28,30)),f(w(29,12),w(29,30)),f(w(16,6),w(16,30)),f(w(10,7),w(10,30)),f(w(10,18),w(10,30)),f(w(8,6),w(8,30)),f(w(1,28),w(1,30)),f(w(26,14),w(26,30)),f(w(22,15),w(22,30)),f(w(29,29),w(29,30)),f(w(5,3),w(5,30)),f(w(8,1),w(8,30)),f(w(6,26),w(6,30)),f(w(12,21),w(12,30)),f(w(25,3),w(25,30))}, {f(w(25,25),w(15,18)),f(w(28,26),w(28,12)),f(w(30,30),w(20,29)),f(w(23,26),w(6,7)),f(w(22,1),w(26,21)),f(w(6,19),w(10,28)),f(w(25,28),w(12,22)),f(w(4,7),w(10,6)),f(w(7,20),w(19,14)),f(w(9,14),w(28,14)),f(w(21,19),w(10,30)),f(w(19,23),w(1,10)),f(w(9,11),w(11,11)),f(w(25,7),w(13,30)),f(w(25,17),w(30,30)),f(w(12,9),w(24,5)),f(w(7,12),w(21,30)),f(w(20,23),w(30,5)),f(w(15,11),w(26,9)),f(w(2,5),w(12,27)),f(w(19,18),w(15,16)),f(w(28,20),w(13,30)),f(w(28,20),w(3,30)),f(w(28,7),w(21,4)),f(w(15,14),w(25,14)),f(w(20,14),w(9,30)),f(w(21,24),w(11,4)),f(w(20,26),w(8,22)),f(w(5,19),w(28,27)),f(w(17,24),w(21,30)),f(w(24,13),w(1,30)),f(w(21,29),w(13,30)),f(w(19,29),w(13,1)),f(w(24,11),w(27,19)),f(w(19,5),w(23,28)),f(w(28,17),w(6,26)),f(w(23,23),w(30,28)),f(w(16,23),w(4,19)),f(w(19,19),w(8,29)),f(w(5,15),w(23,12)),f(w(20,6),w(21,27)),f(w(20,26),w(3,30)),f(w(10,23),w(13,17)),f(w(29,18),w(5,30)),f(w(7,4),w(25,22)),f(w(17,19),w(6,23)),f(w(7,15),w(10,30)),f(w(11,29),w(23,30)),f(w(28,14),w(11,30)),f(w(18,20),w(30,18))}).
