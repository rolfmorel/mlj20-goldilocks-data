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

#pos(p0, {f(w(24,30))}, {}, {
start_state(w(24,22)).
}).
#pos(p1, {f(w(25,30))}, {}, {
start_state(w(25,8)).
}).
#pos(p2, {f(w(15,30))}, {}, {
start_state(w(15,21)).
}).
#pos(p3, {f(w(24,30))}, {}, {
start_state(w(24,29)).
}).
#pos(p4, {f(w(12,30))}, {}, {
start_state(w(12,11)).
}).
#pos(p5, {f(w(6,30))}, {}, {
start_state(w(6,19)).
}).
#pos(p6, {f(w(25,30))}, {}, {
start_state(w(25,14)).
}).
#pos(p7, {f(w(2,30))}, {}, {
start_state(w(2,14)).
}).
#pos(p8, {f(w(15,30))}, {}, {
start_state(w(15,9)).
}).
#pos(p9, {f(w(14,30))}, {}, {
start_state(w(14,12)).
}).
#pos(p10, {f(w(8,30))}, {}, {
start_state(w(8,20)).
}).
#pos(p11, {f(w(17,30))}, {}, {
start_state(w(17,22)).
}).
#pos(p12, {f(w(7,30))}, {}, {
start_state(w(7,4)).
}).
#pos(p13, {f(w(22,30))}, {}, {
start_state(w(22,20)).
}).
#pos(p14, {f(w(4,30))}, {}, {
start_state(w(4,23)).
}).
#pos(p15, {f(w(30,30))}, {}, {
start_state(w(30,10)).
}).
#pos(p16, {f(w(15,30))}, {}, {
start_state(w(15,16)).
}).
#pos(p17, {f(w(23,30))}, {}, {
start_state(w(23,18)).
}).
#pos(p18, {f(w(18,30))}, {}, {
start_state(w(18,1)).
}).
#pos(p19, {f(w(13,30))}, {}, {
start_state(w(13,20)).
}).
#pos(p20, {f(w(1,30))}, {}, {
start_state(w(1,26)).
}).
#pos(p21, {f(w(28,30))}, {}, {
start_state(w(28,1)).
}).
#pos(p22, {f(w(23,30))}, {}, {
start_state(w(23,28)).
}).
#pos(p23, {f(w(2,30))}, {}, {
start_state(w(2,11)).
}).
#pos(p24, {f(w(24,30))}, {}, {
start_state(w(24,26)).
}).
#pos(p25, {f(w(20,30))}, {}, {
start_state(w(20,29)).
}).
#pos(p26, {f(w(9,30))}, {}, {
start_state(w(9,5)).
}).
#pos(p27, {f(w(7,30))}, {}, {
start_state(w(7,4)).
}).
#pos(p28, {f(w(26,30))}, {}, {
start_state(w(26,10)).
}).
#pos(p29, {f(w(19,30))}, {}, {
start_state(w(19,11)).
}).
#pos(p30, {f(w(11,30))}, {}, {
start_state(w(11,7)).
}).
#pos(p31, {f(w(5,30))}, {}, {
start_state(w(5,1)).
}).
#pos(p32, {f(w(22,30))}, {}, {
start_state(w(22,8)).
}).
#pos(p33, {f(w(19,30))}, {}, {
start_state(w(19,15)).
}).
#pos(p34, {f(w(14,30))}, {}, {
start_state(w(14,4)).
}).
#pos(p35, {f(w(30,30))}, {}, {
start_state(w(30,18)).
}).
#pos(p36, {f(w(28,30))}, {}, {
start_state(w(28,11)).
}).
#pos(p37, {f(w(10,30))}, {}, {
start_state(w(10,2)).
}).
#pos(p38, {f(w(23,30))}, {}, {
start_state(w(23,3)).
}).
#pos(p39, {f(w(20,30))}, {}, {
start_state(w(20,10)).
}).
#pos(p40, {f(w(19,30))}, {}, {
start_state(w(19,1)).
}).
#pos(p41, {f(w(30,30))}, {}, {
start_state(w(30,7)).
}).
#pos(p42, {f(w(25,30))}, {}, {
start_state(w(25,12)).
}).
#pos(p43, {f(w(27,30))}, {}, {
start_state(w(27,10)).
}).
#pos(p44, {f(w(3,30))}, {}, {
start_state(w(3,5)).
}).
#pos(p45, {f(w(20,30))}, {}, {
start_state(w(20,4)).
}).
#pos(p46, {f(w(2,30))}, {}, {
start_state(w(2,21)).
}).
#pos(p47, {f(w(28,30))}, {}, {
start_state(w(28,7)).
}).
#pos(p48, {f(w(27,30))}, {}, {
start_state(w(27,29)).
}).
#pos(p49, {f(w(14,30))}, {}, {
start_state(w(14,8)).
}).
#pos(p50, {f(w(24,30))}, {}, {
start_state(w(24,24)).
}).
#pos(p51, {f(w(30,30))}, {}, {
start_state(w(30,9)).
}).
#pos(p52, {f(w(28,30))}, {}, {
start_state(w(28,13)).
}).
#pos(p53, {f(w(16,30))}, {}, {
start_state(w(16,20)).
}).
#pos(p54, {f(w(4,30))}, {}, {
start_state(w(4,17)).
}).
#pos(p55, {f(w(11,30))}, {}, {
start_state(w(11,29)).
}).
#pos(p56, {f(w(20,30))}, {}, {
start_state(w(20,9)).
}).
#pos(p57, {f(w(11,30))}, {}, {
start_state(w(11,14)).
}).
#pos(p58, {f(w(7,30))}, {}, {
start_state(w(7,2)).
}).
#pos(p59, {f(w(21,30))}, {}, {
start_state(w(21,27)).
}).
#pos(p60, {f(w(14,30))}, {}, {
start_state(w(14,20)).
}).
#pos(p61, {f(w(27,30))}, {}, {
start_state(w(27,25)).
}).
#pos(p62, {f(w(17,30))}, {}, {
start_state(w(17,11)).
}).
#pos(p63, {f(w(26,30))}, {}, {
start_state(w(26,5)).
}).
#pos(p64, {f(w(20,30))}, {}, {
start_state(w(20,17)).
}).
#pos(p65, {f(w(23,30))}, {}, {
start_state(w(23,28)).
}).
#pos(p66, {f(w(9,30))}, {}, {
start_state(w(9,25)).
}).
#pos(p67, {f(w(1,30))}, {}, {
start_state(w(1,13)).
}).
#pos(p68, {f(w(7,30))}, {}, {
start_state(w(7,5)).
}).
#pos(p69, {f(w(2,30))}, {}, {
start_state(w(2,23)).
}).
#pos(p70, {f(w(17,30))}, {}, {
start_state(w(17,18)).
}).
#pos(p71, {f(w(20,30))}, {}, {
start_state(w(20,2)).
}).
#pos(p72, {f(w(1,30))}, {}, {
start_state(w(1,22)).
}).
#pos(p73, {f(w(4,30))}, {}, {
start_state(w(4,23)).
}).
#pos(p74, {f(w(8,30))}, {}, {
start_state(w(8,13)).
}).
#pos(p75, {f(w(20,30))}, {}, {
start_state(w(20,8)).
}).
#pos(p76, {f(w(5,30))}, {}, {
start_state(w(5,19)).
}).
#pos(p77, {f(w(17,30))}, {}, {
start_state(w(17,12)).
}).
#pos(p78, {f(w(25,30))}, {}, {
start_state(w(25,22)).
}).
#pos(p79, {f(w(30,30))}, {}, {
start_state(w(30,14)).
}).
#pos(p80, {f(w(26,30))}, {}, {
start_state(w(26,5)).
}).
#pos(p81, {f(w(27,30))}, {}, {
start_state(w(27,23)).
}).
#pos(p82, {f(w(30,30))}, {}, {
start_state(w(30,16)).
}).
#pos(p83, {f(w(25,30))}, {}, {
start_state(w(25,19)).
}).
#pos(p84, {f(w(14,30))}, {}, {
start_state(w(14,9)).
}).
#pos(p85, {f(w(20,30))}, {}, {
start_state(w(20,20)).
}).
#pos(p86, {f(w(22,30))}, {}, {
start_state(w(22,20)).
}).
#pos(p87, {f(w(14,30))}, {}, {
start_state(w(14,29)).
}).
#pos(p88, {f(w(17,30))}, {}, {
start_state(w(17,6)).
}).
#pos(p89, {f(w(5,30))}, {}, {
start_state(w(5,24)).
}).
#pos(p90, {f(w(25,30))}, {}, {
start_state(w(25,27)).
}).
#pos(p91, {f(w(5,30))}, {}, {
start_state(w(5,2)).
}).
#pos(p92, {f(w(20,30))}, {}, {
start_state(w(20,27)).
}).
#pos(p93, {f(w(5,30))}, {}, {
start_state(w(5,20)).
}).
#pos(p94, {f(w(22,30))}, {}, {
start_state(w(22,22)).
}).
#pos(p95, {f(w(23,30))}, {}, {
start_state(w(23,26)).
}).
#pos(p96, {f(w(19,30))}, {}, {
start_state(w(19,20)).
}).
#pos(p97, {f(w(11,30))}, {}, {
start_state(w(11,24)).
}).
#pos(p98, {f(w(14,30))}, {}, {
start_state(w(14,16)).
}).
#pos(p99, {f(w(16,30))}, {}, {
start_state(w(16,26)).
}).
#pos(n0, {}, {f(w(22,30))}, {
start_state(w(1,16)).
}).
#pos(n1, {}, {f(w(13,30))}, {
start_state(w(5,23)).
}).
#pos(n2, {}, {f(w(11,16))}, {
start_state(w(25,20)).
}).
#pos(n3, {}, {f(w(30,30))}, {
start_state(w(26,21)).
}).
#pos(n4, {}, {f(w(14,25))}, {
start_state(w(17,27)).
}).
#pos(n5, {}, {f(w(27,20))}, {
start_state(w(2,9)).
}).
#pos(n6, {}, {f(w(29,28))}, {
start_state(w(5,5)).
}).
#pos(n7, {}, {f(w(21,20))}, {
start_state(w(28,20)).
}).
#pos(n8, {}, {f(w(10,20))}, {
start_state(w(20,6)).
}).
#pos(n9, {}, {f(w(6,26))}, {
start_state(w(1,26)).
}).
#pos(n10, {}, {f(w(22,30))}, {
start_state(w(12,12)).
}).
#pos(n11, {}, {f(w(19,24))}, {
start_state(w(26,15)).
}).
#pos(n12, {}, {f(w(1,20))}, {
start_state(w(23,26)).
}).
#pos(n13, {}, {f(w(10,23))}, {
start_state(w(30,29)).
}).
#pos(n14, {}, {f(w(2,24))}, {
start_state(w(29,7)).
}).
#pos(n15, {}, {f(w(13,15))}, {
start_state(w(2,24)).
}).
#pos(n16, {}, {f(w(25,8))}, {
start_state(w(19,20)).
}).
#pos(n17, {}, {f(w(6,26))}, {
start_state(w(1,19)).
}).
#pos(n18, {}, {f(w(13,27))}, {
start_state(w(29,25)).
}).
#pos(n19, {}, {f(w(8,19))}, {
start_state(w(6,7)).
}).
#pos(n20, {}, {f(w(6,17))}, {
start_state(w(3,6)).
}).
#pos(n21, {}, {f(w(10,16))}, {
start_state(w(13,1)).
}).
#pos(n22, {}, {f(w(1,26))}, {
start_state(w(4,28)).
}).
#pos(n23, {}, {f(w(12,11))}, {
start_state(w(15,19)).
}).
#pos(n24, {}, {f(w(21,1))}, {
start_state(w(15,14)).
}).
#pos(n25, {}, {f(w(10,30))}, {
start_state(w(6,18)).
}).
#pos(n26, {}, {f(w(24,13))}, {
start_state(w(11,19)).
}).
#pos(n27, {}, {f(w(17,19))}, {
start_state(w(24,1)).
}).
#pos(n28, {}, {f(w(11,9))}, {
start_state(w(25,3)).
}).
#pos(n29, {}, {f(w(28,2))}, {
start_state(w(9,25)).
}).
#pos(n30, {}, {f(w(10,23))}, {
start_state(w(21,2)).
}).
#pos(n31, {}, {f(w(23,30))}, {
start_state(w(15,23)).
}).
#pos(n32, {}, {f(w(4,10))}, {
start_state(w(12,26)).
}).
#pos(n33, {}, {f(w(11,30))}, {
start_state(w(9,25)).
}).
#pos(n34, {}, {f(w(8,30))}, {
start_state(w(3,17)).
}).
#pos(n35, {}, {f(w(5,30))}, {
start_state(w(29,14)).
}).
#pos(n36, {}, {f(w(10,30))}, {
start_state(w(19,28)).
}).
#pos(n37, {}, {f(w(9,29))}, {
start_state(w(28,28)).
}).
#pos(n38, {}, {f(w(6,11))}, {
start_state(w(1,14)).
}).
#pos(n39, {}, {f(w(27,7))}, {
start_state(w(24,13)).
}).
#pos(n40, {}, {f(w(25,1))}, {
start_state(w(28,1)).
}).
#pos(n41, {}, {f(w(13,21))}, {
start_state(w(23,30)).
}).
#pos(n42, {}, {f(w(5,30))}, {
start_state(w(18,18)).
}).
#pos(n43, {}, {f(w(12,15))}, {
start_state(w(1,14)).
}).
#pos(n44, {}, {f(w(24,13))}, {
start_state(w(26,22)).
}).
#pos(n45, {}, {f(w(11,30))}, {
start_state(w(30,12)).
}).
#pos(n46, {}, {f(w(28,21))}, {
start_state(w(10,10)).
}).
#pos(n47, {}, {f(w(10,23))}, {
start_state(w(7,5)).
}).
#pos(n48, {}, {f(w(18,22))}, {
start_state(w(9,23)).
}).
#pos(n49, {}, {f(w(27,30))}, {
start_state(w(5,23)).
}).
#pos(n50, {}, {f(w(28,17))}, {
start_state(w(25,5)).
}).
#pos(n51, {}, {f(w(17,19))}, {
start_state(w(5,30)).
}).
#pos(n52, {}, {f(w(2,26))}, {
start_state(w(10,26)).
}).
#pos(n53, {}, {f(w(8,7))}, {
start_state(w(21,26)).
}).
#pos(n54, {}, {f(w(27,23))}, {
start_state(w(17,25)).
}).
#pos(n55, {}, {f(w(7,30))}, {
start_state(w(28,13)).
}).
#pos(n56, {}, {f(w(8,3))}, {
start_state(w(2,5)).
}).
#pos(n57, {}, {f(w(19,16))}, {
start_state(w(3,19)).
}).
#pos(n58, {}, {f(w(5,15))}, {
start_state(w(15,24)).
}).
#pos(n59, {}, {f(w(19,21))}, {
start_state(w(9,4)).
}).
#pos(n60, {}, {f(w(5,16))}, {
start_state(w(4,2)).
}).
#pos(n61, {}, {f(w(1,24))}, {
start_state(w(6,24)).
}).
#pos(n62, {}, {f(w(9,30))}, {
start_state(w(21,29)).
}).
#pos(n63, {}, {f(w(20,30))}, {
start_state(w(25,29)).
}).
#pos(n64, {}, {f(w(8,24))}, {
start_state(w(24,2)).
}).
#pos(n65, {}, {f(w(15,12))}, {
start_state(w(14,25)).
}).
#pos(n66, {}, {f(w(5,7))}, {
start_state(w(6,20)).
}).
#pos(n67, {}, {f(w(24,30))}, {
start_state(w(23,11)).
}).
#pos(n68, {}, {f(w(12,14))}, {
start_state(w(1,9)).
}).
#pos(n69, {}, {f(w(12,29))}, {
start_state(w(16,25)).
}).
#pos(n70, {}, {f(w(19,28))}, {
start_state(w(9,16)).
}).
#pos(n71, {}, {f(w(6,13))}, {
start_state(w(26,15)).
}).
#pos(n72, {}, {f(w(5,15))}, {
start_state(w(21,21)).
}).
#pos(n73, {}, {f(w(24,6))}, {
start_state(w(5,28)).
}).
#pos(n74, {}, {f(w(2,10))}, {
start_state(w(23,9)).
}).
#pos(n75, {}, {f(w(29,30))}, {
start_state(w(28,25)).
}).
#pos(n76, {}, {f(w(27,15))}, {
start_state(w(13,29)).
}).
#pos(n77, {}, {f(w(29,23))}, {
start_state(w(4,11)).
}).
#pos(n78, {}, {f(w(5,30))}, {
start_state(w(24,13)).
}).
#pos(n79, {}, {f(w(30,30))}, {
start_state(w(4,17)).
}).
#pos(n80, {}, {f(w(2,12))}, {
start_state(w(13,30)).
}).
#pos(n81, {}, {f(w(3,20))}, {
start_state(w(20,10)).
}).
#pos(n82, {}, {f(w(9,30))}, {
start_state(w(30,30)).
}).
#pos(n83, {}, {f(w(30,19))}, {
start_state(w(26,13)).
}).
#pos(n84, {}, {f(w(29,2))}, {
start_state(w(22,26)).
}).
#pos(n85, {}, {f(w(14,20))}, {
start_state(w(6,30)).
}).
#pos(n86, {}, {f(w(4,6))}, {
start_state(w(24,22)).
}).
#pos(n87, {}, {f(w(20,2))}, {
start_state(w(22,23)).
}).
#pos(n88, {}, {f(w(4,6))}, {
start_state(w(23,20)).
}).
#pos(n89, {}, {f(w(16,30))}, {
start_state(w(15,14)).
}).
#pos(n90, {}, {f(w(3,8))}, {
start_state(w(30,6)).
}).
#pos(n91, {}, {f(w(23,27))}, {
start_state(w(25,15)).
}).
#pos(n92, {}, {f(w(13,30))}, {
start_state(w(24,7)).
}).
#pos(n93, {}, {f(w(6,2))}, {
start_state(w(26,3)).
}).
#pos(n94, {}, {f(w(23,4))}, {
start_state(w(15,21)).
}).
#pos(n95, {}, {f(w(15,19))}, {
start_state(w(26,1)).
}).
#pos(n96, {}, {f(w(21,13))}, {
start_state(w(12,21)).
}).
#pos(n97, {}, {f(w(5,2))}, {
start_state(w(12,22)).
}).
#pos(n98, {}, {f(w(27,3))}, {
start_state(w(15,27)).
}).
#pos(n99, {}, {f(w(16,12))}, {
start_state(w(19,21)).
}).
