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

#pos(p1, {f(w(31,24),w(31,40)),f(w(20,35),w(20,40)),f(w(36,8),w(36,40)),f(w(31,26),w(31,40)),f(w(37,34),w(37,40)),f(w(28,28),w(28,40)),f(w(15,24),w(15,40)),f(w(26,29),w(26,40)),f(w(25,31),w(25,40)),f(w(7,24),w(7,40)),f(w(8,21),w(8,40)),f(w(38,24),w(38,40)),f(w(36,16),w(36,40)),f(w(33,4),w(33,40)),f(w(24,37),w(24,40)),f(w(16,18),w(16,40)),f(w(5,4),w(5,40)),f(w(1,7),w(1,40)),f(w(28,7),w(28,40)),f(w(38,38),w(38,40))}, {f(w(39,11),w(10,31)),f(w(19,25),w(16,1)),f(w(37,7),w(33,36)),f(w(18,32),w(40,24)),f(w(6,25),w(25,3)),f(w(32,31),w(13,11)),f(w(23,36),w(17,32)),f(w(3,14),w(17,33)),f(w(26,11),w(4,14)),f(w(18,37),w(19,3)),f(w(31,2),w(18,40)),f(w(23,7),w(7,40)),f(w(7,15),w(20,11)),f(w(17,26),w(15,37)),f(w(16,20),w(7,37)),f(w(6,12),w(37,40)),f(w(12,2),w(11,16)),f(w(22,13),w(28,23)),f(w(20,13),w(13,18)),f(w(39,38),w(38,9))}).
