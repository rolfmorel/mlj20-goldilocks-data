size(20).
position(1..20).
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

#pos(p1, {f(w(10,11),w(10,20)),f(w(8,12),w(8,20)),f(w(2,17),w(2,20)),f(w(1,2),w(1,20)),f(w(17,8),w(17,20)),f(w(9,2),w(9,20)),f(w(4,7),w(4,20)),f(w(12,6),w(12,20)),f(w(19,4),w(19,20)),f(w(3,17),w(3,20)),f(w(12,18),w(12,20)),f(w(7,7),w(7,20)),f(w(6,8),w(6,20)),f(w(7,14),w(7,20)),f(w(19,12),w(19,20)),f(w(6,8),w(6,20)),f(w(13,16),w(13,20)),f(w(10,19),w(10,20)),f(w(14,1),w(14,20)),f(w(8,9),w(8,20))}, {f(w(11,5),w(1,20)),f(w(9,16),w(14,17)),f(w(16,1),w(13,20)),f(w(3,11),w(3,14)),f(w(8,8),w(16,13)),f(w(9,13),w(15,5)),f(w(10,6),w(13,17)),f(w(16,18),w(6,4)),f(w(6,3),w(19,5)),f(w(6,18),w(4,14)),f(w(5,1),w(2,15)),f(w(14,14),w(1,16)),f(w(8,2),w(13,20)),f(w(16,2),w(5,14)),f(w(10,13),w(4,12)),f(w(1,7),w(10,15)),f(w(15,10),w(13,9)),f(w(19,12),w(4,6)),f(w(7,3),w(16,20)),f(w(12,19),w(15,3))}).
