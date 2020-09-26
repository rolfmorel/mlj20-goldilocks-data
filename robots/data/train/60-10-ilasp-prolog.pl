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

#pos(p1, {f(w(46,31),w(46,60)),f(w(35,29),w(35,60)),f(w(6,29),w(6,60)),f(w(33,50),w(33,60)),f(w(27,15),w(27,60)),f(w(34,36),w(34,60)),f(w(60,18),w(60,60)),f(w(30,59),w(30,60)),f(w(57,43),w(57,60)),f(w(50,53),w(50,60)),f(w(40,24),w(40,60)),f(w(2,2),w(2,60)),f(w(57,6),w(57,60)),f(w(15,48),w(15,60)),f(w(37,53),w(37,60)),f(w(31,42),w(31,60)),f(w(9,11),w(9,60)),f(w(37,26),w(37,60)),f(w(20,44),w(20,60)),f(w(4,36),w(4,60))}, {f(w(27,17),w(23,10)),f(w(37,56),w(54,58)),f(w(9,4),w(2,21)),f(w(56,16),w(4,5)),f(w(28,12),w(45,60)),f(w(55,15),w(13,36)),f(w(58,5),w(26,57)),f(w(4,45),w(31,60)),f(w(1,56),w(9,20)),f(w(36,23),w(8,36)),f(w(34,58),w(29,3)),f(w(52,57),w(18,3)),f(w(59,29),w(6,31)),f(w(42,16),w(43,55)),f(w(37,29),w(51,60)),f(w(39,30),w(50,38)),f(w(40,4),w(4,60)),f(w(42,52),w(60,50)),f(w(5,7),w(23,29)),f(w(14,26),w(60,16))}).
