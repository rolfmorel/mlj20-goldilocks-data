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

#pos(p1, {f(w(65,33),w(65,70)),f(w(11,40),w(11,70)),f(w(48,61),w(48,70)),f(w(2,14),w(2,70)),f(w(1,68),w(1,70)),f(w(48,51),w(48,70)),f(w(42,17),w(42,70)),f(w(9,52),w(9,70)),f(w(34,11),w(34,70)),f(w(38,57),w(38,70)),f(w(32,10),w(32,70)),f(w(57,43),w(57,70)),f(w(56,2),w(56,70)),f(w(15,63),w(15,70)),f(w(24,59),w(24,70)),f(w(4,11),w(4,70)),f(w(59,63),w(59,70)),f(w(56,51),w(56,70)),f(w(30,49),w(30,70)),f(w(30,58),w(30,70))}, {f(w(39,26),w(4,13)),f(w(6,22),w(39,60)),f(w(53,58),w(7,29)),f(w(67,41),w(69,70)),f(w(40,16),w(29,70)),f(w(23,30),w(40,33)),f(w(27,19),w(23,19)),f(w(19,23),w(65,40)),f(w(28,15),w(31,70)),f(w(53,53),w(7,70)),f(w(54,54),w(65,70)),f(w(44,19),w(69,22)),f(w(2,38),w(52,46)),f(w(40,30),w(41,25)),f(w(55,53),w(65,70)),f(w(10,22),w(52,23)),f(w(17,32),w(61,15)),f(w(26,55),w(38,39)),f(w(42,35),w(10,38)),f(w(48,13),w(44,7))}).
