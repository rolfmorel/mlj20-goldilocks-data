size(50).
position(1..50).
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

#pos(p1, {f(w(29,47),w(29,50)),f(w(32,14),w(32,50)),f(w(28,42),w(28,50)),f(w(23,22),w(23,50)),f(w(2,13),w(2,50)),f(w(48,16),w(48,50)),f(w(6,29),w(6,50)),f(w(6,29),w(6,50)),f(w(27,48),w(27,50)),f(w(4,48),w(4,50)),f(w(49,29),w(49,50)),f(w(21,34),w(21,50)),f(w(34,3),w(34,50)),f(w(41,4),w(41,50)),f(w(4,25),w(4,50)),f(w(45,26),w(45,50)),f(w(38,49),w(38,50)),f(w(3,6),w(3,50)),f(w(24,49),w(24,50)),f(w(41,23),w(41,50))}, {f(w(20,4),w(13,50)),f(w(10,33),w(19,17)),f(w(16,11),w(28,9)),f(w(50,7),w(50,30)),f(w(39,10),w(21,50)),f(w(44,42),w(21,6)),f(w(48,29),w(16,1)),f(w(23,9),w(44,47)),f(w(30,17),w(2,2)),f(w(20,40),w(31,21)),f(w(33,43),w(35,30)),f(w(1,3),w(44,21)),f(w(7,5),w(2,32)),f(w(8,15),w(44,33)),f(w(2,50),w(33,40)),f(w(50,23),w(44,48)),f(w(13,47),w(8,50)),f(w(48,34),w(21,1)),f(w(31,9),w(26,26)),f(w(28,4),w(35,24))}).
