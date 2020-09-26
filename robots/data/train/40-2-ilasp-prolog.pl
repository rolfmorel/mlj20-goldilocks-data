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

#pos(p1, {f(w(17,39),w(17,40)),f(w(36,30),w(36,40)),f(w(40,2),w(40,40)),f(w(21,27),w(21,40)),f(w(34,28),w(34,40)),f(w(39,10),w(39,40)),f(w(23,33),w(23,40)),f(w(25,28),w(25,40)),f(w(7,10),w(7,40)),f(w(23,28),w(23,40)),f(w(30,31),w(30,40)),f(w(1,5),w(1,40)),f(w(31,25),w(31,40)),f(w(8,7),w(8,40)),f(w(34,13),w(34,40)),f(w(33,28),w(33,40)),f(w(5,38),w(5,40)),f(w(26,36),w(26,40)),f(w(12,1),w(12,40)),f(w(22,10),w(22,40))}, {f(w(30,30),w(19,40)),f(w(27,38),w(30,34)),f(w(23,40),w(10,40)),f(w(11,38),w(7,33)),f(w(11,23),w(23,40)),f(w(19,32),w(6,4)),f(w(6,5),w(16,20)),f(w(29,15),w(26,20)),f(w(10,1),w(7,40)),f(w(39,16),w(38,38)),f(w(2,16),w(30,40)),f(w(33,2),w(31,40)),f(w(28,9),w(25,31)),f(w(36,10),w(38,40)),f(w(38,35),w(21,19)),f(w(21,22),w(34,25)),f(w(36,35),w(14,3)),f(w(33,32),w(25,40)),f(w(11,2),w(15,40)),f(w(11,34),w(17,15))}).
