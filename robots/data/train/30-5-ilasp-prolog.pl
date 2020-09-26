size(30).
position(1..30).
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

#pos(p1, {f(w(7,19),w(7,30)),f(w(3,8),w(3,30)),f(w(17,7),w(17,30)),f(w(10,9),w(10,30)),f(w(26,24),w(26,30)),f(w(12,22),w(12,30)),f(w(14,8),w(14,30)),f(w(27,10),w(27,30)),f(w(17,29),w(17,30)),f(w(6,4),w(6,30)),f(w(22,16),w(22,30)),f(w(4,8),w(4,30)),f(w(21,7),w(21,30)),f(w(6,27),w(6,30)),f(w(10,26),w(10,30)),f(w(26,9),w(26,30)),f(w(7,10),w(7,30)),f(w(22,16),w(22,30)),f(w(3,13),w(3,30)),f(w(24,28),w(24,30))}, {f(w(6,30),w(7,2)),f(w(10,16),w(15,5)),f(w(14,13),w(4,27)),f(w(28,29),w(17,12)),f(w(3,9),w(1,30)),f(w(25,26),w(5,4)),f(w(25,3),w(26,4)),f(w(30,10),w(11,15)),f(w(16,2),w(30,14)),f(w(21,9),w(24,6)),f(w(25,17),w(22,30)),f(w(21,24),w(10,27)),f(w(30,22),w(28,20)),f(w(20,2),w(18,27)),f(w(6,4),w(10,23)),f(w(12,23),w(17,2)),f(w(20,22),w(15,11)),f(w(28,22),w(4,15)),f(w(11,19),w(21,26)),f(w(27,6),w(29,18))}).
