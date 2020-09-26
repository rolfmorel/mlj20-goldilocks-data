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

#pos(p1, {f(w(21,1),w(21,30)),f(w(4,28),w(4,30)),f(w(10,26),w(10,30)),f(w(30,3),w(30,30)),f(w(22,4),w(22,30)),f(w(8,8),w(8,30)),f(w(16,23),w(16,30)),f(w(24,24),w(24,30)),f(w(18,24),w(18,30)),f(w(3,23),w(3,30)),f(w(14,9),w(14,30)),f(w(29,2),w(29,30)),f(w(11,14),w(11,30)),f(w(12,22),w(12,30)),f(w(27,1),w(27,30)),f(w(8,7),w(8,30)),f(w(26,10),w(26,30)),f(w(7,24),w(7,30)),f(w(1,16),w(1,30)),f(w(13,16),w(13,30)),f(w(22,7),w(22,30)),f(w(30,28),w(30,30)),f(w(27,4),w(27,30)),f(w(4,23),w(4,30)),f(w(18,3),w(18,30)),f(w(1,1),w(1,30)),f(w(30,29),w(30,30)),f(w(15,1),w(15,30)),f(w(23,16),w(23,30)),f(w(6,29),w(6,30)),f(w(12,24),w(12,30)),f(w(10,28),w(10,30)),f(w(19,25),w(19,30)),f(w(30,26),w(30,30)),f(w(8,3),w(8,30)),f(w(28,10),w(28,30)),f(w(25,6),w(25,30)),f(w(6,24),w(6,30)),f(w(6,12),w(6,30)),f(w(18,23),w(18,30)),f(w(8,8),w(8,30)),f(w(19,9),w(19,30)),f(w(30,14),w(30,30)),f(w(8,13),w(8,30)),f(w(29,27),w(29,30)),f(w(29,10),w(29,30)),f(w(20,26),w(20,30)),f(w(16,18),w(16,30)),f(w(30,22),w(30,30)),f(w(11,16),w(11,30))}, {f(w(26,17),w(2,1)),f(w(19,22),w(11,24)),f(w(22,22),w(19,4)),f(w(18,7),w(23,5)),f(w(19,9),w(4,7)),f(w(6,13),w(22,5)),f(w(17,2),w(25,3)),f(w(1,22),w(7,30)),f(w(1,1),w(29,3)),f(w(30,24),w(22,30)),f(w(24,26),w(28,16)),f(w(11,12),w(17,30)),f(w(11,21),w(20,30)),f(w(22,26),w(5,25)),f(w(17,15),w(12,30)),f(w(15,10),w(21,5)),f(w(29,24),w(12,30)),f(w(25,18),w(30,30)),f(w(26,10),w(14,8)),f(w(27,18),w(4,29)),f(w(21,24),w(21,22)),f(w(25,23),w(2,27)),f(w(23,15),w(16,30)),f(w(11,8),w(15,30)),f(w(18,26),w(8,16)),f(w(23,8),w(28,19)),f(w(24,25),w(25,20)),f(w(13,26),w(23,30)),f(w(30,15),w(22,18)),f(w(19,2),w(10,30)),f(w(5,30),w(30,1)),f(w(20,18),w(1,4)),f(w(15,25),w(16,30)),f(w(3,3),w(21,20)),f(w(14,29),w(30,29)),f(w(14,17),w(24,9)),f(w(14,6),w(27,30)),f(w(19,26),w(23,16)),f(w(3,7),w(27,11)),f(w(17,23),w(7,9)),f(w(10,12),w(24,30)),f(w(27,24),w(13,30)),f(w(4,4),w(28,1)),f(w(14,13),w(6,15)),f(w(18,3),w(3,3)),f(w(24,13),w(4,7)),f(w(19,17),w(21,29)),f(w(10,1),w(25,30)),f(w(9,16),w(7,9)),f(w(10,17),w(6,30))}).
