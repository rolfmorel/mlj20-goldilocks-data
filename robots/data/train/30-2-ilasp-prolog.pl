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

#pos(p1, {f(w(19,12),w(19,30)),f(w(2,16),w(2,30)),f(w(5,20),w(5,30)),f(w(14,28),w(14,30)),f(w(4,14),w(4,30)),f(w(19,7),w(19,30)),f(w(2,3),w(2,30)),f(w(1,29),w(1,30)),f(w(23,28),w(23,30)),f(w(22,26),w(22,30)),f(w(15,12),w(15,30)),f(w(9,8),w(9,30)),f(w(2,29),w(2,30)),f(w(15,18),w(15,30)),f(w(17,13),w(17,30)),f(w(4,3),w(4,30)),f(w(12,2),w(12,30)),f(w(13,20),w(13,30)),f(w(16,3),w(16,30)),f(w(16,29),w(16,30))}, {f(w(3,27),w(19,20)),f(w(19,4),w(20,30)),f(w(12,15),w(30,26)),f(w(1,21),w(18,27)),f(w(3,24),w(6,7)),f(w(4,6),w(2,19)),f(w(17,2),w(2,12)),f(w(4,28),w(21,8)),f(w(13,30),w(14,14)),f(w(7,16),w(28,30)),f(w(28,27),w(9,2)),f(w(15,25),w(26,18)),f(w(23,29),w(21,1)),f(w(6,20),w(13,5)),f(w(2,20),w(28,1)),f(w(13,27),w(22,30)),f(w(11,3),w(23,17)),f(w(19,7),w(21,30)),f(w(21,17),w(16,30)),f(w(8,30),w(3,12))}).
