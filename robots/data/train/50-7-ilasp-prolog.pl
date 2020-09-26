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

#pos(p1, {f(w(31,25),w(31,50)),f(w(40,11),w(40,50)),f(w(45,27),w(45,50)),f(w(34,4),w(34,50)),f(w(38,4),w(38,50)),f(w(33,39),w(33,50)),f(w(7,6),w(7,50)),f(w(17,49),w(17,50)),f(w(40,20),w(40,50)),f(w(38,1),w(38,50)),f(w(33,25),w(33,50)),f(w(4,49),w(4,50)),f(w(23,8),w(23,50)),f(w(45,23),w(45,50)),f(w(4,27),w(4,50)),f(w(16,33),w(16,50)),f(w(2,47),w(2,50)),f(w(40,40),w(40,50)),f(w(16,47),w(16,50)),f(w(12,5),w(12,50))}, {f(w(37,25),w(18,47)),f(w(7,4),w(21,5)),f(w(33,2),w(31,50)),f(w(13,19),w(26,50)),f(w(40,27),w(15,39)),f(w(43,15),w(18,18)),f(w(41,17),w(34,28)),f(w(36,2),w(29,10)),f(w(31,13),w(40,50)),f(w(38,50),w(44,50)),f(w(32,13),w(40,22)),f(w(12,40),w(18,28)),f(w(26,4),w(26,3)),f(w(20,21),w(44,44)),f(w(50,4),w(32,11)),f(w(22,41),w(1,2)),f(w(50,2),w(41,47)),f(w(24,23),w(24,49)),f(w(42,2),w(44,50)),f(w(31,46),w(37,5))}).
