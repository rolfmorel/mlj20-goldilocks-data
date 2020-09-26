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

#pos(p1, {f(w(42,47),w(42,60)),f(w(15,23),w(15,60)),f(w(41,12),w(41,60)),f(w(11,35),w(11,60)),f(w(38,22),w(38,60)),f(w(33,12),w(33,60)),f(w(45,48),w(45,60)),f(w(50,15),w(50,60)),f(w(22,28),w(22,60)),f(w(50,28),w(50,60)),f(w(41,43),w(41,60)),f(w(45,17),w(45,60)),f(w(2,42),w(2,60)),f(w(4,11),w(4,60)),f(w(38,7),w(38,60)),f(w(57,29),w(57,60)),f(w(12,53),w(12,60)),f(w(24,58),w(24,60)),f(w(4,5),w(4,60)),f(w(21,3),w(21,60))}, {f(w(56,54),w(29,16)),f(w(47,26),w(26,50)),f(w(60,58),w(46,54)),f(w(50,22),w(24,34)),f(w(35,19),w(60,13)),f(w(38,20),w(51,27)),f(w(58,37),w(46,60)),f(w(24,20),w(49,27)),f(w(40,19),w(51,60)),f(w(47,1),w(20,46)),f(w(7,58),w(1,36)),f(w(30,34),w(46,60)),f(w(10,18),w(20,16)),f(w(31,50),w(34,60)),f(w(23,42),w(50,18)),f(w(42,9),w(31,46)),f(w(30,51),w(52,4)),f(w(4,48),w(45,35)),f(w(33,59),w(45,60)),f(w(10,5),w(35,56))}).
