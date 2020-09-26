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

#pos(p1, {f(w(41,32),w(41,60)),f(w(7,27),w(7,60)),f(w(28,18),w(28,60)),f(w(53,6),w(53,60)),f(w(34,53),w(34,60)),f(w(50,2),w(50,60)),f(w(19,59),w(19,60)),f(w(48,4),w(48,60)),f(w(17,6),w(17,60)),f(w(31,37),w(31,60)),f(w(38,50),w(38,60)),f(w(25,17),w(25,60)),f(w(34,11),w(34,60)),f(w(3,48),w(3,60)),f(w(30,12),w(30,60)),f(w(7,51),w(7,60)),f(w(33,28),w(33,60)),f(w(59,21),w(59,60)),f(w(9,25),w(9,60)),f(w(6,20),w(6,60))}, {f(w(8,40),w(43,40)),f(w(58,14),w(12,60)),f(w(16,56),w(21,8)),f(w(27,3),w(4,4)),f(w(24,1),w(36,53)),f(w(7,3),w(46,60)),f(w(58,30),w(35,60)),f(w(5,23),w(2,43)),f(w(5,55),w(54,56)),f(w(2,40),w(33,38)),f(w(6,32),w(7,47)),f(w(47,58),w(9,17)),f(w(29,5),w(35,60)),f(w(33,54),w(35,25)),f(w(6,4),w(38,60)),f(w(57,51),w(2,10)),f(w(45,56),w(3,60)),f(w(5,14),w(8,60)),f(w(43,59),w(36,32)),f(w(17,18),w(52,60))}).
