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

#pos(p1, {f(w(19,42),w(19,80)),f(w(14,60),w(14,80)),f(w(50,20),w(50,80)),f(w(23,36),w(23,80)),f(w(79,28),w(79,80)),f(w(24,19),w(24,80)),f(w(35,45),w(35,80)),f(w(66,65),w(66,80)),f(w(30,38),w(30,80)),f(w(70,10),w(70,80)),f(w(58,22),w(58,80)),f(w(40,56),w(40,80)),f(w(55,5),w(55,80)),f(w(69,58),w(69,80)),f(w(64,52),w(64,80)),f(w(5,48),w(5,80)),f(w(69,58),w(69,80)),f(w(63,48),w(63,80)),f(w(42,22),w(42,80)),f(w(43,39),w(43,80))}, {f(w(32,70),w(63,6)),f(w(65,44),w(25,80)),f(w(76,33),w(8,66)),f(w(33,15),w(49,17)),f(w(17,29),w(43,80)),f(w(12,65),w(3,17)),f(w(58,66),w(28,80)),f(w(14,59),w(31,80)),f(w(49,12),w(70,7)),f(w(30,32),w(28,63)),f(w(36,80),w(4,58)),f(w(44,37),w(30,16)),f(w(61,63),w(15,15)),f(w(8,70),w(13,72)),f(w(63,79),w(26,26)),f(w(75,11),w(1,36)),f(w(48,41),w(36,40)),f(w(71,69),w(13,7)),f(w(47,80),w(50,2)),f(w(65,19),w(24,79))}).
