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

#pos(p1, {f(w(40,82),w(40,100)),f(w(8,41),w(8,100)),f(w(86,97),w(86,100)),f(w(53,34),w(53,100)),f(w(66,99),w(66,100)),f(w(78,8),w(78,100)),f(w(30,93),w(30,100)),f(w(7,71),w(7,100)),f(w(42,15),w(42,100)),f(w(82,52),w(82,100)),f(w(22,95),w(22,100)),f(w(41,88),w(41,100)),f(w(44,71),w(44,100)),f(w(36,21),w(36,100)),f(w(14,64),w(14,100)),f(w(79,78),w(79,100)),f(w(36,73),w(36,100)),f(w(63,59),w(63,100)),f(w(10,7),w(10,100)),f(w(62,11),w(62,100))}, {f(w(63,16),w(44,93)),f(w(86,40),w(68,11)),f(w(59,33),w(57,73)),f(w(57,59),w(92,49)),f(w(37,92),w(88,80)),f(w(45,66),w(25,57)),f(w(4,90),w(7,100)),f(w(22,99),w(8,7)),f(w(76,85),w(13,100)),f(w(70,83),w(36,33)),f(w(66,11),w(17,59)),f(w(74,60),w(11,100)),f(w(3,67),w(88,100)),f(w(9,47),w(27,72)),f(w(56,26),w(100,100)),f(w(12,20),w(87,100)),f(w(13,74),w(67,100)),f(w(32,25),w(39,100)),f(w(51,16),w(48,91)),f(w(44,22),w(98,69))}).
