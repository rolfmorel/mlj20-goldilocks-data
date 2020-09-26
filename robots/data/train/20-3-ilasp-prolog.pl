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

#pos(p1, {f(w(5,14),w(5,20)),f(w(18,15),w(18,20)),f(w(2,8),w(2,20)),f(w(4,12),w(4,20)),f(w(20,4),w(20,20)),f(w(18,17),w(18,20)),f(w(12,19),w(12,20)),f(w(16,15),w(16,20)),f(w(4,17),w(4,20)),f(w(1,8),w(1,20)),f(w(7,7),w(7,20)),f(w(7,10),w(7,20)),f(w(4,12),w(4,20)),f(w(13,12),w(13,20)),f(w(18,3),w(18,20)),f(w(4,11),w(4,20)),f(w(17,13),w(17,20)),f(w(18,13),w(18,20)),f(w(10,11),w(10,20)),f(w(2,9),w(2,20))}, {f(w(7,16),w(18,8)),f(w(4,10),w(17,14)),f(w(6,12),w(7,15)),f(w(14,5),w(19,16)),f(w(11,4),w(8,18)),f(w(3,3),w(2,20)),f(w(6,5),w(3,5)),f(w(2,11),w(6,3)),f(w(3,6),w(6,16)),f(w(15,17),w(4,20)),f(w(18,10),w(16,20)),f(w(2,19),w(15,9)),f(w(15,3),w(8,6)),f(w(6,17),w(17,8)),f(w(7,1),w(1,20)),f(w(4,16),w(17,20)),f(w(19,12),w(16,20)),f(w(12,20),w(19,20)),f(w(20,13),w(6,18)),f(w(5,16),w(4,3))}).
