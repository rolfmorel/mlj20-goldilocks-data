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

#pos(p1, {f(w(42,34),w(42,90)),f(w(85,20),w(85,90)),f(w(60,8),w(60,90)),f(w(16,81),w(16,90)),f(w(44,67),w(44,90)),f(w(82,50),w(82,90)),f(w(73,30),w(73,90)),f(w(38,14),w(38,90)),f(w(66,25),w(66,90)),f(w(31,80),w(31,90)),f(w(56,44),w(56,90)),f(w(6,80),w(6,90)),f(w(75,87),w(75,90)),f(w(8,82),w(8,90)),f(w(7,89),w(7,90)),f(w(17,12),w(17,90)),f(w(78,80),w(78,90)),f(w(48,15),w(48,90)),f(w(26,47),w(26,90)),f(w(56,40),w(56,90))}, {f(w(33,30),w(21,90)),f(w(7,84),w(53,69)),f(w(29,41),w(77,90)),f(w(6,9),w(27,41)),f(w(17,35),w(86,20)),f(w(46,22),w(33,90)),f(w(74,34),w(89,18)),f(w(18,59),w(38,90)),f(w(81,34),w(43,68)),f(w(59,64),w(6,82)),f(w(83,6),w(4,14)),f(w(50,52),w(81,17)),f(w(25,5),w(44,79)),f(w(47,74),w(14,13)),f(w(5,50),w(25,5)),f(w(84,74),w(60,5)),f(w(56,61),w(62,4)),f(w(44,47),w(48,50)),f(w(58,59),w(2,42)),f(w(15,6),w(53,76))}).
