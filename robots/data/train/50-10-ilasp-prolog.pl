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

#pos(p1, {f(w(18,25),w(18,50)),f(w(23,28),w(23,50)),f(w(1,38),w(1,50)),f(w(36,46),w(36,50)),f(w(50,38),w(50,50)),f(w(11,43),w(11,50)),f(w(5,20),w(5,50)),f(w(27,36),w(27,50)),f(w(44,49),w(44,50)),f(w(50,6),w(50,50)),f(w(47,11),w(47,50)),f(w(37,36),w(37,50)),f(w(24,31),w(24,50)),f(w(48,1),w(48,50)),f(w(1,6),w(1,50)),f(w(39,6),w(39,50)),f(w(50,47),w(50,50)),f(w(16,9),w(16,50)),f(w(25,15),w(25,50)),f(w(48,43),w(48,50))}, {f(w(44,25),w(37,20)),f(w(3,49),w(5,9)),f(w(43,13),w(23,25)),f(w(1,3),w(43,12)),f(w(13,44),w(41,22)),f(w(39,15),w(26,6)),f(w(18,48),w(45,44)),f(w(35,35),w(39,31)),f(w(4,19),w(36,8)),f(w(25,30),w(36,29)),f(w(30,13),w(33,50)),f(w(41,4),w(24,50)),f(w(27,39),w(9,38)),f(w(19,35),w(3,50)),f(w(38,21),w(14,48)),f(w(14,14),w(23,33)),f(w(45,34),w(33,50)),f(w(38,20),w(16,45)),f(w(14,32),w(19,48)),f(w(33,27),w(30,34))}).
