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

#pos(p1, {f(w(57,59),w(57,90)),f(w(43,89),w(43,90)),f(w(56,20),w(56,90)),f(w(19,34),w(19,90)),f(w(86,88),w(86,90)),f(w(5,77),w(5,90)),f(w(14,47),w(14,90)),f(w(26,57),w(26,90)),f(w(29,47),w(29,90)),f(w(15,13),w(15,90)),f(w(64,12),w(64,90)),f(w(38,55),w(38,90)),f(w(27,14),w(27,90)),f(w(88,15),w(88,90)),f(w(41,75),w(41,90)),f(w(41,74),w(41,90)),f(w(72,89),w(72,90)),f(w(37,65),w(37,90)),f(w(52,5),w(52,90)),f(w(39,62),w(39,90))}, {f(w(60,11),w(72,5)),f(w(36,37),w(36,2)),f(w(7,35),w(76,15)),f(w(28,53),w(84,42)),f(w(13,53),w(71,56)),f(w(27,52),w(29,90)),f(w(90,40),w(21,3)),f(w(18,73),w(31,3)),f(w(45,88),w(28,68)),f(w(89,18),w(60,68)),f(w(48,28),w(39,90)),f(w(15,70),w(73,7)),f(w(30,90),w(68,90)),f(w(5,65),w(48,90)),f(w(49,26),w(4,9)),f(w(16,34),w(69,28)),f(w(26,7),w(5,90)),f(w(72,51),w(36,1)),f(w(29,1),w(39,61)),f(w(17,21),w(16,90))}).
