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

#pos(p1, {f(w(43,7),w(43,60)),f(w(9,18),w(9,60)),f(w(34,30),w(34,60)),f(w(11,50),w(11,60)),f(w(43,10),w(43,60)),f(w(50,53),w(50,60)),f(w(15,41),w(15,60)),f(w(5,55),w(5,60)),f(w(9,43),w(9,60)),f(w(39,14),w(39,60)),f(w(54,57),w(54,60)),f(w(1,25),w(1,60)),f(w(4,15),w(4,60)),f(w(41,52),w(41,60)),f(w(19,21),w(19,60)),f(w(49,52),w(49,60)),f(w(44,19),w(44,60)),f(w(24,59),w(24,60)),f(w(20,22),w(20,60)),f(w(60,6),w(60,60))}, {f(w(36,55),w(41,45)),f(w(22,18),w(28,19)),f(w(6,27),w(31,15)),f(w(6,43),w(4,7)),f(w(23,14),w(18,60)),f(w(48,30),w(35,25)),f(w(24,4),w(24,1)),f(w(49,52),w(11,40)),f(w(47,10),w(41,53)),f(w(60,11),w(33,46)),f(w(17,43),w(47,60)),f(w(47,51),w(28,60)),f(w(20,31),w(7,23)),f(w(52,38),w(33,60)),f(w(5,36),w(12,25)),f(w(51,40),w(12,18)),f(w(47,19),w(5,21)),f(w(16,6),w(51,1)),f(w(41,32),w(5,6)),f(w(44,54),w(31,28))}).
