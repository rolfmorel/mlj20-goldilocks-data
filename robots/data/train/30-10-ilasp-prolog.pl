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

#pos(p1, {f(w(6,18),w(6,30)),f(w(12,4),w(12,30)),f(w(11,13),w(11,30)),f(w(9,28),w(9,30)),f(w(11,4),w(11,30)),f(w(18,24),w(18,30)),f(w(24,3),w(24,30)),f(w(10,16),w(10,30)),f(w(30,12),w(30,30)),f(w(15,20),w(15,30)),f(w(2,7),w(2,30)),f(w(12,7),w(12,30)),f(w(26,15),w(26,30)),f(w(1,11),w(1,30)),f(w(21,29),w(21,30)),f(w(19,25),w(19,30)),f(w(25,4),w(25,30)),f(w(10,23),w(10,30)),f(w(16,3),w(16,30)),f(w(29,29),w(29,30))}, {f(w(9,30),w(27,16)),f(w(1,27),w(29,4)),f(w(13,8),w(22,26)),f(w(20,18),w(16,29)),f(w(30,18),w(26,30)),f(w(12,30),w(1,8)),f(w(27,7),w(3,15)),f(w(29,30),w(9,20)),f(w(29,3),w(30,7)),f(w(30,7),w(23,21)),f(w(16,29),w(22,29)),f(w(6,13),w(3,25)),f(w(7,12),w(26,20)),f(w(18,28),w(19,30)),f(w(11,1),w(23,15)),f(w(15,7),w(19,8)),f(w(4,27),w(10,30)),f(w(25,16),w(10,18)),f(w(22,24),w(20,5)),f(w(30,2),w(18,30))}).
