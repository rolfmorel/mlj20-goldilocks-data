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

#pos(p1, {f(w(6,24),w(6,60)),f(w(53,32),w(53,60)),f(w(8,57),w(8,60)),f(w(53,31),w(53,60)),f(w(18,30),w(18,60)),f(w(48,55),w(48,60)),f(w(38,32),w(38,60)),f(w(14,47),w(14,60)),f(w(26,28),w(26,60)),f(w(39,54),w(39,60)),f(w(20,29),w(20,60)),f(w(12,29),w(12,60)),f(w(40,55),w(40,60)),f(w(22,45),w(22,60)),f(w(60,24),w(60,60)),f(w(6,5),w(6,60)),f(w(50,59),w(50,60)),f(w(10,20),w(10,60)),f(w(2,23),w(2,60)),f(w(5,23),w(5,60))}, {f(w(31,1),w(46,53)),f(w(12,21),w(41,54)),f(w(46,53),w(53,60)),f(w(1,13),w(22,60)),f(w(10,57),w(15,53)),f(w(39,46),w(1,60)),f(w(28,17),w(32,15)),f(w(20,31),w(8,25)),f(w(57,22),w(1,44)),f(w(50,32),w(58,59)),f(w(52,39),w(21,21)),f(w(5,44),w(47,59)),f(w(55,53),w(51,5)),f(w(4,35),w(51,12)),f(w(20,18),w(16,60)),f(w(15,20),w(32,40)),f(w(12,12),w(2,2)),f(w(33,54),w(49,52)),f(w(12,51),w(16,3)),f(w(54,60),w(20,22))}).
