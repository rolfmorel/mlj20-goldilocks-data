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

#pos(p1, {f(w(62,40),w(62,100)),f(w(71,70),w(71,100)),f(w(5,27),w(5,100)),f(w(50,9),w(50,100)),f(w(59,34),w(59,100)),f(w(89,50),w(89,100)),f(w(46,1),w(46,100)),f(w(82,84),w(82,100)),f(w(11,95),w(11,100)),f(w(32,79),w(32,100)),f(w(60,10),w(60,100)),f(w(35,49),w(35,100)),f(w(84,89),w(84,100)),f(w(41,69),w(41,100)),f(w(22,43),w(22,100)),f(w(66,59),w(66,100)),f(w(75,18),w(75,100)),f(w(21,57),w(21,100)),f(w(87,7),w(87,100)),f(w(24,83),w(24,100))}, {f(w(23,35),w(48,100)),f(w(17,57),w(69,100)),f(w(56,58),w(19,60)),f(w(60,98),w(48,100)),f(w(13,71),w(36,100)),f(w(46,30),w(35,100)),f(w(22,99),w(54,62)),f(w(88,47),w(8,100)),f(w(67,54),w(16,48)),f(w(14,4),w(86,76)),f(w(8,99),w(59,64)),f(w(28,22),w(35,91)),f(w(15,94),w(23,100)),f(w(60,12),w(81,100)),f(w(21,63),w(60,18)),f(w(19,33),w(15,14)),f(w(85,10),w(42,79)),f(w(40,20),w(31,55)),f(w(28,80),w(60,95)),f(w(78,73),w(67,100))}).
