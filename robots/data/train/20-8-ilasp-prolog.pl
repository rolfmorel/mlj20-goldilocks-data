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

#pos(p1, {f(w(14,19),w(14,20)),f(w(19,19),w(19,20)),f(w(5,17),w(5,20)),f(w(7,1),w(7,20)),f(w(9,19),w(9,20)),f(w(10,1),w(10,20)),f(w(9,16),w(9,20)),f(w(13,16),w(13,20)),f(w(20,6),w(20,20)),f(w(3,8),w(3,20)),f(w(1,12),w(1,20)),f(w(15,15),w(15,20)),f(w(11,15),w(11,20)),f(w(11,19),w(11,20)),f(w(7,8),w(7,20)),f(w(3,19),w(3,20)),f(w(2,3),w(2,20)),f(w(9,5),w(9,20)),f(w(18,19),w(18,20)),f(w(16,10),w(16,20))}, {f(w(12,19),w(7,14)),f(w(7,3),w(3,9)),f(w(14,17),w(10,20)),f(w(6,9),w(14,20)),f(w(16,6),w(11,8)),f(w(11,1),w(10,20)),f(w(14,13),w(15,4)),f(w(12,12),w(20,19)),f(w(3,12),w(12,20)),f(w(12,10),w(6,6)),f(w(18,18),w(5,5)),f(w(5,6),w(14,20)),f(w(11,10),w(10,9)),f(w(5,9),w(14,8)),f(w(14,7),w(16,6)),f(w(13,12),w(6,20)),f(w(8,3),w(9,10)),f(w(12,20),w(6,9)),f(w(16,3),w(7,18)),f(w(14,11),w(11,19))}).
