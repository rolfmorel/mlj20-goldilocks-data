size(70).
position(1..70).
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

#pos(p1, {f(w(37,38),w(37,70)),f(w(15,64),w(15,70)),f(w(12,7),w(12,70)),f(w(52,42),w(52,70)),f(w(59,69),w(59,70)),f(w(21,30),w(21,70)),f(w(64,24),w(64,70)),f(w(33,47),w(33,70)),f(w(48,34),w(48,70)),f(w(55,19),w(55,70)),f(w(7,50),w(7,70)),f(w(25,17),w(25,70)),f(w(36,14),w(36,70)),f(w(67,55),w(67,70)),f(w(34,59),w(34,70)),f(w(24,23),w(24,70)),f(w(61,39),w(61,70)),f(w(68,43),w(68,70)),f(w(17,7),w(17,70)),f(w(11,20),w(11,70))}, {f(w(17,41),w(13,47)),f(w(66,30),w(23,37)),f(w(38,4),w(56,25)),f(w(21,58),w(14,37)),f(w(61,36),w(9,62)),f(w(56,48),w(12,70)),f(w(42,5),w(66,16)),f(w(19,3),w(53,70)),f(w(3,41),w(58,30)),f(w(5,47),w(70,70)),f(w(12,3),w(15,70)),f(w(19,29),w(3,66)),f(w(27,35),w(23,47)),f(w(52,70),w(27,70)),f(w(25,35),w(43,68)),f(w(51,49),w(68,38)),f(w(53,36),w(44,16)),f(w(70,31),w(55,68)),f(w(38,25),w(35,43)),f(w(62,50),w(51,70))}).
