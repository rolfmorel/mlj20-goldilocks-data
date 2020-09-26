size(80).
position(1..80).
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

#pos(p1, {f(w(33,40),w(33,80)),f(w(28,26),w(28,80)),f(w(30,62),w(30,80)),f(w(60,45),w(60,80)),f(w(52,23),w(52,80)),f(w(54,39),w(54,80)),f(w(6,79),w(6,80)),f(w(34,57),w(34,80)),f(w(28,28),w(28,80)),f(w(47,16),w(47,80)),f(w(3,79),w(3,80)),f(w(7,52),w(7,80)),f(w(24,77),w(24,80)),f(w(59,38),w(59,80)),f(w(23,19),w(23,80)),f(w(7,74),w(7,80)),f(w(78,16),w(78,80)),f(w(74,5),w(74,80)),f(w(30,64),w(30,80)),f(w(33,22),w(33,80))}, {f(w(25,44),w(6,80)),f(w(4,60),w(36,30)),f(w(52,74),w(34,80)),f(w(61,37),w(31,80)),f(w(61,52),w(62,80)),f(w(14,4),w(28,66)),f(w(35,22),w(16,79)),f(w(56,31),w(9,64)),f(w(73,9),w(8,80)),f(w(70,69),w(16,80)),f(w(74,63),w(28,32)),f(w(48,54),w(48,14)),f(w(50,4),w(32,38)),f(w(61,48),w(47,80)),f(w(23,62),w(42,24)),f(w(8,75),w(21,79)),f(w(24,1),w(74,77)),f(w(39,55),w(46,80)),f(w(17,63),w(25,16)),f(w(66,19),w(52,15))}).
