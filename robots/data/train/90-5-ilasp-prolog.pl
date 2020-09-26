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

#pos(p1, {f(w(41,31),w(41,90)),f(w(17,30),w(17,90)),f(w(23,67),w(23,90)),f(w(71,4),w(71,90)),f(w(3,83),w(3,90)),f(w(11,6),w(11,90)),f(w(59,47),w(59,90)),f(w(75,31),w(75,90)),f(w(9,34),w(9,90)),f(w(12,76),w(12,90)),f(w(46,52),w(46,90)),f(w(12,83),w(12,90)),f(w(17,39),w(17,90)),f(w(42,54),w(42,90)),f(w(18,88),w(18,90)),f(w(86,26),w(86,90)),f(w(35,16),w(35,90)),f(w(43,24),w(43,90)),f(w(73,30),w(73,90)),f(w(26,10),w(26,90))}, {f(w(87,54),w(84,22)),f(w(55,4),w(15,29)),f(w(58,59),w(40,90)),f(w(3,7),w(9,37)),f(w(1,53),w(82,2)),f(w(89,70),w(29,74)),f(w(26,17),w(38,90)),f(w(74,46),w(76,81)),f(w(40,51),w(67,90)),f(w(49,43),w(63,70)),f(w(37,32),w(17,28)),f(w(87,81),w(9,16)),f(w(3,6),w(58,48)),f(w(12,71),w(56,90)),f(w(39,18),w(38,35)),f(w(6,89),w(32,63)),f(w(40,31),w(3,21)),f(w(41,6),w(87,90)),f(w(39,4),w(43,88)),f(w(16,71),w(8,14))}).
