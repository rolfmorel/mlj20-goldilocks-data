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

#pos(p1, {f(w(15,49),w(15,70)),f(w(36,57),w(36,70)),f(w(21,37),w(21,70)),f(w(2,10),w(2,70)),f(w(26,43),w(26,70)),f(w(53,45),w(53,70)),f(w(28,60),w(28,70)),f(w(31,35),w(31,70)),f(w(70,36),w(70,70)),f(w(33,21),w(33,70)),f(w(57,53),w(57,70)),f(w(56,69),w(56,70)),f(w(65,14),w(65,70)),f(w(70,33),w(70,70)),f(w(7,59),w(7,70)),f(w(49,52),w(49,70)),f(w(44,50),w(44,70)),f(w(47,15),w(47,70)),f(w(69,54),w(69,70)),f(w(7,54),w(7,70))}, {f(w(23,2),w(17,70)),f(w(11,20),w(51,57)),f(w(51,61),w(64,22)),f(w(53,1),w(64,70)),f(w(65,68),w(48,70)),f(w(35,39),w(55,70)),f(w(12,61),w(45,51)),f(w(45,57),w(36,70)),f(w(64,21),w(30,51)),f(w(50,37),w(16,25)),f(w(60,42),w(22,70)),f(w(63,45),w(2,68)),f(w(69,21),w(45,70)),f(w(15,31),w(70,50)),f(w(34,8),w(26,39)),f(w(24,36),w(38,32)),f(w(68,34),w(47,58)),f(w(18,17),w(50,11)),f(w(42,6),w(44,70)),f(w(5,69),w(38,70))}).
