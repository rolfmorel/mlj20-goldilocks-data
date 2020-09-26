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

#pos(p1, {f(w(38,32),w(38,70)),f(w(40,24),w(40,70)),f(w(5,59),w(5,70)),f(w(13,39),w(13,70)),f(w(32,39),w(32,70)),f(w(53,17),w(53,70)),f(w(28,68),w(28,70)),f(w(1,51),w(1,70)),f(w(9,63),w(9,70)),f(w(55,33),w(55,70)),f(w(11,8),w(11,70)),f(w(2,64),w(2,70)),f(w(65,49),w(65,70)),f(w(57,46),w(57,70)),f(w(61,35),w(61,70)),f(w(50,25),w(50,70)),f(w(45,44),w(45,70)),f(w(9,18),w(9,70)),f(w(43,48),w(43,70)),f(w(1,14),w(1,70))}, {f(w(23,5),w(22,48)),f(w(16,27),w(39,60)),f(w(27,36),w(6,38)),f(w(30,21),w(21,25)),f(w(52,53),w(63,29)),f(w(16,44),w(37,8)),f(w(28,7),w(44,16)),f(w(50,43),w(64,67)),f(w(22,54),w(12,70)),f(w(57,39),w(6,23)),f(w(12,7),w(8,27)),f(w(16,12),w(37,18)),f(w(45,10),w(49,1)),f(w(45,52),w(27,63)),f(w(23,52),w(70,37)),f(w(25,44),w(60,61)),f(w(48,35),w(62,3)),f(w(38,36),w(43,31)),f(w(51,10),w(40,57)),f(w(5,49),w(49,33))}).
