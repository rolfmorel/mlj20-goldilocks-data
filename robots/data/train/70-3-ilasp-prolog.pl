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

#pos(p1, {f(w(32,27),w(32,70)),f(w(47,67),w(47,70)),f(w(44,5),w(44,70)),f(w(34,3),w(34,70)),f(w(29,57),w(29,70)),f(w(22,48),w(22,70)),f(w(32,20),w(32,70)),f(w(44,46),w(44,70)),f(w(33,21),w(33,70)),f(w(43,9),w(43,70)),f(w(52,56),w(52,70)),f(w(61,29),w(61,70)),f(w(68,21),w(68,70)),f(w(43,39),w(43,70)),f(w(27,10),w(27,70)),f(w(6,16),w(6,70)),f(w(56,35),w(56,70)),f(w(46,31),w(46,70)),f(w(43,46),w(43,70)),f(w(7,53),w(7,70))}, {f(w(4,64),w(9,70)),f(w(2,62),w(35,70)),f(w(4,70),w(44,51)),f(w(63,60),w(32,58)),f(w(18,23),w(68,35)),f(w(8,58),w(29,27)),f(w(39,16),w(11,70)),f(w(53,59),w(48,25)),f(w(56,58),w(38,49)),f(w(64,23),w(55,70)),f(w(7,68),w(66,52)),f(w(17,64),w(56,70)),f(w(43,59),w(67,28)),f(w(65,24),w(22,70)),f(w(9,29),w(69,51)),f(w(36,59),w(24,47)),f(w(70,56),w(34,43)),f(w(55,45),w(17,1)),f(w(70,31),w(4,70)),f(w(53,68),w(35,70))}).
