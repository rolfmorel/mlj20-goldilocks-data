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

#pos(p1, {f(w(2,13),w(2,30)),f(w(29,27),w(29,30)),f(w(10,14),w(10,30)),f(w(29,13),w(29,30)),f(w(22,8),w(22,30)),f(w(3,10),w(3,30)),f(w(25,4),w(25,30)),f(w(28,20),w(28,30)),f(w(4,19),w(4,30)),f(w(13,13),w(13,30)),f(w(14,4),w(14,30)),f(w(10,2),w(10,30)),f(w(19,1),w(19,30)),f(w(14,28),w(14,30)),f(w(11,7),w(11,30)),f(w(29,15),w(29,30)),f(w(26,25),w(26,30)),f(w(16,29),w(16,30)),f(w(8,21),w(8,30)),f(w(24,7),w(24,30))}, {f(w(19,4),w(13,19)),f(w(6,29),w(5,10)),f(w(19,13),w(23,1)),f(w(28,15),w(9,18)),f(w(26,28),w(17,23)),f(w(14,24),w(16,23)),f(w(16,16),w(5,7)),f(w(7,10),w(25,26)),f(w(17,20),w(19,30)),f(w(20,21),w(22,12)),f(w(2,24),w(19,30)),f(w(26,26),w(23,5)),f(w(14,26),w(19,4)),f(w(15,15),w(24,2)),f(w(3,12),w(10,30)),f(w(23,14),w(3,30)),f(w(20,27),w(6,12)),f(w(9,11),w(4,11)),f(w(17,8),w(29,20)),f(w(12,30),w(1,30))}).
