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

#pos(p1, {f(w(4,54),w(4,80)),f(w(70,79),w(70,80)),f(w(3,78),w(3,80)),f(w(7,67),w(7,80)),f(w(23,5),w(23,80)),f(w(28,72),w(28,80)),f(w(65,47),w(65,80)),f(w(5,31),w(5,80)),f(w(65,42),w(65,80)),f(w(25,63),w(25,80)),f(w(20,15),w(20,80)),f(w(51,79),w(51,80)),f(w(39,47),w(39,80)),f(w(62,67),w(62,80)),f(w(31,7),w(31,80)),f(w(46,53),w(46,80)),f(w(27,55),w(27,80)),f(w(37,21),w(37,80)),f(w(53,5),w(53,80)),f(w(69,78),w(69,80))}, {f(w(33,32),w(39,76)),f(w(36,13),w(76,31)),f(w(31,7),w(51,8)),f(w(76,51),w(73,10)),f(w(45,66),w(16,40)),f(w(67,40),w(48,80)),f(w(24,31),w(16,80)),f(w(18,76),w(34,80)),f(w(2,68),w(24,39)),f(w(70,41),w(35,40)),f(w(40,78),w(24,27)),f(w(3,73),w(67,47)),f(w(33,33),w(34,31)),f(w(6,13),w(53,3)),f(w(74,66),w(38,80)),f(w(5,71),w(13,13)),f(w(3,54),w(73,80)),f(w(47,37),w(69,41)),f(w(45,59),w(25,41)),f(w(14,31),w(70,80))}).
