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

#pos(p1, {f(w(15,3),w(15,30)),f(w(10,21),w(10,30)),f(w(10,10),w(10,30)),f(w(14,21),w(14,30)),f(w(5,6),w(5,30)),f(w(26,2),w(26,30)),f(w(15,12),w(15,30)),f(w(18,15),w(18,30)),f(w(22,23),w(22,30)),f(w(27,21),w(27,30)),f(w(17,22),w(17,30)),f(w(16,20),w(16,30)),f(w(8,14),w(8,30)),f(w(13,23),w(13,30)),f(w(6,5),w(6,30)),f(w(15,10),w(15,30)),f(w(29,24),w(29,30)),f(w(25,15),w(25,30)),f(w(27,23),w(27,30)),f(w(19,16),w(19,30)),f(w(10,7),w(10,30)),f(w(4,11),w(4,30)),f(w(2,8),w(2,30)),f(w(18,8),w(18,30)),f(w(24,8),w(24,30)),f(w(9,2),w(9,30)),f(w(22,13),w(22,30)),f(w(9,25),w(9,30)),f(w(30,7),w(30,30)),f(w(27,18),w(27,30)),f(w(14,26),w(14,30)),f(w(24,10),w(24,30)),f(w(24,5),w(24,30)),f(w(10,3),w(10,30)),f(w(16,19),w(16,30)),f(w(11,19),w(11,30)),f(w(26,22),w(26,30)),f(w(27,25),w(27,30)),f(w(24,5),w(24,30)),f(w(8,9),w(8,30)),f(w(18,7),w(18,30)),f(w(13,15),w(13,30)),f(w(12,29),w(12,30)),f(w(9,19),w(9,30)),f(w(28,3),w(28,30)),f(w(30,17),w(30,30)),f(w(12,4),w(12,30)),f(w(16,5),w(16,30)),f(w(2,25),w(2,30)),f(w(13,21),w(13,30))}, {f(w(12,27),w(29,30)),f(w(22,27),w(3,3)),f(w(15,7),w(22,30)),f(w(11,20),w(10,18)),f(w(28,9),w(1,3)),f(w(21,22),w(18,23)),f(w(22,2),w(15,20)),f(w(2,21),w(12,10)),f(w(19,8),w(22,4)),f(w(27,30),w(14,8)),f(w(19,9),w(13,29)),f(w(8,5),w(2,30)),f(w(11,24),w(15,6)),f(w(29,18),w(5,20)),f(w(13,9),w(16,30)),f(w(19,6),w(18,26)),f(w(19,30),w(7,14)),f(w(11,15),w(1,20)),f(w(9,7),w(19,3)),f(w(11,27),w(1,30)),f(w(17,7),w(14,26)),f(w(20,2),w(8,8)),f(w(16,15),w(26,11)),f(w(13,3),w(27,30)),f(w(29,14),w(17,26)),f(w(29,25),w(14,27)),f(w(23,15),w(12,1)),f(w(25,21),w(1,4)),f(w(9,15),w(6,25)),f(w(5,18),w(13,21)),f(w(1,13),w(28,18)),f(w(2,8),w(8,2)),f(w(7,5),w(5,9)),f(w(29,15),w(25,30)),f(w(13,30),w(7,6)),f(w(1,10),w(20,7)),f(w(11,27),w(8,14)),f(w(3,24),w(6,28)),f(w(15,7),w(18,30)),f(w(29,10),w(3,30)),f(w(4,10),w(28,17)),f(w(4,12),w(4,22)),f(w(16,17),w(26,21)),f(w(29,28),w(20,8)),f(w(24,21),w(8,30)),f(w(15,22),w(19,26)),f(w(7,21),w(9,22)),f(w(3,7),w(6,6)),f(w(6,13),w(28,30)),f(w(3,6),w(25,26))}).
