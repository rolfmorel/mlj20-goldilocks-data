size(40).
position(1..40).
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

#pos(p1, {f(w(17,9),w(17,40)),f(w(14,17),w(14,40)),f(w(3,2),w(3,40)),f(w(3,35),w(3,40)),f(w(19,33),w(19,40)),f(w(24,25),w(24,40)),f(w(5,23),w(5,40)),f(w(38,39),w(38,40)),f(w(14,26),w(14,40)),f(w(9,7),w(9,40)),f(w(35,36),w(35,40)),f(w(25,1),w(25,40)),f(w(33,13),w(33,40)),f(w(31,21),w(31,40)),f(w(22,6),w(22,40)),f(w(2,27),w(2,40)),f(w(2,1),w(2,40)),f(w(10,28),w(10,40)),f(w(21,14),w(21,40)),f(w(35,37),w(35,40))}, {f(w(27,39),w(20,40)),f(w(28,24),w(15,3)),f(w(19,31),w(40,31)),f(w(20,25),w(35,39)),f(w(14,29),w(29,24)),f(w(39,15),w(7,33)),f(w(27,40),w(33,19)),f(w(33,33),w(1,29)),f(w(1,10),w(19,32)),f(w(28,32),w(34,21)),f(w(13,12),w(2,40)),f(w(2,19),w(10,31)),f(w(7,29),w(32,40)),f(w(39,34),w(5,16)),f(w(37,18),w(27,40)),f(w(14,12),w(39,40)),f(w(6,26),w(22,3)),f(w(24,12),w(40,40)),f(w(18,9),w(35,9)),f(w(37,36),w(31,40))}).
