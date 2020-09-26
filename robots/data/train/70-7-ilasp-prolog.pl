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

#pos(p1, {f(w(20,31),w(20,70)),f(w(20,12),w(20,70)),f(w(9,57),w(9,70)),f(w(10,37),w(10,70)),f(w(1,48),w(1,70)),f(w(5,60),w(5,70)),f(w(31,59),w(31,70)),f(w(60,31),w(60,70)),f(w(67,20),w(67,70)),f(w(51,68),w(51,70)),f(w(2,60),w(2,70)),f(w(2,12),w(2,70)),f(w(44,23),w(44,70)),f(w(63,64),w(63,70)),f(w(63,15),w(63,70)),f(w(19,67),w(19,70)),f(w(32,5),w(32,70)),f(w(46,34),w(46,70)),f(w(39,63),w(39,70)),f(w(12,37),w(12,70))}, {f(w(70,41),w(53,54)),f(w(30,47),w(11,70)),f(w(6,37),w(34,70)),f(w(57,18),w(10,22)),f(w(64,35),w(38,20)),f(w(53,17),w(24,70)),f(w(22,12),w(16,70)),f(w(48,32),w(67,39)),f(w(14,45),w(52,24)),f(w(47,13),w(9,40)),f(w(61,29),w(26,70)),f(w(4,38),w(25,36)),f(w(26,34),w(47,44)),f(w(11,14),w(65,33)),f(w(56,21),w(22,31)),f(w(52,3),w(59,70)),f(w(33,62),w(4,40)),f(w(50,21),w(18,47)),f(w(7,10),w(35,13)),f(w(39,18),w(56,70))}).
