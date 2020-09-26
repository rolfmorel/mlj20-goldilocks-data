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

#pos(p1, {f(w(39,15),w(39,40)),f(w(24,20),w(24,40)),f(w(11,22),w(11,40)),f(w(21,32),w(21,40)),f(w(10,22),w(10,40)),f(w(40,20),w(40,40)),f(w(2,16),w(2,40)),f(w(13,31),w(13,40)),f(w(21,3),w(21,40)),f(w(22,21),w(22,40)),f(w(1,15),w(1,40)),f(w(20,28),w(20,40)),f(w(5,33),w(5,40)),f(w(26,32),w(26,40)),f(w(29,36),w(29,40)),f(w(26,38),w(26,40)),f(w(1,18),w(1,40)),f(w(29,21),w(29,40)),f(w(4,15),w(4,40)),f(w(13,34),w(13,40))}, {f(w(9,3),w(16,23)),f(w(26,19),w(35,26)),f(w(9,2),w(36,40)),f(w(25,7),w(38,40)),f(w(1,22),w(8,21)),f(w(23,36),w(14,15)),f(w(31,5),w(29,19)),f(w(25,34),w(40,13)),f(w(27,28),w(39,7)),f(w(29,24),w(25,33)),f(w(3,23),w(25,13)),f(w(7,19),w(2,4)),f(w(21,13),w(28,16)),f(w(11,33),w(2,10)),f(w(25,5),w(15,13)),f(w(26,11),w(15,40)),f(w(6,33),w(28,8)),f(w(13,8),w(24,40)),f(w(14,1),w(8,40)),f(w(8,37),w(38,24))}).
