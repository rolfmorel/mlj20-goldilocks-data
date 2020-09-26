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

#pos(p1, {f(w(45,65),w(45,80)),f(w(34,63),w(34,80)),f(w(65,33),w(65,80)),f(w(14,4),w(14,80)),f(w(59,36),w(59,80)),f(w(52,74),w(52,80)),f(w(79,16),w(79,80)),f(w(46,33),w(46,80)),f(w(67,62),w(67,80)),f(w(6,47),w(6,80)),f(w(38,38),w(38,80)),f(w(30,25),w(30,80)),f(w(49,61),w(49,80)),f(w(14,33),w(14,80)),f(w(5,66),w(5,80)),f(w(54,32),w(54,80)),f(w(40,29),w(40,80)),f(w(30,73),w(30,80)),f(w(62,41),w(62,80)),f(w(55,15),w(55,80))}, {f(w(54,67),w(66,31)),f(w(46,24),w(28,31)),f(w(18,22),w(77,69)),f(w(69,17),w(35,36)),f(w(7,78),w(51,65)),f(w(64,65),w(58,80)),f(w(29,40),w(20,51)),f(w(24,8),w(44,35)),f(w(38,8),w(57,80)),f(w(35,55),w(41,80)),f(w(11,18),w(25,8)),f(w(71,72),w(67,30)),f(w(75,13),w(76,45)),f(w(54,57),w(64,44)),f(w(26,59),w(59,7)),f(w(79,62),w(44,26)),f(w(59,32),w(28,5)),f(w(18,44),w(41,80)),f(w(53,16),w(38,72)),f(w(62,78),w(45,1))}).
