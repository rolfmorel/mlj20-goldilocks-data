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

#pos(p1, {f(w(15,13),w(15,40)),f(w(16,34),w(16,40)),f(w(37,35),w(37,40)),f(w(22,19),w(22,40)),f(w(34,3),w(34,40)),f(w(7,28),w(7,40)),f(w(31,27),w(31,40)),f(w(22,6),w(22,40)),f(w(27,21),w(27,40)),f(w(38,6),w(38,40)),f(w(2,37),w(2,40)),f(w(22,10),w(22,40)),f(w(34,7),w(34,40)),f(w(19,39),w(19,40)),f(w(18,36),w(18,40)),f(w(21,21),w(21,40)),f(w(6,14),w(6,40)),f(w(4,37),w(4,40)),f(w(34,30),w(34,40)),f(w(28,32),w(28,40))}, {f(w(13,40),w(12,40)),f(w(17,21),w(11,25)),f(w(3,9),w(32,40)),f(w(12,36),w(6,38)),f(w(33,2),w(39,28)),f(w(6,38),w(40,1)),f(w(26,2),w(39,40)),f(w(4,27),w(23,13)),f(w(26,23),w(5,40)),f(w(15,35),w(35,40)),f(w(25,18),w(10,40)),f(w(27,40),w(3,20)),f(w(2,12),w(32,18)),f(w(30,26),w(13,26)),f(w(11,7),w(3,1)),f(w(8,7),w(24,16)),f(w(7,6),w(17,40)),f(w(37,1),w(13,4)),f(w(35,26),w(3,20)),f(w(39,8),w(11,19))}).
