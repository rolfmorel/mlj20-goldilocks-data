size(90).
position(1..90).
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

#pos(p1, {f(w(33,37),w(33,90)),f(w(60,68),w(60,90)),f(w(59,5),w(59,90)),f(w(28,49),w(28,90)),f(w(26,76),w(26,90)),f(w(15,78),w(15,90)),f(w(2,4),w(2,90)),f(w(22,43),w(22,90)),f(w(40,30),w(40,90)),f(w(74,82),w(74,90)),f(w(21,45),w(21,90)),f(w(48,6),w(48,90)),f(w(15,29),w(15,90)),f(w(84,77),w(84,90)),f(w(31,53),w(31,90)),f(w(31,2),w(31,90)),f(w(24,69),w(24,90)),f(w(73,18),w(73,90)),f(w(73,54),w(73,90)),f(w(65,68),w(65,90))}, {f(w(80,79),w(60,62)),f(w(38,78),w(20,74)),f(w(31,23),w(60,37)),f(w(65,64),w(77,90)),f(w(24,65),w(44,90)),f(w(22,58),w(46,53)),f(w(7,30),w(68,6)),f(w(70,67),w(10,90)),f(w(58,15),w(86,90)),f(w(22,37),w(32,59)),f(w(76,88),w(21,90)),f(w(11,5),w(71,54)),f(w(8,89),w(28,17)),f(w(25,10),w(85,90)),f(w(57,80),w(17,10)),f(w(28,11),w(85,22)),f(w(78,4),w(37,72)),f(w(52,4),w(63,81)),f(w(23,71),w(15,50)),f(w(71,88),w(46,37))}).
