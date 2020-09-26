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

#pos(p1, {f(w(46,69),w(46,70)),f(w(6,36),w(6,70)),f(w(13,23),w(13,70)),f(w(31,57),w(31,70)),f(w(38,61),w(38,70)),f(w(13,49),w(13,70)),f(w(26,9),w(26,70)),f(w(68,1),w(68,70)),f(w(4,27),w(4,70)),f(w(19,64),w(19,70)),f(w(70,7),w(70,70)),f(w(33,18),w(33,70)),f(w(20,62),w(20,70)),f(w(6,33),w(6,70)),f(w(13,20),w(13,70)),f(w(13,48),w(13,70)),f(w(4,14),w(4,70)),f(w(20,29),w(20,70)),f(w(2,20),w(2,70)),f(w(51,49),w(51,70))}, {f(w(4,70),w(27,33)),f(w(26,39),w(31,48)),f(w(68,43),w(46,70)),f(w(64,55),w(63,36)),f(w(20,15),w(70,28)),f(w(24,9),w(9,16)),f(w(49,64),w(2,22)),f(w(45,19),w(70,58)),f(w(46,12),w(27,8)),f(w(59,34),w(36,35)),f(w(34,58),w(44,40)),f(w(52,16),w(2,46)),f(w(61,10),w(9,30)),f(w(24,58),w(33,61)),f(w(31,7),w(43,55)),f(w(35,5),w(9,68)),f(w(16,46),w(39,70)),f(w(9,48),w(7,41)),f(w(5,16),w(50,70)),f(w(27,49),w(17,7))}).
