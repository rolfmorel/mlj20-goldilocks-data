size(100).
position(1..100).
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

#pos(p1, {f(w(42,99),w(42,100)),f(w(65,32),w(65,100)),f(w(43,75),w(43,100)),f(w(5,38),w(5,100)),f(w(5,88),w(5,100)),f(w(94,9),w(94,100)),f(w(35,64),w(35,100)),f(w(35,90),w(35,100)),f(w(80,75),w(80,100)),f(w(88,16),w(88,100)),f(w(86,30),w(86,100)),f(w(46,66),w(46,100)),f(w(18,79),w(18,100)),f(w(37,20),w(37,100)),f(w(41,51),w(41,100)),f(w(47,59),w(47,100)),f(w(32,60),w(32,100)),f(w(17,75),w(17,100)),f(w(75,38),w(75,100)),f(w(87,68),w(87,100))}, {f(w(32,34),w(3,17)),f(w(16,46),w(86,67)),f(w(21,24),w(51,39)),f(w(86,42),w(41,78)),f(w(99,49),w(42,35)),f(w(82,97),w(74,52)),f(w(63,10),w(10,100)),f(w(13,48),w(33,62)),f(w(46,44),w(69,100)),f(w(8,68),w(47,70)),f(w(36,2),w(33,100)),f(w(11,56),w(45,31)),f(w(17,50),w(65,10)),f(w(94,60),w(2,86)),f(w(76,47),w(89,100)),f(w(10,62),w(8,100)),f(w(61,14),w(19,100)),f(w(72,87),w(19,87)),f(w(46,72),w(25,34)),f(w(97,10),w(26,83))}).
