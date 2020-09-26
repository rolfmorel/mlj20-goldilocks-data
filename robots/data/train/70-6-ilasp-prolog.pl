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

#pos(p1, {f(w(51,43),w(51,70)),f(w(31,54),w(31,70)),f(w(4,59),w(4,70)),f(w(66,37),w(66,70)),f(w(47,27),w(47,70)),f(w(69,22),w(69,70)),f(w(4,23),w(4,70)),f(w(26,14),w(26,70)),f(w(51,48),w(51,70)),f(w(13,46),w(13,70)),f(w(70,27),w(70,70)),f(w(18,47),w(18,70)),f(w(57,50),w(57,70)),f(w(47,9),w(47,70)),f(w(52,58),w(52,70)),f(w(10,21),w(10,70)),f(w(67,11),w(67,70)),f(w(3,27),w(3,70)),f(w(42,62),w(42,70)),f(w(68,69),w(68,70))}, {f(w(61,50),w(44,70)),f(w(52,31),w(48,70)),f(w(55,33),w(48,4)),f(w(21,6),w(24,10)),f(w(41,5),w(51,70)),f(w(64,18),w(41,30)),f(w(62,6),w(52,54)),f(w(38,15),w(37,12)),f(w(30,35),w(50,63)),f(w(67,24),w(11,43)),f(w(3,57),w(70,70)),f(w(38,31),w(15,70)),f(w(64,70),w(65,70)),f(w(55,30),w(2,53)),f(w(28,10),w(15,52)),f(w(58,9),w(57,70)),f(w(4,16),w(21,70)),f(w(46,24),w(18,29)),f(w(35,28),w(10,63)),f(w(12,66),w(28,10))}).
