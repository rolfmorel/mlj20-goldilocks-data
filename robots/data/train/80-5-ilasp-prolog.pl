size(80).
position(1..80).
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

#pos(p1, {f(w(15,17),w(15,80)),f(w(33,43),w(33,80)),f(w(50,17),w(50,80)),f(w(35,56),w(35,80)),f(w(43,54),w(43,80)),f(w(71,49),w(71,80)),f(w(76,76),w(76,80)),f(w(73,79),w(73,80)),f(w(8,59),w(8,80)),f(w(20,28),w(20,80)),f(w(32,59),w(32,80)),f(w(25,23),w(25,80)),f(w(74,18),w(74,80)),f(w(24,17),w(24,80)),f(w(62,76),w(62,80)),f(w(31,77),w(31,80)),f(w(41,33),w(41,80)),f(w(23,79),w(23,80)),f(w(50,43),w(50,80)),f(w(20,32),w(20,80))}, {f(w(30,22),w(73,64)),f(w(80,46),w(25,62)),f(w(56,48),w(72,76)),f(w(4,67),w(80,80)),f(w(33,43),w(61,59)),f(w(48,1),w(27,78)),f(w(21,54),w(66,66)),f(w(77,2),w(38,73)),f(w(55,2),w(8,34)),f(w(38,30),w(78,34)),f(w(33,71),w(77,7)),f(w(18,42),w(9,80)),f(w(36,43),w(21,73)),f(w(68,64),w(73,7)),f(w(8,13),w(18,80)),f(w(7,35),w(33,80)),f(w(10,13),w(40,80)),f(w(54,75),w(73,58)),f(w(2,61),w(20,42)),f(w(60,45),w(4,77))}).
