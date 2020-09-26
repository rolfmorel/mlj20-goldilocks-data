size(90).
position(1..90).
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

#pos(p1, {f(w(83,43),w(83,90)),f(w(5,42),w(5,90)),f(w(22,15),w(22,90)),f(w(85,11),w(85,90)),f(w(9,77),w(9,90)),f(w(52,16),w(52,90)),f(w(41,64),w(41,90)),f(w(14,42),w(14,90)),f(w(3,75),w(3,90)),f(w(81,21),w(81,90)),f(w(38,74),w(38,90)),f(w(65,41),w(65,90)),f(w(17,19),w(17,90)),f(w(90,7),w(90,90)),f(w(18,69),w(18,90)),f(w(33,54),w(33,90)),f(w(65,72),w(65,90)),f(w(27,43),w(27,90)),f(w(44,86),w(44,90)),f(w(79,89),w(79,90))}, {f(w(7,90),w(4,55)),f(w(66,80),w(7,90)),f(w(6,1),w(45,24)),f(w(50,49),w(32,90)),f(w(29,70),w(17,5)),f(w(77,11),w(80,36)),f(w(70,14),w(67,21)),f(w(9,11),w(43,90)),f(w(23,17),w(64,90)),f(w(43,75),w(46,14)),f(w(63,80),w(41,22)),f(w(42,80),w(38,17)),f(w(78,18),w(19,64)),f(w(1,73),w(59,29)),f(w(53,63),w(65,73)),f(w(68,16),w(1,42)),f(w(59,49),w(15,90)),f(w(9,7),w(90,41)),f(w(33,34),w(73,32)),f(w(82,85),w(20,90))}).
