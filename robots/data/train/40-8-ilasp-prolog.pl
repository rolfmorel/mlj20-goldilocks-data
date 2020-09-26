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

#pos(p1, {f(w(39,15),w(39,40)),f(w(6,19),w(6,40)),f(w(25,20),w(25,40)),f(w(10,10),w(10,40)),f(w(33,35),w(33,40)),f(w(31,39),w(31,40)),f(w(7,22),w(7,40)),f(w(19,25),w(19,40)),f(w(19,2),w(19,40)),f(w(14,1),w(14,40)),f(w(21,39),w(21,40)),f(w(22,4),w(22,40)),f(w(30,26),w(30,40)),f(w(29,8),w(29,40)),f(w(20,17),w(20,40)),f(w(23,26),w(23,40)),f(w(9,15),w(9,40)),f(w(36,10),w(36,40)),f(w(3,20),w(3,40)),f(w(1,31),w(1,40))}, {f(w(5,28),w(9,7)),f(w(3,40),w(22,4)),f(w(1,31),w(20,33)),f(w(17,23),w(2,21)),f(w(25,11),w(7,30)),f(w(8,38),w(30,40)),f(w(4,39),w(8,40)),f(w(13,29),w(12,10)),f(w(19,2),w(22,21)),f(w(24,16),w(5,36)),f(w(7,31),w(21,2)),f(w(8,38),w(35,11)),f(w(6,14),w(6,10)),f(w(6,21),w(23,11)),f(w(24,27),w(15,3)),f(w(11,36),w(26,22)),f(w(8,37),w(34,10)),f(w(14,13),w(15,14)),f(w(11,6),w(20,10)),f(w(35,34),w(18,22))}).
