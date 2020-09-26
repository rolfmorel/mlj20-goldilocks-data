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

#pos(p1, {f(w(13,5),w(13,20)),f(w(20,9),w(20,20)),f(w(16,8),w(16,20)),f(w(17,5),w(17,20)),f(w(20,13),w(20,20)),f(w(1,8),w(1,20)),f(w(11,1),w(11,20)),f(w(1,6),w(1,20)),f(w(19,11),w(19,20)),f(w(20,1),w(20,20)),f(w(13,4),w(13,20)),f(w(19,15),w(19,20)),f(w(3,18),w(3,20)),f(w(13,18),w(13,20)),f(w(17,4),w(17,20)),f(w(1,18),w(1,20)),f(w(16,15),w(16,20)),f(w(18,4),w(18,20)),f(w(9,12),w(9,20)),f(w(13,18),w(13,20))}, {f(w(14,13),w(8,4)),f(w(19,14),w(16,11)),f(w(6,13),w(7,20)),f(w(13,8),w(3,8)),f(w(15,4),w(10,3)),f(w(11,1),w(13,20)),f(w(14,18),w(2,16)),f(w(11,12),w(2,17)),f(w(10,2),w(14,20)),f(w(5,10),w(13,8)),f(w(10,4),w(1,17)),f(w(1,2),w(14,20)),f(w(13,2),w(15,13)),f(w(6,9),w(4,20)),f(w(16,18),w(9,20)),f(w(9,18),w(6,20)),f(w(16,15),w(4,11)),f(w(15,7),w(15,19)),f(w(16,8),w(2,20)),f(w(16,19),w(14,8))}).
