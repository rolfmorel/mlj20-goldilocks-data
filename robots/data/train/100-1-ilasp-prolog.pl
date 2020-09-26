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

#pos(p1, {f(w(13,67),w(13,100)),f(w(17,92),w(17,100)),f(w(43,86),w(43,100)),f(w(70,42),w(70,100)),f(w(100,86),w(100,100)),f(w(29,34),w(29,100)),f(w(69,61),w(69,100)),f(w(39,50),w(39,100)),f(w(66,83),w(66,100)),f(w(88,96),w(88,100)),f(w(71,99),w(71,100)),f(w(35,52),w(35,100)),f(w(32,14),w(32,100)),f(w(83,3),w(83,100)),f(w(25,81),w(25,100)),f(w(31,65),w(31,100)),f(w(16,92),w(16,100)),f(w(95,80),w(95,100)),f(w(64,99),w(64,100)),f(w(68,18),w(68,100))}, {f(w(60,84),w(72,30)),f(w(10,74),w(45,98)),f(w(91,24),w(13,21)),f(w(3,59),w(42,100)),f(w(75,78),w(24,1)),f(w(64,13),w(59,9)),f(w(2,9),w(31,29)),f(w(35,50),w(10,31)),f(w(62,65),w(76,74)),f(w(59,7),w(86,48)),f(w(79,76),w(61,100)),f(w(11,85),w(64,100)),f(w(17,20),w(25,73)),f(w(34,71),w(71,17)),f(w(93,45),w(85,37)),f(w(93,33),w(69,36)),f(w(15,79),w(30,76)),f(w(2,39),w(77,33)),f(w(49,47),w(53,60)),f(w(57,99),w(7,32))}).
