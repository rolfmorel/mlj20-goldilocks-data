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

#pos(p1, {f(w(41,43),w(41,50)),f(w(49,33),w(49,50)),f(w(3,1),w(3,50)),f(w(39,25),w(39,50)),f(w(32,2),w(32,50)),f(w(38,34),w(38,50)),f(w(32,42),w(32,50)),f(w(23,14),w(23,50)),f(w(8,21),w(8,50)),f(w(30,35),w(30,50)),f(w(43,29),w(43,50)),f(w(19,9),w(19,50)),f(w(12,45),w(12,50)),f(w(22,18),w(22,50)),f(w(41,9),w(41,50)),f(w(2,44),w(2,50)),f(w(13,4),w(13,50)),f(w(20,49),w(20,50)),f(w(27,20),w(27,50)),f(w(14,18),w(14,50))}, {f(w(37,27),w(6,1)),f(w(41,44),w(23,27)),f(w(4,40),w(13,32)),f(w(40,10),w(35,7)),f(w(3,12),w(45,50)),f(w(43,36),w(12,43)),f(w(45,44),w(42,20)),f(w(33,39),w(44,7)),f(w(34,46),w(47,9)),f(w(14,35),w(1,37)),f(w(44,39),w(22,50)),f(w(45,50),w(37,50)),f(w(11,35),w(37,50)),f(w(42,36),w(10,50)),f(w(6,37),w(18,40)),f(w(35,38),w(44,3)),f(w(33,46),w(9,50)),f(w(1,18),w(28,33)),f(w(7,36),w(5,17)),f(w(32,44),w(28,31))}).
