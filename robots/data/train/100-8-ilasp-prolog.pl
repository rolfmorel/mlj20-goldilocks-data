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

#pos(p1, {f(w(46,69),w(46,100)),f(w(19,30),w(19,100)),f(w(56,7),w(56,100)),f(w(10,35),w(10,100)),f(w(81,41),w(81,100)),f(w(100,79),w(100,100)),f(w(95,49),w(95,100)),f(w(6,87),w(6,100)),f(w(21,24),w(21,100)),f(w(6,25),w(6,100)),f(w(37,88),w(37,100)),f(w(25,23),w(25,100)),f(w(40,1),w(40,100)),f(w(72,60),w(72,100)),f(w(81,88),w(81,100)),f(w(76,17),w(76,100)),f(w(80,40),w(80,100)),f(w(46,44),w(46,100)),f(w(64,79),w(64,100)),f(w(67,66),w(67,100))}, {f(w(67,56),w(8,83)),f(w(47,36),w(81,80)),f(w(67,31),w(5,100)),f(w(91,92),w(39,93)),f(w(100,95),w(45,67)),f(w(94,25),w(79,69)),f(w(95,88),w(81,38)),f(w(44,75),w(12,20)),f(w(42,18),w(41,33)),f(w(96,46),w(86,6)),f(w(84,11),w(14,66)),f(w(35,45),w(32,82)),f(w(6,90),w(31,76)),f(w(46,100),w(17,25)),f(w(20,20),w(13,21)),f(w(56,9),w(31,100)),f(w(36,35),w(73,100)),f(w(86,98),w(9,100)),f(w(32,32),w(98,42)),f(w(48,84),w(13,30))}).
