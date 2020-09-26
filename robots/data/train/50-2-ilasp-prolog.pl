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

#pos(p1, {f(w(40,2),w(40,50)),f(w(40,26),w(40,50)),f(w(32,14),w(32,50)),f(w(32,10),w(32,50)),f(w(24,33),w(24,50)),f(w(13,31),w(13,50)),f(w(27,10),w(27,50)),f(w(32,35),w(32,50)),f(w(36,27),w(36,50)),f(w(10,9),w(10,50)),f(w(40,2),w(40,50)),f(w(48,14),w(48,50)),f(w(40,32),w(40,50)),f(w(14,49),w(14,50)),f(w(2,40),w(2,50)),f(w(31,18),w(31,50)),f(w(6,11),w(6,50)),f(w(49,14),w(49,50)),f(w(7,49),w(7,50)),f(w(42,5),w(42,50))}, {f(w(42,37),w(49,28)),f(w(17,21),w(46,34)),f(w(22,31),w(30,50)),f(w(16,25),w(28,50)),f(w(27,24),w(19,49)),f(w(42,49),w(27,25)),f(w(9,20),w(1,8)),f(w(36,29),w(33,28)),f(w(31,46),w(13,50)),f(w(22,7),w(33,4)),f(w(37,14),w(15,36)),f(w(20,13),w(23,39)),f(w(34,14),w(9,46)),f(w(14,25),w(21,1)),f(w(39,22),w(28,26)),f(w(14,29),w(6,19)),f(w(28,4),w(40,31)),f(w(50,13),w(36,50)),f(w(28,45),w(11,50)),f(w(4,20),w(8,32))}).
