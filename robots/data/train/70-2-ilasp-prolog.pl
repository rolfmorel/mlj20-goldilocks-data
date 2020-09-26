size(70).
position(1..70).
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

#pos(p1, {f(w(63,57),w(63,70)),f(w(58,28),w(58,70)),f(w(34,1),w(34,70)),f(w(21,62),w(21,70)),f(w(1,55),w(1,70)),f(w(6,1),w(6,70)),f(w(7,61),w(7,70)),f(w(64,23),w(64,70)),f(w(20,49),w(20,70)),f(w(54,14),w(54,70)),f(w(2,58),w(2,70)),f(w(32,60),w(32,70)),f(w(69,51),w(69,70)),f(w(31,44),w(31,70)),f(w(55,56),w(55,70)),f(w(6,51),w(6,70)),f(w(44,39),w(44,70)),f(w(61,18),w(61,70)),f(w(56,12),w(56,70)),f(w(43,42),w(43,70))}, {f(w(2,26),w(43,38)),f(w(28,56),w(29,70)),f(w(58,47),w(43,18)),f(w(58,8),w(47,66)),f(w(60,69),w(68,31)),f(w(9,9),w(20,42)),f(w(40,1),w(2,50)),f(w(30,57),w(57,9)),f(w(11,24),w(60,70)),f(w(12,42),w(51,70)),f(w(31,9),w(25,19)),f(w(61,41),w(62,5)),f(w(62,17),w(61,50)),f(w(6,60),w(8,14)),f(w(7,61),w(61,56)),f(w(68,27),w(26,58)),f(w(25,26),w(20,45)),f(w(66,13),w(51,29)),f(w(14,57),w(12,24)),f(w(3,19),w(69,24))}).
