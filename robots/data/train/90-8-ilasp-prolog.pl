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

#pos(p1, {f(w(85,88),w(85,90)),f(w(57,1),w(57,90)),f(w(69,57),w(69,90)),f(w(80,54),w(80,90)),f(w(64,24),w(64,90)),f(w(56,76),w(56,90)),f(w(50,56),w(50,90)),f(w(13,21),w(13,90)),f(w(65,21),w(65,90)),f(w(58,54),w(58,90)),f(w(45,29),w(45,90)),f(w(37,43),w(37,90)),f(w(88,13),w(88,90)),f(w(90,26),w(90,90)),f(w(88,66),w(88,90)),f(w(66,17),w(66,90)),f(w(84,65),w(84,90)),f(w(69,8),w(69,90)),f(w(2,64),w(2,90)),f(w(40,11),w(40,90))}, {f(w(16,68),w(21,90)),f(w(61,63),w(15,14)),f(w(37,2),w(8,23)),f(w(81,17),w(88,11)),f(w(73,26),w(87,32)),f(w(31,13),w(49,6)),f(w(70,25),w(52,30)),f(w(51,5),w(3,48)),f(w(89,78),w(52,50)),f(w(85,17),w(49,60)),f(w(46,88),w(37,14)),f(w(64,31),w(22,43)),f(w(87,65),w(87,50)),f(w(31,13),w(10,90)),f(w(19,23),w(30,41)),f(w(45,67),w(80,29)),f(w(66,29),w(38,81)),f(w(47,76),w(89,63)),f(w(5,46),w(43,90)),f(w(51,51),w(26,90))}).
