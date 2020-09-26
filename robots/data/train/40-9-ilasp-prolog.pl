size(40).
position(1..40).
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

#pos(p1, {f(w(19,25),w(19,40)),f(w(25,26),w(25,40)),f(w(3,31),w(3,40)),f(w(25,39),w(25,40)),f(w(38,13),w(38,40)),f(w(23,1),w(23,40)),f(w(2,19),w(2,40)),f(w(23,11),w(23,40)),f(w(39,27),w(39,40)),f(w(16,28),w(16,40)),f(w(29,29),w(29,40)),f(w(24,11),w(24,40)),f(w(26,11),w(26,40)),f(w(36,5),w(36,40)),f(w(2,10),w(2,40)),f(w(32,14),w(32,40)),f(w(37,30),w(37,40)),f(w(24,27),w(24,40)),f(w(16,33),w(16,40)),f(w(17,39),w(17,40))}, {f(w(30,22),w(25,40)),f(w(32,5),w(28,28)),f(w(37,10),w(33,27)),f(w(39,39),w(22,40)),f(w(13,28),w(13,34)),f(w(30,16),w(9,40)),f(w(11,8),w(31,16)),f(w(40,36),w(26,8)),f(w(18,25),w(19,40)),f(w(31,6),w(1,40)),f(w(17,32),w(32,25)),f(w(13,14),w(36,40)),f(w(27,4),w(26,15)),f(w(9,10),w(2,35)),f(w(9,11),w(19,40)),f(w(33,31),w(15,40)),f(w(31,15),w(24,40)),f(w(22,30),w(39,4)),f(w(12,12),w(26,40)),f(w(12,29),w(34,40))}).
