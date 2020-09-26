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

#pos(p1, {f(w(67,75),w(67,90)),f(w(17,89),w(17,90)),f(w(89,31),w(89,90)),f(w(76,82),w(76,90)),f(w(17,5),w(17,90)),f(w(26,11),w(26,90)),f(w(87,79),w(87,90)),f(w(55,44),w(55,90)),f(w(60,48),w(60,90)),f(w(85,61),w(85,90)),f(w(37,2),w(37,90)),f(w(88,56),w(88,90)),f(w(88,64),w(88,90)),f(w(88,21),w(88,90)),f(w(52,89),w(52,90)),f(w(54,42),w(54,90)),f(w(89,45),w(89,90)),f(w(86,66),w(86,90)),f(w(79,78),w(79,90)),f(w(12,51),w(12,90))}, {f(w(6,36),w(40,33)),f(w(21,79),w(88,24)),f(w(78,15),w(24,90)),f(w(85,56),w(87,24)),f(w(61,86),w(16,8)),f(w(85,4),w(43,90)),f(w(35,15),w(10,46)),f(w(35,70),w(12,74)),f(w(7,4),w(55,70)),f(w(39,71),w(86,90)),f(w(61,6),w(8,29)),f(w(51,72),w(26,50)),f(w(31,49),w(58,25)),f(w(62,3),w(19,37)),f(w(54,33),w(60,44)),f(w(17,34),w(70,42)),f(w(6,31),w(65,90)),f(w(75,17),w(78,67)),f(w(9,57),w(64,29)),f(w(80,22),w(28,53))}).
