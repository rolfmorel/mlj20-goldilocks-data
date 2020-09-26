size(50).
position(1..50).
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

#pos(p1, {f(w(41,6),w(41,50)),f(w(26,31),w(26,50)),f(w(35,2),w(35,50)),f(w(39,21),w(39,50)),f(w(17,33),w(17,50)),f(w(36,23),w(36,50)),f(w(3,39),w(3,50)),f(w(14,49),w(14,50)),f(w(1,37),w(1,50)),f(w(47,36),w(47,50)),f(w(33,49),w(33,50)),f(w(14,9),w(14,50)),f(w(47,49),w(47,50)),f(w(27,22),w(27,50)),f(w(20,21),w(20,50)),f(w(33,49),w(33,50)),f(w(22,6),w(22,50)),f(w(1,2),w(1,50)),f(w(26,3),w(26,50)),f(w(42,1),w(42,50))}, {f(w(14,23),w(29,29)),f(w(20,12),w(38,32)),f(w(28,14),w(17,12)),f(w(43,48),w(18,50)),f(w(19,29),w(11,7)),f(w(21,38),w(7,50)),f(w(30,33),w(1,50)),f(w(3,43),w(34,50)),f(w(16,25),w(39,13)),f(w(5,21),w(4,50)),f(w(3,4),w(4,21)),f(w(25,41),w(20,27)),f(w(13,2),w(13,46)),f(w(8,47),w(50,1)),f(w(47,33),w(7,22)),f(w(5,17),w(46,2)),f(w(20,41),w(7,49)),f(w(37,40),w(49,3)),f(w(21,1),w(30,24)),f(w(17,39),w(30,9))}).
