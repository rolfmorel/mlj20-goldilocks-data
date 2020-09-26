size(80).
position(1..80).
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

#pos(p1, {f(w(23,48),w(23,80)),f(w(3,17),w(3,80)),f(w(41,41),w(41,80)),f(w(26,21),w(26,80)),f(w(23,30),w(23,80)),f(w(7,44),w(7,80)),f(w(73,49),w(73,80)),f(w(18,29),w(18,80)),f(w(22,59),w(22,80)),f(w(38,46),w(38,80)),f(w(19,23),w(19,80)),f(w(55,79),w(55,80)),f(w(72,4),w(72,80)),f(w(34,20),w(34,80)),f(w(4,4),w(4,80)),f(w(15,2),w(15,80)),f(w(63,31),w(63,80)),f(w(13,16),w(13,80)),f(w(37,51),w(37,80)),f(w(32,42),w(32,80))}, {f(w(65,42),w(36,6)),f(w(19,20),w(37,26)),f(w(18,30),w(42,74)),f(w(26,35),w(50,80)),f(w(70,12),w(29,79)),f(w(43,6),w(70,80)),f(w(44,28),w(32,76)),f(w(29,35),w(71,80)),f(w(17,66),w(27,80)),f(w(37,21),w(49,10)),f(w(62,13),w(40,17)),f(w(35,37),w(62,77)),f(w(52,47),w(29,80)),f(w(21,21),w(47,80)),f(w(35,73),w(39,72)),f(w(25,68),w(77,60)),f(w(62,11),w(4,80)),f(w(51,5),w(54,40)),f(w(16,24),w(37,80)),f(w(78,79),w(73,74))}).
