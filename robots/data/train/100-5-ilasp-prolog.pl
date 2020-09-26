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

#pos(p1, {f(w(19,13),w(19,100)),f(w(39,22),w(39,100)),f(w(90,4),w(90,100)),f(w(85,68),w(85,100)),f(w(48,73),w(48,100)),f(w(69,75),w(69,100)),f(w(53,71),w(53,100)),f(w(81,84),w(81,100)),f(w(11,36),w(11,100)),f(w(96,46),w(96,100)),f(w(71,16),w(71,100)),f(w(75,68),w(75,100)),f(w(14,1),w(14,100)),f(w(48,39),w(48,100)),f(w(53,65),w(53,100)),f(w(7,40),w(7,100)),f(w(62,64),w(62,100)),f(w(35,43),w(35,100)),f(w(79,95),w(79,100)),f(w(44,68),w(44,100))}, {f(w(89,40),w(95,41)),f(w(85,49),w(95,100)),f(w(60,7),w(97,100)),f(w(33,63),w(25,98)),f(w(81,16),w(74,100)),f(w(13,39),w(17,94)),f(w(83,81),w(16,21)),f(w(16,27),w(37,79)),f(w(93,82),w(21,16)),f(w(68,56),w(17,89)),f(w(83,78),w(55,60)),f(w(43,44),w(45,100)),f(w(31,12),w(4,15)),f(w(34,48),w(85,71)),f(w(5,27),w(5,19)),f(w(96,29),w(81,15)),f(w(3,87),w(28,40)),f(w(61,31),w(50,32)),f(w(91,49),w(2,100)),f(w(94,96),w(10,54))}).
