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

#pos(p1, {f(w(24,6),w(24,30)),f(w(11,29),w(11,30)),f(w(9,14),w(9,30)),f(w(29,18),w(29,30)),f(w(16,21),w(16,30)),f(w(1,16),w(1,30)),f(w(14,10),w(14,30)),f(w(14,24),w(14,30)),f(w(29,16),w(29,30)),f(w(7,22),w(7,30)),f(w(16,10),w(16,30)),f(w(14,12),w(14,30)),f(w(25,29),w(25,30)),f(w(15,19),w(15,30)),f(w(13,12),w(13,30)),f(w(23,26),w(23,30)),f(w(12,12),w(12,30)),f(w(22,25),w(22,30)),f(w(9,17),w(9,30)),f(w(19,25),w(19,30))}, {f(w(2,18),w(13,30)),f(w(5,20),w(12,30)),f(w(9,30),w(7,30)),f(w(20,11),w(12,11)),f(w(11,26),w(16,30)),f(w(3,1),w(12,30)),f(w(5,29),w(19,30)),f(w(27,17),w(15,1)),f(w(11,24),w(12,16)),f(w(14,27),w(4,11)),f(w(14,1),w(26,24)),f(w(1,27),w(14,4)),f(w(16,27),w(29,26)),f(w(25,27),w(9,30)),f(w(29,24),w(28,9)),f(w(5,29),w(11,30)),f(w(7,10),w(20,18)),f(w(23,17),w(19,30)),f(w(3,16),w(22,15)),f(w(22,19),w(29,10))}).
