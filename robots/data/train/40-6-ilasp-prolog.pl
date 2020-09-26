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

#pos(p1, {f(w(24,27),w(24,40)),f(w(10,12),w(10,40)),f(w(5,23),w(5,40)),f(w(40,16),w(40,40)),f(w(33,14),w(33,40)),f(w(17,39),w(17,40)),f(w(18,1),w(18,40)),f(w(12,8),w(12,40)),f(w(15,27),w(15,40)),f(w(6,27),w(6,40)),f(w(30,16),w(30,40)),f(w(3,28),w(3,40)),f(w(26,39),w(26,40)),f(w(31,35),w(31,40)),f(w(40,2),w(40,40)),f(w(37,10),w(37,40)),f(w(3,30),w(3,40)),f(w(5,3),w(5,40)),f(w(34,26),w(34,40)),f(w(5,10),w(5,40))}, {f(w(40,31),w(21,7)),f(w(16,31),w(3,34)),f(w(8,9),w(16,20)),f(w(11,37),w(2,40)),f(w(31,25),w(13,14)),f(w(14,38),w(19,20)),f(w(39,39),w(23,12)),f(w(25,35),w(39,15)),f(w(37,10),w(19,14)),f(w(39,39),w(12,38)),f(w(19,40),w(39,40)),f(w(31,25),w(11,18)),f(w(20,39),w(34,13)),f(w(32,32),w(9,40)),f(w(5,17),w(2,9)),f(w(22,16),w(24,40)),f(w(25,7),w(7,12)),f(w(33,9),w(18,40)),f(w(35,16),w(24,3)),f(w(31,25),w(14,15))}).
