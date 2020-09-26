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

#pos(p1, {f(w(100,45),w(100,100)),f(w(23,1),w(23,100)),f(w(59,61),w(59,100)),f(w(12,92),w(12,100)),f(w(57,61),w(57,100)),f(w(43,4),w(43,100)),f(w(32,26),w(32,100)),f(w(96,29),w(96,100)),f(w(33,62),w(33,100)),f(w(30,92),w(30,100)),f(w(40,94),w(40,100)),f(w(98,70),w(98,100)),f(w(7,73),w(7,100)),f(w(80,46),w(80,100)),f(w(17,7),w(17,100)),f(w(2,19),w(2,100)),f(w(26,69),w(26,100)),f(w(99,97),w(99,100)),f(w(73,83),w(73,100)),f(w(74,18),w(74,100))}, {f(w(53,67),w(95,100)),f(w(100,14),w(25,100)),f(w(25,61),w(35,100)),f(w(1,53),w(88,34)),f(w(10,43),w(23,78)),f(w(86,83),w(74,100)),f(w(8,45),w(5,23)),f(w(23,76),w(96,68)),f(w(67,81),w(2,19)),f(w(94,25),w(59,100)),f(w(99,57),w(54,74)),f(w(51,24),w(73,25)),f(w(49,71),w(94,19)),f(w(13,19),w(66,2)),f(w(66,1),w(35,81)),f(w(33,63),w(42,42)),f(w(54,78),w(85,80)),f(w(81,36),w(71,54)),f(w(90,29),w(48,11)),f(w(15,37),w(81,6))}).
