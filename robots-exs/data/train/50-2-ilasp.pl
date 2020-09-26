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

#pos(p0, {f(w(5,30))}, {}, {
start_state(w(5,15)).
}).
#pos(p1, {f(w(26,30))}, {}, {
start_state(w(26,2)).
}).
#pos(p2, {f(w(15,30))}, {}, {
start_state(w(15,4)).
}).
#pos(p3, {f(w(3,30))}, {}, {
start_state(w(3,16)).
}).
#pos(p4, {f(w(5,30))}, {}, {
start_state(w(5,24)).
}).
#pos(p5, {f(w(16,30))}, {}, {
start_state(w(16,12)).
}).
#pos(p6, {f(w(9,30))}, {}, {
start_state(w(9,29)).
}).
#pos(p7, {f(w(4,30))}, {}, {
start_state(w(4,3)).
}).
#pos(p8, {f(w(1,30))}, {}, {
start_state(w(1,29)).
}).
#pos(p9, {f(w(24,30))}, {}, {
start_state(w(24,7)).
}).
#pos(p10, {f(w(12,30))}, {}, {
start_state(w(12,7)).
}).
#pos(p11, {f(w(9,30))}, {}, {
start_state(w(9,16)).
}).
#pos(p12, {f(w(22,30))}, {}, {
start_state(w(22,13)).
}).
#pos(p13, {f(w(18,30))}, {}, {
start_state(w(18,6)).
}).
#pos(p14, {f(w(9,30))}, {}, {
start_state(w(9,27)).
}).
#pos(p15, {f(w(11,30))}, {}, {
start_state(w(11,10)).
}).
#pos(p16, {f(w(1,30))}, {}, {
start_state(w(1,1)).
}).
#pos(p17, {f(w(18,30))}, {}, {
start_state(w(18,2)).
}).
#pos(p18, {f(w(14,30))}, {}, {
start_state(w(14,15)).
}).
#pos(p19, {f(w(22,30))}, {}, {
start_state(w(22,10)).
}).
#pos(p20, {f(w(10,30))}, {}, {
start_state(w(10,17)).
}).
#pos(p21, {f(w(9,30))}, {}, {
start_state(w(9,16)).
}).
#pos(p22, {f(w(28,30))}, {}, {
start_state(w(28,25)).
}).
#pos(p23, {f(w(12,30))}, {}, {
start_state(w(12,28)).
}).
#pos(p24, {f(w(8,30))}, {}, {
start_state(w(8,27)).
}).
#pos(p25, {f(w(11,30))}, {}, {
start_state(w(11,7)).
}).
#pos(p26, {f(w(24,30))}, {}, {
start_state(w(24,14)).
}).
#pos(p27, {f(w(10,30))}, {}, {
start_state(w(10,9)).
}).
#pos(p28, {f(w(2,30))}, {}, {
start_state(w(2,25)).
}).
#pos(p29, {f(w(9,30))}, {}, {
start_state(w(9,4)).
}).
#pos(p30, {f(w(5,30))}, {}, {
start_state(w(5,21)).
}).
#pos(p31, {f(w(23,30))}, {}, {
start_state(w(23,24)).
}).
#pos(p32, {f(w(28,30))}, {}, {
start_state(w(28,12)).
}).
#pos(p33, {f(w(20,30))}, {}, {
start_state(w(20,28)).
}).
#pos(p34, {f(w(30,30))}, {}, {
start_state(w(30,28)).
}).
#pos(p35, {f(w(20,30))}, {}, {
start_state(w(20,17)).
}).
#pos(p36, {f(w(5,30))}, {}, {
start_state(w(5,17)).
}).
#pos(p37, {f(w(28,30))}, {}, {
start_state(w(28,10)).
}).
#pos(p38, {f(w(29,30))}, {}, {
start_state(w(29,17)).
}).
#pos(p39, {f(w(4,30))}, {}, {
start_state(w(4,27)).
}).
#pos(p40, {f(w(18,30))}, {}, {
start_state(w(18,18)).
}).
#pos(p41, {f(w(20,30))}, {}, {
start_state(w(20,15)).
}).
#pos(p42, {f(w(18,30))}, {}, {
start_state(w(18,20)).
}).
#pos(p43, {f(w(6,30))}, {}, {
start_state(w(6,9)).
}).
#pos(p44, {f(w(24,30))}, {}, {
start_state(w(24,12)).
}).
#pos(p45, {f(w(6,30))}, {}, {
start_state(w(6,9)).
}).
#pos(p46, {f(w(24,30))}, {}, {
start_state(w(24,27)).
}).
#pos(p47, {f(w(21,30))}, {}, {
start_state(w(21,8)).
}).
#pos(p48, {f(w(5,30))}, {}, {
start_state(w(5,7)).
}).
#pos(p49, {f(w(17,30))}, {}, {
start_state(w(17,23)).
}).
#pos(n0, {}, {f(w(14,30))}, {
start_state(w(29,26)).
}).
#pos(n1, {}, {f(w(28,30))}, {
start_state(w(5,29)).
}).
#pos(n2, {}, {f(w(18,14))}, {
start_state(w(18,14)).
}).
#pos(n3, {}, {f(w(23,30))}, {
start_state(w(14,13)).
}).
#pos(n4, {}, {f(w(23,30))}, {
start_state(w(16,30)).
}).
#pos(n5, {}, {f(w(1,26))}, {
start_state(w(2,2)).
}).
#pos(n6, {}, {f(w(3,23))}, {
start_state(w(12,4)).
}).
#pos(n7, {}, {f(w(7,30))}, {
start_state(w(16,28)).
}).
#pos(n8, {}, {f(w(6,30))}, {
start_state(w(8,22)).
}).
#pos(n9, {}, {f(w(27,26))}, {
start_state(w(5,8)).
}).
#pos(n10, {}, {f(w(9,1))}, {
start_state(w(11,15)).
}).
#pos(n11, {}, {f(w(1,30))}, {
start_state(w(3,15)).
}).
#pos(n12, {}, {f(w(30,29))}, {
start_state(w(21,21)).
}).
#pos(n13, {}, {f(w(30,27))}, {
start_state(w(26,19)).
}).
#pos(n14, {}, {f(w(26,29))}, {
start_state(w(7,12)).
}).
#pos(n15, {}, {f(w(9,28))}, {
start_state(w(24,6)).
}).
#pos(n16, {}, {f(w(5,24))}, {
start_state(w(25,24)).
}).
#pos(n17, {}, {f(w(27,17))}, {
start_state(w(10,10)).
}).
#pos(n18, {}, {f(w(29,19))}, {
start_state(w(25,21)).
}).
#pos(n19, {}, {f(w(16,28))}, {
start_state(w(22,23)).
}).
#pos(n20, {}, {f(w(28,30))}, {
start_state(w(12,18)).
}).
#pos(n21, {}, {f(w(6,21))}, {
start_state(w(13,30)).
}).
#pos(n22, {}, {f(w(18,21))}, {
start_state(w(27,19)).
}).
#pos(n23, {}, {f(w(20,18))}, {
start_state(w(13,9)).
}).
#pos(n24, {}, {f(w(18,30))}, {
start_state(w(24,3)).
}).
#pos(n25, {}, {f(w(17,17))}, {
start_state(w(10,19)).
}).
#pos(n26, {}, {f(w(21,27))}, {
start_state(w(9,9)).
}).
#pos(n27, {}, {f(w(13,29))}, {
start_state(w(25,5)).
}).
#pos(n28, {}, {f(w(24,15))}, {
start_state(w(9,8)).
}).
#pos(n29, {}, {f(w(25,6))}, {
start_state(w(3,9)).
}).
#pos(n30, {}, {f(w(24,30))}, {
start_state(w(25,4)).
}).
#pos(n31, {}, {f(w(27,10))}, {
start_state(w(28,14)).
}).
#pos(n32, {}, {f(w(28,29))}, {
start_state(w(26,26)).
}).
#pos(n33, {}, {f(w(11,30))}, {
start_state(w(17,17)).
}).
#pos(n34, {}, {f(w(29,27))}, {
start_state(w(14,15)).
}).
#pos(n35, {}, {f(w(17,17))}, {
start_state(w(11,1)).
}).
#pos(n36, {}, {f(w(22,29))}, {
start_state(w(15,27)).
}).
#pos(n37, {}, {f(w(7,7))}, {
start_state(w(15,16)).
}).
#pos(n38, {}, {f(w(6,13))}, {
start_state(w(1,28)).
}).
#pos(n39, {}, {f(w(5,30))}, {
start_state(w(1,7)).
}).
#pos(n40, {}, {f(w(18,12))}, {
start_state(w(6,24)).
}).
#pos(n41, {}, {f(w(20,21))}, {
start_state(w(22,14)).
}).
#pos(n42, {}, {f(w(17,14))}, {
start_state(w(15,15)).
}).
#pos(n43, {}, {f(w(10,7))}, {
start_state(w(8,26)).
}).
#pos(n44, {}, {f(w(24,7))}, {
start_state(w(2,13)).
}).
#pos(n45, {}, {f(w(3,1))}, {
start_state(w(1,27)).
}).
#pos(n46, {}, {f(w(24,22))}, {
start_state(w(23,26)).
}).
#pos(n47, {}, {f(w(20,20))}, {
start_state(w(17,7)).
}).
#pos(n48, {}, {f(w(3,30))}, {
start_state(w(27,3)).
}).
#pos(n49, {}, {f(w(4,24))}, {
start_state(w(29,10)).
}).
