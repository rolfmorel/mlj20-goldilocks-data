size(60).
position(1..60).
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

#pos(p1, {f(w(35,42),w(35,60)),f(w(54,38),w(54,60)),f(w(59,24),w(59,60)),f(w(54,56),w(54,60)),f(w(47,14),w(47,60)),f(w(54,19),w(54,60)),f(w(41,56),w(41,60)),f(w(56,57),w(56,60)),f(w(54,49),w(54,60)),f(w(31,1),w(31,60)),f(w(32,34),w(32,60)),f(w(20,32),w(20,60)),f(w(28,36),w(28,60)),f(w(55,4),w(55,60)),f(w(10,59),w(10,60)),f(w(60,5),w(60,60)),f(w(16,20),w(16,60)),f(w(9,29),w(9,60)),f(w(46,10),w(46,60)),f(w(3,37),w(3,60))}, {f(w(17,7),w(34,52)),f(w(20,52),w(13,44)),f(w(17,16),w(27,60)),f(w(12,47),w(40,9)),f(w(49,27),w(57,2)),f(w(19,30),w(55,19)),f(w(21,2),w(18,26)),f(w(39,9),w(3,56)),f(w(53,18),w(56,18)),f(w(48,43),w(48,1)),f(w(28,29),w(56,4)),f(w(47,41),w(44,19)),f(w(15,19),w(37,60)),f(w(25,13),w(56,58)),f(w(50,28),w(4,26)),f(w(44,52),w(8,2)),f(w(43,21),w(57,25)),f(w(60,54),w(35,60)),f(w(11,47),w(40,57)),f(w(42,32),w(6,46))}).
