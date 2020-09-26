size(60).
position(1..60).
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

#pos(p1, {f(w(8,57),w(8,60)),f(w(60,4),w(60,60)),f(w(53,32),w(53,60)),f(w(14,9),w(14,60)),f(w(3,6),w(3,60)),f(w(52,19),w(52,60)),f(w(53,52),w(53,60)),f(w(52,21),w(52,60)),f(w(34,12),w(34,60)),f(w(41,6),w(41,60)),f(w(54,10),w(54,60)),f(w(17,8),w(17,60)),f(w(29,48),w(29,60)),f(w(4,59),w(4,60)),f(w(57,29),w(57,60)),f(w(37,49),w(37,60)),f(w(19,28),w(19,60)),f(w(2,58),w(2,60)),f(w(24,52),w(24,60)),f(w(23,37),w(23,60))}, {f(w(43,52),w(15,60)),f(w(10,14),w(10,21)),f(w(34,15),w(12,18)),f(w(7,54),w(52,25)),f(w(31,19),w(27,60)),f(w(2,57),w(11,41)),f(w(29,56),w(38,38)),f(w(51,42),w(26,37)),f(w(34,8),w(6,7)),f(w(24,54),w(33,34)),f(w(38,30),w(52,25)),f(w(47,13),w(19,60)),f(w(22,10),w(50,60)),f(w(15,44),w(3,60)),f(w(33,36),w(4,49)),f(w(5,8),w(16,45)),f(w(44,49),w(34,60)),f(w(41,39),w(56,60)),f(w(52,22),w(27,16)),f(w(40,17),w(55,24))}).
