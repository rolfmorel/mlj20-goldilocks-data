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

#pos(p1, {f(w(38,27),w(38,40)),f(w(23,5),w(23,40)),f(w(21,24),w(21,40)),f(w(22,20),w(22,40)),f(w(20,8),w(20,40)),f(w(8,39),w(8,40)),f(w(22,10),w(22,40)),f(w(10,13),w(10,40)),f(w(6,6),w(6,40)),f(w(7,31),w(7,40)),f(w(38,32),w(38,40)),f(w(35,1),w(35,40)),f(w(33,28),w(33,40)),f(w(2,16),w(2,40)),f(w(40,10),w(40,40)),f(w(16,29),w(16,40)),f(w(22,22),w(22,40)),f(w(40,28),w(40,40)),f(w(36,13),w(36,40)),f(w(31,7),w(31,40))}, {f(w(10,25),w(23,40)),f(w(33,13),w(23,40)),f(w(11,25),w(36,35)),f(w(25,23),w(29,40)),f(w(9,15),w(19,40)),f(w(34,8),w(12,40)),f(w(25,6),w(17,40)),f(w(36,37),w(36,30)),f(w(19,32),w(30,17)),f(w(35,38),w(12,38)),f(w(18,1),w(8,40)),f(w(38,5),w(9,24)),f(w(13,12),w(40,40)),f(w(12,39),w(38,9)),f(w(32,1),w(1,11)),f(w(29,28),w(35,27)),f(w(1,33),w(22,1)),f(w(2,24),w(8,7)),f(w(33,27),w(22,31)),f(w(31,2),w(29,30))}).
