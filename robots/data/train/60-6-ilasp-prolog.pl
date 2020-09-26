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

#pos(p1, {f(w(9,35),w(9,60)),f(w(27,40),w(27,60)),f(w(46,15),w(46,60)),f(w(33,17),w(33,60)),f(w(4,3),w(4,60)),f(w(2,27),w(2,60)),f(w(16,46),w(16,60)),f(w(47,20),w(47,60)),f(w(9,48),w(9,60)),f(w(32,36),w(32,60)),f(w(40,51),w(40,60)),f(w(54,56),w(54,60)),f(w(59,52),w(59,60)),f(w(60,6),w(60,60)),f(w(46,19),w(46,60)),f(w(26,45),w(26,60)),f(w(8,29),w(8,60)),f(w(2,44),w(2,60)),f(w(43,29),w(43,60)),f(w(4,50),w(4,60))}, {f(w(14,30),w(23,54)),f(w(48,48),w(22,56)),f(w(19,47),w(18,18)),f(w(49,44),w(54,48)),f(w(34,46),w(6,44)),f(w(20,47),w(46,14)),f(w(28,21),w(20,31)),f(w(33,44),w(49,46)),f(w(48,26),w(44,12)),f(w(50,38),w(22,57)),f(w(49,31),w(49,50)),f(w(28,31),w(58,10)),f(w(58,21),w(25,14)),f(w(42,17),w(33,45)),f(w(35,5),w(39,9)),f(w(37,34),w(8,35)),f(w(46,8),w(31,32)),f(w(1,16),w(46,29)),f(w(3,48),w(57,60)),f(w(38,33),w(1,6))}).
