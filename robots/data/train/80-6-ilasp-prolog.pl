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

#pos(p1, {f(w(47,57),w(47,80)),f(w(15,27),w(15,80)),f(w(40,19),w(40,80)),f(w(29,24),w(29,80)),f(w(65,72),w(65,80)),f(w(8,38),w(8,80)),f(w(79,63),w(79,80)),f(w(18,35),w(18,80)),f(w(54,52),w(54,80)),f(w(47,39),w(47,80)),f(w(26,10),w(26,80)),f(w(24,79),w(24,80)),f(w(27,16),w(27,80)),f(w(9,13),w(9,80)),f(w(39,54),w(39,80)),f(w(33,18),w(33,80)),f(w(53,77),w(53,80)),f(w(41,61),w(41,80)),f(w(40,27),w(40,80)),f(w(57,68),w(57,80))}, {f(w(23,47),w(47,6)),f(w(25,29),w(66,80)),f(w(5,59),w(40,80)),f(w(43,64),w(67,21)),f(w(3,29),w(10,80)),f(w(2,66),w(32,80)),f(w(37,33),w(21,23)),f(w(1,49),w(38,53)),f(w(79,1),w(73,80)),f(w(68,42),w(61,74)),f(w(47,29),w(41,56)),f(w(74,5),w(48,70)),f(w(10,64),w(77,1)),f(w(26,22),w(62,53)),f(w(1,60),w(73,80)),f(w(11,15),w(53,13)),f(w(19,41),w(61,80)),f(w(5,7),w(58,29)),f(w(32,9),w(57,55)),f(w(37,18),w(61,80))}).
