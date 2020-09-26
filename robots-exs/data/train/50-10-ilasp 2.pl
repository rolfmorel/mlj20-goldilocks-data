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
start_state(w(5,17)).
}).
#pos(p1, {f(w(2,30))}, {}, {
start_state(w(2,15)).
}).
#pos(p2, {f(w(7,30))}, {}, {
start_state(w(7,4)).
}).
#pos(p3, {f(w(11,30))}, {}, {
start_state(w(11,26)).
}).
#pos(p4, {f(w(21,30))}, {}, {
start_state(w(21,2)).
}).
#pos(p5, {f(w(24,30))}, {}, {
start_state(w(24,21)).
}).
#pos(p6, {f(w(23,30))}, {}, {
start_state(w(23,4)).
}).
#pos(p7, {f(w(7,30))}, {}, {
start_state(w(7,27)).
}).
#pos(p8, {f(w(29,30))}, {}, {
start_state(w(29,27)).
}).
#pos(p9, {f(w(9,30))}, {}, {
start_state(w(9,1)).
}).
#pos(p10, {f(w(8,30))}, {}, {
start_state(w(8,19)).
}).
#pos(p11, {f(w(10,30))}, {}, {
start_state(w(10,24)).
}).
#pos(p12, {f(w(5,30))}, {}, {
start_state(w(5,11)).
}).
#pos(p13, {f(w(23,30))}, {}, {
start_state(w(23,25)).
}).
#pos(p14, {f(w(24,30))}, {}, {
start_state(w(24,28)).
}).
#pos(p15, {f(w(2,30))}, {}, {
start_state(w(2,13)).
}).
#pos(p16, {f(w(9,30))}, {}, {
start_state(w(9,1)).
}).
#pos(p17, {f(w(30,30))}, {}, {
start_state(w(30,9)).
}).
#pos(p18, {f(w(29,30))}, {}, {
start_state(w(29,12)).
}).
#pos(p19, {f(w(17,30))}, {}, {
start_state(w(17,3)).
}).
#pos(p20, {f(w(28,30))}, {}, {
start_state(w(28,1)).
}).
#pos(p21, {f(w(7,30))}, {}, {
start_state(w(7,25)).
}).
#pos(p22, {f(w(1,30))}, {}, {
start_state(w(1,26)).
}).
#pos(p23, {f(w(5,30))}, {}, {
start_state(w(5,8)).
}).
#pos(p24, {f(w(26,30))}, {}, {
start_state(w(26,25)).
}).
#pos(p25, {f(w(20,30))}, {}, {
start_state(w(20,22)).
}).
#pos(p26, {f(w(8,30))}, {}, {
start_state(w(8,19)).
}).
#pos(p27, {f(w(11,30))}, {}, {
start_state(w(11,24)).
}).
#pos(p28, {f(w(29,30))}, {}, {
start_state(w(29,12)).
}).
#pos(p29, {f(w(12,30))}, {}, {
start_state(w(12,19)).
}).
#pos(p30, {f(w(15,30))}, {}, {
start_state(w(15,26)).
}).
#pos(p31, {f(w(3,30))}, {}, {
start_state(w(3,9)).
}).
#pos(p32, {f(w(7,30))}, {}, {
start_state(w(7,12)).
}).
#pos(p33, {f(w(20,30))}, {}, {
start_state(w(20,3)).
}).
#pos(p34, {f(w(3,30))}, {}, {
start_state(w(3,21)).
}).
#pos(p35, {f(w(17,30))}, {}, {
start_state(w(17,24)).
}).
#pos(p36, {f(w(26,30))}, {}, {
start_state(w(26,20)).
}).
#pos(p37, {f(w(12,30))}, {}, {
start_state(w(12,23)).
}).
#pos(p38, {f(w(15,30))}, {}, {
start_state(w(15,22)).
}).
#pos(p39, {f(w(28,30))}, {}, {
start_state(w(28,18)).
}).
#pos(p40, {f(w(11,30))}, {}, {
start_state(w(11,24)).
}).
#pos(p41, {f(w(23,30))}, {}, {
start_state(w(23,23)).
}).
#pos(p42, {f(w(8,30))}, {}, {
start_state(w(8,13)).
}).
#pos(p43, {f(w(8,30))}, {}, {
start_state(w(8,25)).
}).
#pos(p44, {f(w(11,30))}, {}, {
start_state(w(11,15)).
}).
#pos(p45, {f(w(10,30))}, {}, {
start_state(w(10,17)).
}).
#pos(p46, {f(w(14,30))}, {}, {
start_state(w(14,25)).
}).
#pos(p47, {f(w(24,30))}, {}, {
start_state(w(24,3)).
}).
#pos(p48, {f(w(11,30))}, {}, {
start_state(w(11,17)).
}).
#pos(p49, {f(w(16,30))}, {}, {
start_state(w(16,8)).
}).
#pos(n0, {}, {f(w(13,30))}, {
start_state(w(2,18)).
}).
#pos(n1, {}, {f(w(5,19))}, {
start_state(w(13,15)).
}).
#pos(n2, {}, {f(w(2,30))}, {
start_state(w(27,7)).
}).
#pos(n3, {}, {f(w(17,12))}, {
start_state(w(9,13)).
}).
#pos(n4, {}, {f(w(19,16))}, {
start_state(w(19,30)).
}).
#pos(n5, {}, {f(w(16,28))}, {
start_state(w(3,25)).
}).
#pos(n6, {}, {f(w(1,14))}, {
start_state(w(12,21)).
}).
#pos(n7, {}, {f(w(1,1))}, {
start_state(w(27,26)).
}).
#pos(n8, {}, {f(w(14,28))}, {
start_state(w(26,9)).
}).
#pos(n9, {}, {f(w(2,7))}, {
start_state(w(15,7)).
}).
#pos(n10, {}, {f(w(3,30))}, {
start_state(w(24,4)).
}).
#pos(n11, {}, {f(w(20,30))}, {
start_state(w(17,10)).
}).
#pos(n12, {}, {f(w(14,30))}, {
start_state(w(30,4)).
}).
#pos(n13, {}, {f(w(8,30))}, {
start_state(w(6,30)).
}).
#pos(n14, {}, {f(w(16,4))}, {
start_state(w(26,17)).
}).
#pos(n15, {}, {f(w(3,30))}, {
start_state(w(2,4)).
}).
#pos(n16, {}, {f(w(3,15))}, {
start_state(w(22,15)).
}).
#pos(n17, {}, {f(w(7,11))}, {
start_state(w(12,25)).
}).
#pos(n18, {}, {f(w(24,30))}, {
start_state(w(18,4)).
}).
#pos(n19, {}, {f(w(8,30))}, {
start_state(w(12,5)).
}).
#pos(n20, {}, {f(w(24,2))}, {
start_state(w(11,26)).
}).
#pos(n21, {}, {f(w(1,30))}, {
start_state(w(18,17)).
}).
#pos(n22, {}, {f(w(10,1))}, {
start_state(w(15,2)).
}).
#pos(n23, {}, {f(w(10,17))}, {
start_state(w(2,6)).
}).
#pos(n24, {}, {f(w(26,6))}, {
start_state(w(17,1)).
}).
#pos(n25, {}, {f(w(21,23))}, {
start_state(w(6,1)).
}).
#pos(n26, {}, {f(w(26,20))}, {
start_state(w(28,20)).
}).
#pos(n27, {}, {f(w(7,6))}, {
start_state(w(9,2)).
}).
#pos(n28, {}, {f(w(25,30))}, {
start_state(w(26,22)).
}).
#pos(n29, {}, {f(w(10,5))}, {
start_state(w(28,16)).
}).
#pos(n30, {}, {f(w(8,30))}, {
start_state(w(1,10)).
}).
#pos(n31, {}, {f(w(29,6))}, {
start_state(w(2,24)).
}).
#pos(n32, {}, {f(w(21,30))}, {
start_state(w(12,19)).
}).
#pos(n33, {}, {f(w(17,30))}, {
start_state(w(13,29)).
}).
#pos(n34, {}, {f(w(30,30))}, {
start_state(w(26,26)).
}).
#pos(n35, {}, {f(w(4,30))}, {
start_state(w(19,15)).
}).
#pos(n36, {}, {f(w(19,22))}, {
start_state(w(19,16)).
}).
#pos(n37, {}, {f(w(27,15))}, {
start_state(w(7,6)).
}).
#pos(n38, {}, {f(w(4,9))}, {
start_state(w(29,11)).
}).
#pos(n39, {}, {f(w(2,8))}, {
start_state(w(29,28)).
}).
#pos(n40, {}, {f(w(28,23))}, {
start_state(w(6,19)).
}).
#pos(n41, {}, {f(w(29,9))}, {
start_state(w(14,1)).
}).
#pos(n42, {}, {f(w(2,4))}, {
start_state(w(14,3)).
}).
#pos(n43, {}, {f(w(27,18))}, {
start_state(w(6,17)).
}).
#pos(n44, {}, {f(w(20,15))}, {
start_state(w(28,12)).
}).
#pos(n45, {}, {f(w(28,30))}, {
start_state(w(19,25)).
}).
#pos(n46, {}, {f(w(11,30))}, {
start_state(w(9,5)).
}).
#pos(n47, {}, {f(w(29,19))}, {
start_state(w(16,13)).
}).
#pos(n48, {}, {f(w(17,19))}, {
start_state(w(4,4)).
}).
#pos(n49, {}, {f(w(18,12))}, {
start_state(w(10,16)).
}).
