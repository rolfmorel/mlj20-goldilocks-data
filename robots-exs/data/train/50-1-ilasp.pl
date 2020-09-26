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

#pos(p0, {f(w(23,30))}, {}, {
start_state(w(23,4)).
}).
#pos(p1, {f(w(23,30))}, {}, {
start_state(w(23,7)).
}).
#pos(p2, {f(w(5,30))}, {}, {
start_state(w(5,12)).
}).
#pos(p3, {f(w(21,30))}, {}, {
start_state(w(21,13)).
}).
#pos(p4, {f(w(28,30))}, {}, {
start_state(w(28,22)).
}).
#pos(p5, {f(w(16,30))}, {}, {
start_state(w(16,10)).
}).
#pos(p6, {f(w(15,30))}, {}, {
start_state(w(15,9)).
}).
#pos(p7, {f(w(2,30))}, {}, {
start_state(w(2,21)).
}).
#pos(p8, {f(w(18,30))}, {}, {
start_state(w(18,18)).
}).
#pos(p9, {f(w(17,30))}, {}, {
start_state(w(17,21)).
}).
#pos(p10, {f(w(13,30))}, {}, {
start_state(w(13,15)).
}).
#pos(p11, {f(w(4,30))}, {}, {
start_state(w(4,20)).
}).
#pos(p12, {f(w(8,30))}, {}, {
start_state(w(8,4)).
}).
#pos(p13, {f(w(27,30))}, {}, {
start_state(w(27,15)).
}).
#pos(p14, {f(w(16,30))}, {}, {
start_state(w(16,21)).
}).
#pos(p15, {f(w(1,30))}, {}, {
start_state(w(1,12)).
}).
#pos(p16, {f(w(5,30))}, {}, {
start_state(w(5,8)).
}).
#pos(p17, {f(w(22,30))}, {}, {
start_state(w(22,28)).
}).
#pos(p18, {f(w(5,30))}, {}, {
start_state(w(5,16)).
}).
#pos(p19, {f(w(5,30))}, {}, {
start_state(w(5,11)).
}).
#pos(p20, {f(w(24,30))}, {}, {
start_state(w(24,25)).
}).
#pos(p21, {f(w(25,30))}, {}, {
start_state(w(25,29)).
}).
#pos(p22, {f(w(1,30))}, {}, {
start_state(w(1,14)).
}).
#pos(p23, {f(w(21,30))}, {}, {
start_state(w(21,8)).
}).
#pos(p24, {f(w(6,30))}, {}, {
start_state(w(6,19)).
}).
#pos(p25, {f(w(11,30))}, {}, {
start_state(w(11,5)).
}).
#pos(p26, {f(w(23,30))}, {}, {
start_state(w(23,4)).
}).
#pos(p27, {f(w(9,30))}, {}, {
start_state(w(9,21)).
}).
#pos(p28, {f(w(9,30))}, {}, {
start_state(w(9,7)).
}).
#pos(p29, {f(w(20,30))}, {}, {
start_state(w(20,2)).
}).
#pos(p30, {f(w(14,30))}, {}, {
start_state(w(14,12)).
}).
#pos(p31, {f(w(2,30))}, {}, {
start_state(w(2,1)).
}).
#pos(p32, {f(w(13,30))}, {}, {
start_state(w(13,15)).
}).
#pos(p33, {f(w(15,30))}, {}, {
start_state(w(15,2)).
}).
#pos(p34, {f(w(22,30))}, {}, {
start_state(w(22,3)).
}).
#pos(p35, {f(w(12,30))}, {}, {
start_state(w(12,5)).
}).
#pos(p36, {f(w(4,30))}, {}, {
start_state(w(4,29)).
}).
#pos(p37, {f(w(4,30))}, {}, {
start_state(w(4,23)).
}).
#pos(p38, {f(w(27,30))}, {}, {
start_state(w(27,29)).
}).
#pos(p39, {f(w(16,30))}, {}, {
start_state(w(16,7)).
}).
#pos(p40, {f(w(9,30))}, {}, {
start_state(w(9,18)).
}).
#pos(p41, {f(w(8,30))}, {}, {
start_state(w(8,3)).
}).
#pos(p42, {f(w(28,30))}, {}, {
start_state(w(28,26)).
}).
#pos(p43, {f(w(3,30))}, {}, {
start_state(w(3,21)).
}).
#pos(p44, {f(w(7,30))}, {}, {
start_state(w(7,26)).
}).
#pos(p45, {f(w(23,30))}, {}, {
start_state(w(23,2)).
}).
#pos(p46, {f(w(18,30))}, {}, {
start_state(w(18,8)).
}).
#pos(p47, {f(w(17,30))}, {}, {
start_state(w(17,7)).
}).
#pos(p48, {f(w(18,30))}, {}, {
start_state(w(18,14)).
}).
#pos(p49, {f(w(24,30))}, {}, {
start_state(w(24,25)).
}).
#pos(n0, {}, {f(w(9,30))}, {
start_state(w(11,1)).
}).
#pos(n1, {}, {f(w(26,30))}, {
start_state(w(23,7)).
}).
#pos(n2, {}, {f(w(14,14))}, {
start_state(w(25,19)).
}).
#pos(n3, {}, {f(w(8,2))}, {
start_state(w(24,11)).
}).
#pos(n4, {}, {f(w(17,30))}, {
start_state(w(13,6)).
}).
#pos(n5, {}, {f(w(5,13))}, {
start_state(w(26,14)).
}).
#pos(n6, {}, {f(w(19,26))}, {
start_state(w(12,30)).
}).
#pos(n7, {}, {f(w(30,28))}, {
start_state(w(10,6)).
}).
#pos(n8, {}, {f(w(5,20))}, {
start_state(w(14,30)).
}).
#pos(n9, {}, {f(w(4,30))}, {
start_state(w(10,26)).
}).
#pos(n10, {}, {f(w(8,30))}, {
start_state(w(1,25)).
}).
#pos(n11, {}, {f(w(10,30))}, {
start_state(w(26,24)).
}).
#pos(n12, {}, {f(w(12,22))}, {
start_state(w(13,4)).
}).
#pos(n13, {}, {f(w(26,23))}, {
start_state(w(15,12)).
}).
#pos(n14, {}, {f(w(23,30))}, {
start_state(w(28,16)).
}).
#pos(n15, {}, {f(w(22,30))}, {
start_state(w(2,6)).
}).
#pos(n16, {}, {f(w(23,30))}, {
start_state(w(5,29)).
}).
#pos(n17, {}, {f(w(15,30))}, {
start_state(w(17,16)).
}).
#pos(n18, {}, {f(w(14,29))}, {
start_state(w(17,25)).
}).
#pos(n19, {}, {f(w(2,29))}, {
start_state(w(5,5)).
}).
#pos(n20, {}, {f(w(28,21))}, {
start_state(w(25,13)).
}).
#pos(n21, {}, {f(w(9,30))}, {
start_state(w(8,29)).
}).
#pos(n22, {}, {f(w(8,13))}, {
start_state(w(27,9)).
}).
#pos(n23, {}, {f(w(21,12))}, {
start_state(w(25,21)).
}).
#pos(n24, {}, {f(w(18,22))}, {
start_state(w(15,21)).
}).
#pos(n25, {}, {f(w(18,6))}, {
start_state(w(12,29)).
}).
#pos(n26, {}, {f(w(15,22))}, {
start_state(w(2,25)).
}).
#pos(n27, {}, {f(w(16,28))}, {
start_state(w(29,5)).
}).
#pos(n28, {}, {f(w(8,30))}, {
start_state(w(21,26)).
}).
#pos(n29, {}, {f(w(5,8))}, {
start_state(w(4,9)).
}).
#pos(n30, {}, {f(w(3,22))}, {
start_state(w(5,19)).
}).
#pos(n31, {}, {f(w(13,28))}, {
start_state(w(17,3)).
}).
#pos(n32, {}, {f(w(6,30))}, {
start_state(w(17,20)).
}).
#pos(n33, {}, {f(w(28,30))}, {
start_state(w(25,21)).
}).
#pos(n34, {}, {f(w(8,6))}, {
start_state(w(29,13)).
}).
#pos(n35, {}, {f(w(8,11))}, {
start_state(w(5,4)).
}).
#pos(n36, {}, {f(w(25,8))}, {
start_state(w(15,11)).
}).
#pos(n37, {}, {f(w(11,19))}, {
start_state(w(21,28)).
}).
#pos(n38, {}, {f(w(27,30))}, {
start_state(w(4,4)).
}).
#pos(n39, {}, {f(w(23,11))}, {
start_state(w(25,6)).
}).
#pos(n40, {}, {f(w(1,8))}, {
start_state(w(22,27)).
}).
#pos(n41, {}, {f(w(20,7))}, {
start_state(w(26,19)).
}).
#pos(n42, {}, {f(w(19,29))}, {
start_state(w(30,22)).
}).
#pos(n43, {}, {f(w(21,16))}, {
start_state(w(19,17)).
}).
#pos(n44, {}, {f(w(12,6))}, {
start_state(w(11,17)).
}).
#pos(n45, {}, {f(w(22,21))}, {
start_state(w(23,3)).
}).
#pos(n46, {}, {f(w(3,20))}, {
start_state(w(16,12)).
}).
#pos(n47, {}, {f(w(10,22))}, {
start_state(w(3,1)).
}).
#pos(n48, {}, {f(w(30,30))}, {
start_state(w(25,30)).
}).
#pos(n49, {}, {f(w(8,16))}, {
start_state(w(14,13)).
}).
