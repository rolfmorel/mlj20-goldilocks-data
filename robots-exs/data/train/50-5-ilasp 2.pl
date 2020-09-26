size(30).
position(1..30).
#modeh(f(var(state)), (positive)).
#modeh(start_state(var(state)), (positive)).
#modeb(1,move_up(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(1,move_down(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(1,move_left(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(1,move_right(var(state),var(state)), (anti_reflexive,symmetric,positive)).
#modeb(1,at_top(var(state)), (positive)).
#modeb(1,at_bottom(var(state)), (positive)).
#modeb(1,at_left(var(state)), (positive)).
#modeb(1,at_right(var(state)), (positive)).
#modeb(1,start_state(var(state)), (positive)).

#bias(":- occurs(V, X), #false : occurs(V, Y), Y != X.").
#bias("occurs(X, f(X)) :- head(f(X)).").
#bias("occurs(X, start_state(X)) :- head(start_state(X)).").
#bias("occurs(X, start_state(X)) :- body(start_state(X)).").
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

#pos(p0, {f(w(4,30))}, {}, {
start_state(w(4,18)).
}).
#pos(p1, {f(w(22,30))}, {}, {
start_state(w(22,18)).
}).
#pos(p2, {f(w(26,30))}, {}, {
start_state(w(26,15)).
}).
#pos(p3, {f(w(10,30))}, {}, {
start_state(w(10,14)).
}).
#pos(p4, {f(w(3,30))}, {}, {
start_state(w(3,12)).
}).
#pos(p5, {f(w(24,30))}, {}, {
start_state(w(24,12)).
}).
#pos(p6, {f(w(24,30))}, {}, {
start_state(w(24,28)).
}).
#pos(p7, {f(w(8,30))}, {}, {
start_state(w(8,7)).
}).
#pos(p8, {f(w(22,30))}, {}, {
start_state(w(22,27)).
}).
#pos(p9, {f(w(25,30))}, {}, {
start_state(w(25,11)).
}).
#pos(p10, {f(w(5,30))}, {}, {
start_state(w(5,25)).
}).
#pos(p11, {f(w(19,30))}, {}, {
start_state(w(19,11)).
}).
#pos(p12, {f(w(7,30))}, {}, {
start_state(w(7,3)).
}).
#pos(p13, {f(w(24,30))}, {}, {
start_state(w(24,14)).
}).
#pos(p14, {f(w(29,30))}, {}, {
start_state(w(29,19)).
}).
#pos(p15, {f(w(27,30))}, {}, {
start_state(w(27,16)).
}).
#pos(p16, {f(w(26,30))}, {}, {
start_state(w(26,16)).
}).
#pos(p17, {f(w(10,30))}, {}, {
start_state(w(10,18)).
}).
#pos(p18, {f(w(22,30))}, {}, {
start_state(w(22,9)).
}).
#pos(p19, {f(w(3,30))}, {}, {
start_state(w(3,28)).
}).
#pos(p20, {f(w(22,30))}, {}, {
start_state(w(22,28)).
}).
#pos(p21, {f(w(1,30))}, {}, {
start_state(w(1,22)).
}).
#pos(p22, {f(w(1,30))}, {}, {
start_state(w(1,24)).
}).
#pos(p23, {f(w(3,30))}, {}, {
start_state(w(3,3)).
}).
#pos(p24, {f(w(9,30))}, {}, {
start_state(w(9,23)).
}).
#pos(p25, {f(w(22,30))}, {}, {
start_state(w(22,11)).
}).
#pos(p26, {f(w(10,30))}, {}, {
start_state(w(10,10)).
}).
#pos(p27, {f(w(27,30))}, {}, {
start_state(w(27,2)).
}).
#pos(p28, {f(w(23,30))}, {}, {
start_state(w(23,21)).
}).
#pos(p29, {f(w(24,30))}, {}, {
start_state(w(24,14)).
}).
#pos(p30, {f(w(18,30))}, {}, {
start_state(w(18,11)).
}).
#pos(p31, {f(w(23,30))}, {}, {
start_state(w(23,17)).
}).
#pos(p32, {f(w(28,30))}, {}, {
start_state(w(28,19)).
}).
#pos(p33, {f(w(17,30))}, {}, {
start_state(w(17,16)).
}).
#pos(p34, {f(w(14,30))}, {}, {
start_state(w(14,26)).
}).
#pos(p35, {f(w(10,30))}, {}, {
start_state(w(10,28)).
}).
#pos(p36, {f(w(14,30))}, {}, {
start_state(w(14,10)).
}).
#pos(p37, {f(w(7,30))}, {}, {
start_state(w(7,15)).
}).
#pos(p38, {f(w(19,30))}, {}, {
start_state(w(19,11)).
}).
#pos(p39, {f(w(15,30))}, {}, {
start_state(w(15,20)).
}).
#pos(p40, {f(w(2,30))}, {}, {
start_state(w(2,16)).
}).
#pos(p41, {f(w(28,30))}, {}, {
start_state(w(28,24)).
}).
#pos(p42, {f(w(14,30))}, {}, {
start_state(w(14,5)).
}).
#pos(p43, {f(w(4,30))}, {}, {
start_state(w(4,17)).
}).
#pos(p44, {f(w(8,30))}, {}, {
start_state(w(8,10)).
}).
#pos(p45, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p46, {f(w(27,30))}, {}, {
start_state(w(27,18)).
}).
#pos(p47, {f(w(9,30))}, {}, {
start_state(w(9,3)).
}).
#pos(p48, {f(w(29,30))}, {}, {
start_state(w(29,2)).
}).
#pos(p49, {f(w(6,30))}, {}, {
start_state(w(6,1)).
}).
#pos(n0, {}, {f(w(30,20))}, {
start_state(w(14,20)).
}).
#pos(n1, {}, {f(w(16,30))}, {
start_state(w(25,29)).
}).
#pos(n2, {}, {f(w(22,16))}, {
start_state(w(28,18)).
}).
#pos(n3, {}, {f(w(29,8))}, {
start_state(w(26,30)).
}).
#pos(n4, {}, {f(w(28,30))}, {
start_state(w(3,6)).
}).
#pos(n5, {}, {f(w(23,22))}, {
start_state(w(6,3)).
}).
#pos(n6, {}, {f(w(12,3))}, {
start_state(w(1,21)).
}).
#pos(n7, {}, {f(w(16,18))}, {
start_state(w(16,4)).
}).
#pos(n8, {}, {f(w(4,29))}, {
start_state(w(30,9)).
}).
#pos(n9, {}, {f(w(2,30))}, {
start_state(w(18,2)).
}).
#pos(n10, {}, {f(w(17,9))}, {
start_state(w(15,9)).
}).
#pos(n11, {}, {f(w(30,14))}, {
start_state(w(13,26)).
}).
#pos(n12, {}, {f(w(7,4))}, {
start_state(w(16,14)).
}).
#pos(n13, {}, {f(w(29,24))}, {
start_state(w(3,22)).
}).
#pos(n14, {}, {f(w(5,16))}, {
start_state(w(5,11)).
}).
#pos(n15, {}, {f(w(24,30))}, {
start_state(w(4,11)).
}).
#pos(n16, {}, {f(w(1,16))}, {
start_state(w(13,26)).
}).
#pos(n17, {}, {f(w(23,18))}, {
start_state(w(7,24)).
}).
#pos(n18, {}, {f(w(16,30))}, {
start_state(w(23,30)).
}).
#pos(n19, {}, {f(w(17,30))}, {
start_state(w(18,18)).
}).
#pos(n20, {}, {f(w(23,30))}, {
start_state(w(19,15)).
}).
#pos(n21, {}, {f(w(30,29))}, {
start_state(w(30,10)).
}).
#pos(n22, {}, {f(w(13,30))}, {
start_state(w(17,13)).
}).
#pos(n23, {}, {f(w(16,30))}, {
start_state(w(13,20)).
}).
#pos(n24, {}, {f(w(22,27))}, {
start_state(w(1,14)).
}).
#pos(n25, {}, {f(w(13,30))}, {
start_state(w(16,13)).
}).
#pos(n26, {}, {f(w(16,12))}, {
start_state(w(27,18)).
}).
#pos(n27, {}, {f(w(6,26))}, {
start_state(w(11,12)).
}).
#pos(n28, {}, {f(w(23,1))}, {
start_state(w(21,8)).
}).
#pos(n29, {}, {f(w(11,30))}, {
start_state(w(6,14)).
}).
#pos(n30, {}, {f(w(24,7))}, {
start_state(w(6,6)).
}).
#pos(n31, {}, {f(w(2,30))}, {
start_state(w(18,8)).
}).
#pos(n32, {}, {f(w(9,2))}, {
start_state(w(12,21)).
}).
#pos(n33, {}, {f(w(23,9))}, {
start_state(w(16,22)).
}).
#pos(n34, {}, {f(w(10,25))}, {
start_state(w(12,29)).
}).
#pos(n35, {}, {f(w(25,29))}, {
start_state(w(10,27)).
}).
#pos(n36, {}, {f(w(26,4))}, {
start_state(w(27,9)).
}).
#pos(n37, {}, {f(w(11,27))}, {
start_state(w(8,8)).
}).
#pos(n38, {}, {f(w(18,25))}, {
start_state(w(23,18)).
}).
#pos(n39, {}, {f(w(3,9))}, {
start_state(w(23,19)).
}).
#pos(n40, {}, {f(w(30,27))}, {
start_state(w(25,24)).
}).
#pos(n41, {}, {f(w(28,20))}, {
start_state(w(1,15)).
}).
#pos(n42, {}, {f(w(30,30))}, {
start_state(w(14,17)).
}).
#pos(n43, {}, {f(w(17,26))}, {
start_state(w(3,8)).
}).
#pos(n44, {}, {f(w(11,30))}, {
start_state(w(28,7)).
}).
#pos(n45, {}, {f(w(19,23))}, {
start_state(w(13,1)).
}).
#pos(n46, {}, {f(w(7,20))}, {
start_state(w(15,21)).
}).
#pos(n47, {}, {f(w(16,15))}, {
start_state(w(19,6)).
}).
#pos(n48, {}, {f(w(17,30))}, {
start_state(w(15,12)).
}).
#pos(n49, {}, {f(w(25,10))}, {
start_state(w(2,12)).
}).
