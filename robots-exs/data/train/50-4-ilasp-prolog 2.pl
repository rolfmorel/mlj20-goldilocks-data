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

#pos(p1, {f(w(8,20),w(8,30)),f(w(14,25),w(14,30)),f(w(25,15),w(25,30)),f(w(10,18),w(10,30)),f(w(6,7),w(6,30)),f(w(28,14),w(28,30)),f(w(13,3),w(13,30)),f(w(1,9),w(1,30)),f(w(25,24),w(25,30)),f(w(6,7),w(6,30)),f(w(9,28),w(9,30)),f(w(22,24),w(22,30)),f(w(22,25),w(22,30)),f(w(11,5),w(11,30)),f(w(9,9),w(9,30)),f(w(1,1),w(1,30)),f(w(7,21),w(7,30)),f(w(27,20),w(27,30)),f(w(4,12),w(4,30)),f(w(11,21),w(11,30)),f(w(14,15),w(14,30)),f(w(2,5),w(2,30)),f(w(7,29),w(7,30)),f(w(3,8),w(3,30)),f(w(9,3),w(9,30)),f(w(26,6),w(26,30)),f(w(30,27),w(30,30)),f(w(3,1),w(3,30)),f(w(14,8),w(14,30)),f(w(20,4),w(20,30)),f(w(5,19),w(5,30)),f(w(25,12),w(25,30)),f(w(9,18),w(9,30)),f(w(21,18),w(21,30)),f(w(1,12),w(1,30)),f(w(15,9),w(15,30)),f(w(19,15),w(19,30)),f(w(2,3),w(2,30)),f(w(15,13),w(15,30)),f(w(27,7),w(27,30)),f(w(11,18),w(11,30)),f(w(7,2),w(7,30)),f(w(26,29),w(26,30)),f(w(13,22),w(13,30)),f(w(10,10),w(10,30)),f(w(17,12),w(17,30)),f(w(9,14),w(9,30)),f(w(23,7),w(23,30)),f(w(26,19),w(26,30)),f(w(6,10),w(6,30))}, {f(w(10,10),w(1,28)),f(w(29,9),w(20,30)),f(w(21,5),w(15,5)),f(w(19,15),w(1,12)),f(w(9,27),w(25,3)),f(w(27,19),w(8,20)),f(w(21,25),w(19,18)),f(w(4,20),w(15,4)),f(w(18,7),w(24,25)),f(w(17,21),w(14,16)),f(w(11,5),w(7,30)),f(w(20,4),w(10,26)),f(w(15,22),w(30,21)),f(w(19,11),w(7,14)),f(w(3,17),w(12,11)),f(w(29,3),w(13,28)),f(w(19,6),w(13,17)),f(w(22,28),w(23,4)),f(w(3,8),w(7,16)),f(w(17,13),w(11,15)),f(w(7,2),w(2,26)),f(w(9,25),w(29,3)),f(w(18,23),w(7,17)),f(w(6,15),w(5,30)),f(w(17,29),w(13,17)),f(w(25,15),w(21,6)),f(w(25,1),w(13,9)),f(w(21,14),w(25,21)),f(w(20,14),w(30,26)),f(w(4,5),w(17,30)),f(w(18,20),w(4,27)),f(w(15,4),w(23,30)),f(w(24,18),w(3,8)),f(w(4,20),w(8,21)),f(w(24,13),w(28,21)),f(w(2,21),w(9,5)),f(w(29,12),w(16,30)),f(w(22,26),w(17,30)),f(w(10,29),w(30,5)),f(w(10,4),w(27,30)),f(w(11,28),w(10,12)),f(w(15,16),w(15,17)),f(w(5,21),w(27,30)),f(w(6,20),w(5,30)),f(w(29,9),w(27,4)),f(w(25,29),w(17,16)),f(w(5,20),w(18,25)),f(w(20,10),w(4,30)),f(w(4,24),w(11,27)),f(w(19,30),w(23,30))}).
