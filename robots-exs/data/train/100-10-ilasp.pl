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

#pos(p0, {f(w(20,30))}, {}, {
start_state(w(20,26)).
}).
#pos(p1, {f(w(20,30))}, {}, {
start_state(w(20,17)).
}).
#pos(p2, {f(w(5,30))}, {}, {
start_state(w(5,25)).
}).
#pos(p3, {f(w(9,30))}, {}, {
start_state(w(9,2)).
}).
#pos(p4, {f(w(4,30))}, {}, {
start_state(w(4,7)).
}).
#pos(p5, {f(w(18,30))}, {}, {
start_state(w(18,12)).
}).
#pos(p6, {f(w(5,30))}, {}, {
start_state(w(5,17)).
}).
#pos(p7, {f(w(26,30))}, {}, {
start_state(w(26,18)).
}).
#pos(p8, {f(w(14,30))}, {}, {
start_state(w(14,25)).
}).
#pos(p9, {f(w(6,30))}, {}, {
start_state(w(6,29)).
}).
#pos(p10, {f(w(14,30))}, {}, {
start_state(w(14,26)).
}).
#pos(p11, {f(w(20,30))}, {}, {
start_state(w(20,9)).
}).
#pos(p12, {f(w(23,30))}, {}, {
start_state(w(23,24)).
}).
#pos(p13, {f(w(25,30))}, {}, {
start_state(w(25,12)).
}).
#pos(p14, {f(w(26,30))}, {}, {
start_state(w(26,22)).
}).
#pos(p15, {f(w(20,30))}, {}, {
start_state(w(20,17)).
}).
#pos(p16, {f(w(9,30))}, {}, {
start_state(w(9,20)).
}).
#pos(p17, {f(w(22,30))}, {}, {
start_state(w(22,22)).
}).
#pos(p18, {f(w(10,30))}, {}, {
start_state(w(10,27)).
}).
#pos(p19, {f(w(14,30))}, {}, {
start_state(w(14,3)).
}).
#pos(p20, {f(w(5,30))}, {}, {
start_state(w(5,24)).
}).
#pos(p21, {f(w(9,30))}, {}, {
start_state(w(9,21)).
}).
#pos(p22, {f(w(28,30))}, {}, {
start_state(w(28,23)).
}).
#pos(p23, {f(w(23,30))}, {}, {
start_state(w(23,20)).
}).
#pos(p24, {f(w(20,30))}, {}, {
start_state(w(20,13)).
}).
#pos(p25, {f(w(26,30))}, {}, {
start_state(w(26,24)).
}).
#pos(p26, {f(w(13,30))}, {}, {
start_state(w(13,12)).
}).
#pos(p27, {f(w(11,30))}, {}, {
start_state(w(11,12)).
}).
#pos(p28, {f(w(9,30))}, {}, {
start_state(w(9,28)).
}).
#pos(p29, {f(w(3,30))}, {}, {
start_state(w(3,16)).
}).
#pos(p30, {f(w(9,30))}, {}, {
start_state(w(9,24)).
}).
#pos(p31, {f(w(27,30))}, {}, {
start_state(w(27,20)).
}).
#pos(p32, {f(w(8,30))}, {}, {
start_state(w(8,25)).
}).
#pos(p33, {f(w(28,30))}, {}, {
start_state(w(28,4)).
}).
#pos(p34, {f(w(20,30))}, {}, {
start_state(w(20,28)).
}).
#pos(p35, {f(w(12,30))}, {}, {
start_state(w(12,4)).
}).
#pos(p36, {f(w(5,30))}, {}, {
start_state(w(5,17)).
}).
#pos(p37, {f(w(29,30))}, {}, {
start_state(w(29,18)).
}).
#pos(p38, {f(w(10,30))}, {}, {
start_state(w(10,5)).
}).
#pos(p39, {f(w(19,30))}, {}, {
start_state(w(19,4)).
}).
#pos(p40, {f(w(6,30))}, {}, {
start_state(w(6,3)).
}).
#pos(p41, {f(w(12,30))}, {}, {
start_state(w(12,25)).
}).
#pos(p42, {f(w(28,30))}, {}, {
start_state(w(28,16)).
}).
#pos(p43, {f(w(23,30))}, {}, {
start_state(w(23,23)).
}).
#pos(p44, {f(w(7,30))}, {}, {
start_state(w(7,24)).
}).
#pos(p45, {f(w(9,30))}, {}, {
start_state(w(9,24)).
}).
#pos(p46, {f(w(1,30))}, {}, {
start_state(w(1,16)).
}).
#pos(p47, {f(w(30,30))}, {}, {
start_state(w(30,2)).
}).
#pos(p48, {f(w(9,30))}, {}, {
start_state(w(9,23)).
}).
#pos(p49, {f(w(22,30))}, {}, {
start_state(w(22,29)).
}).
#pos(p50, {f(w(26,30))}, {}, {
start_state(w(26,7)).
}).
#pos(p51, {f(w(15,30))}, {}, {
start_state(w(15,9)).
}).
#pos(p52, {f(w(24,30))}, {}, {
start_state(w(24,2)).
}).
#pos(p53, {f(w(23,30))}, {}, {
start_state(w(23,26)).
}).
#pos(p54, {f(w(25,30))}, {}, {
start_state(w(25,7)).
}).
#pos(p55, {f(w(9,30))}, {}, {
start_state(w(9,1)).
}).
#pos(p56, {f(w(25,30))}, {}, {
start_state(w(25,22)).
}).
#pos(p57, {f(w(25,30))}, {}, {
start_state(w(25,8)).
}).
#pos(p58, {f(w(15,30))}, {}, {
start_state(w(15,26)).
}).
#pos(p59, {f(w(4,30))}, {}, {
start_state(w(4,1)).
}).
#pos(p60, {f(w(28,30))}, {}, {
start_state(w(28,12)).
}).
#pos(p61, {f(w(1,30))}, {}, {
start_state(w(1,6)).
}).
#pos(p62, {f(w(12,30))}, {}, {
start_state(w(12,7)).
}).
#pos(p63, {f(w(17,30))}, {}, {
start_state(w(17,27)).
}).
#pos(p64, {f(w(2,30))}, {}, {
start_state(w(2,7)).
}).
#pos(p65, {f(w(18,30))}, {}, {
start_state(w(18,11)).
}).
#pos(p66, {f(w(10,30))}, {}, {
start_state(w(10,23)).
}).
#pos(p67, {f(w(27,30))}, {}, {
start_state(w(27,17)).
}).
#pos(p68, {f(w(2,30))}, {}, {
start_state(w(2,25)).
}).
#pos(p69, {f(w(12,30))}, {}, {
start_state(w(12,12)).
}).
#pos(p70, {f(w(28,30))}, {}, {
start_state(w(28,6)).
}).
#pos(p71, {f(w(27,30))}, {}, {
start_state(w(27,23)).
}).
#pos(p72, {f(w(21,30))}, {}, {
start_state(w(21,20)).
}).
#pos(p73, {f(w(7,30))}, {}, {
start_state(w(7,18)).
}).
#pos(p74, {f(w(29,30))}, {}, {
start_state(w(29,16)).
}).
#pos(p75, {f(w(2,30))}, {}, {
start_state(w(2,26)).
}).
#pos(p76, {f(w(22,30))}, {}, {
start_state(w(22,18)).
}).
#pos(p77, {f(w(18,30))}, {}, {
start_state(w(18,15)).
}).
#pos(p78, {f(w(30,30))}, {}, {
start_state(w(30,13)).
}).
#pos(p79, {f(w(7,30))}, {}, {
start_state(w(7,17)).
}).
#pos(p80, {f(w(29,30))}, {}, {
start_state(w(29,20)).
}).
#pos(p81, {f(w(10,30))}, {}, {
start_state(w(10,25)).
}).
#pos(p82, {f(w(9,30))}, {}, {
start_state(w(9,25)).
}).
#pos(p83, {f(w(26,30))}, {}, {
start_state(w(26,5)).
}).
#pos(p84, {f(w(14,30))}, {}, {
start_state(w(14,24)).
}).
#pos(p85, {f(w(2,30))}, {}, {
start_state(w(2,6)).
}).
#pos(p86, {f(w(28,30))}, {}, {
start_state(w(28,14)).
}).
#pos(p87, {f(w(28,30))}, {}, {
start_state(w(28,15)).
}).
#pos(p88, {f(w(24,30))}, {}, {
start_state(w(24,11)).
}).
#pos(p89, {f(w(11,30))}, {}, {
start_state(w(11,25)).
}).
#pos(p90, {f(w(22,30))}, {}, {
start_state(w(22,27)).
}).
#pos(p91, {f(w(10,30))}, {}, {
start_state(w(10,9)).
}).
#pos(p92, {f(w(7,30))}, {}, {
start_state(w(7,23)).
}).
#pos(p93, {f(w(28,30))}, {}, {
start_state(w(28,10)).
}).
#pos(p94, {f(w(22,30))}, {}, {
start_state(w(22,18)).
}).
#pos(p95, {f(w(27,30))}, {}, {
start_state(w(27,15)).
}).
#pos(p96, {f(w(6,30))}, {}, {
start_state(w(6,26)).
}).
#pos(p97, {f(w(2,30))}, {}, {
start_state(w(2,20)).
}).
#pos(p98, {f(w(2,30))}, {}, {
start_state(w(2,5)).
}).
#pos(p99, {f(w(6,30))}, {}, {
start_state(w(6,12)).
}).
#pos(n0, {}, {f(w(6,5))}, {
start_state(w(20,27)).
}).
#pos(n1, {}, {f(w(20,30))}, {
start_state(w(11,6)).
}).
#pos(n2, {}, {f(w(6,9))}, {
start_state(w(2,10)).
}).
#pos(n3, {}, {f(w(3,1))}, {
start_state(w(24,2)).
}).
#pos(n4, {}, {f(w(12,30))}, {
start_state(w(17,15)).
}).
#pos(n5, {}, {f(w(15,6))}, {
start_state(w(29,9)).
}).
#pos(n6, {}, {f(w(22,30))}, {
start_state(w(18,6)).
}).
#pos(n7, {}, {f(w(17,22))}, {
start_state(w(19,28)).
}).
#pos(n8, {}, {f(w(21,30))}, {
start_state(w(19,18)).
}).
#pos(n9, {}, {f(w(18,16))}, {
start_state(w(8,29)).
}).
#pos(n10, {}, {f(w(23,20))}, {
start_state(w(29,5)).
}).
#pos(n11, {}, {f(w(18,12))}, {
start_state(w(18,3)).
}).
#pos(n12, {}, {f(w(29,11))}, {
start_state(w(30,26)).
}).
#pos(n13, {}, {f(w(19,4))}, {
start_state(w(9,7)).
}).
#pos(n14, {}, {f(w(2,1))}, {
start_state(w(29,26)).
}).
#pos(n15, {}, {f(w(17,26))}, {
start_state(w(30,17)).
}).
#pos(n16, {}, {f(w(28,25))}, {
start_state(w(27,3)).
}).
#pos(n17, {}, {f(w(2,24))}, {
start_state(w(18,4)).
}).
#pos(n18, {}, {f(w(4,7))}, {
start_state(w(2,15)).
}).
#pos(n19, {}, {f(w(17,9))}, {
start_state(w(22,23)).
}).
#pos(n20, {}, {f(w(29,20))}, {
start_state(w(10,13)).
}).
#pos(n21, {}, {f(w(27,30))}, {
start_state(w(20,20)).
}).
#pos(n22, {}, {f(w(13,28))}, {
start_state(w(21,24)).
}).
#pos(n23, {}, {f(w(29,30))}, {
start_state(w(17,18)).
}).
#pos(n24, {}, {f(w(2,8))}, {
start_state(w(20,11)).
}).
#pos(n25, {}, {f(w(6,19))}, {
start_state(w(15,26)).
}).
#pos(n26, {}, {f(w(22,13))}, {
start_state(w(26,4)).
}).
#pos(n27, {}, {f(w(10,30))}, {
start_state(w(27,30)).
}).
#pos(n28, {}, {f(w(12,17))}, {
start_state(w(29,24)).
}).
#pos(n29, {}, {f(w(7,14))}, {
start_state(w(6,16)).
}).
#pos(n30, {}, {f(w(2,8))}, {
start_state(w(11,24)).
}).
#pos(n31, {}, {f(w(17,30))}, {
start_state(w(12,9)).
}).
#pos(n32, {}, {f(w(9,30))}, {
start_state(w(5,7)).
}).
#pos(n33, {}, {f(w(4,11))}, {
start_state(w(1,1)).
}).
#pos(n34, {}, {f(w(24,2))}, {
start_state(w(27,9)).
}).
#pos(n35, {}, {f(w(25,4))}, {
start_state(w(19,10)).
}).
#pos(n36, {}, {f(w(5,14))}, {
start_state(w(21,27)).
}).
#pos(n37, {}, {f(w(5,30))}, {
start_state(w(11,12)).
}).
#pos(n38, {}, {f(w(12,16))}, {
start_state(w(21,1)).
}).
#pos(n39, {}, {f(w(26,21))}, {
start_state(w(14,18)).
}).
#pos(n40, {}, {f(w(7,30))}, {
start_state(w(30,22)).
}).
#pos(n41, {}, {f(w(15,2))}, {
start_state(w(14,19)).
}).
#pos(n42, {}, {f(w(24,28))}, {
start_state(w(3,15)).
}).
#pos(n43, {}, {f(w(27,30))}, {
start_state(w(30,27)).
}).
#pos(n44, {}, {f(w(1,21))}, {
start_state(w(15,8)).
}).
#pos(n45, {}, {f(w(4,24))}, {
start_state(w(29,1)).
}).
#pos(n46, {}, {f(w(25,23))}, {
start_state(w(25,22)).
}).
#pos(n47, {}, {f(w(18,29))}, {
start_state(w(17,12)).
}).
#pos(n48, {}, {f(w(23,9))}, {
start_state(w(4,19)).
}).
#pos(n49, {}, {f(w(8,26))}, {
start_state(w(27,15)).
}).
#pos(n50, {}, {f(w(26,7))}, {
start_state(w(23,19)).
}).
#pos(n51, {}, {f(w(14,28))}, {
start_state(w(6,28)).
}).
#pos(n52, {}, {f(w(17,19))}, {
start_state(w(15,29)).
}).
#pos(n53, {}, {f(w(3,30))}, {
start_state(w(1,24)).
}).
#pos(n54, {}, {f(w(18,24))}, {
start_state(w(11,13)).
}).
#pos(n55, {}, {f(w(25,23))}, {
start_state(w(5,16)).
}).
#pos(n56, {}, {f(w(30,24))}, {
start_state(w(20,18)).
}).
#pos(n57, {}, {f(w(7,3))}, {
start_state(w(6,12)).
}).
#pos(n58, {}, {f(w(28,16))}, {
start_state(w(15,20)).
}).
#pos(n59, {}, {f(w(12,9))}, {
start_state(w(15,14)).
}).
#pos(n60, {}, {f(w(2,3))}, {
start_state(w(6,18)).
}).
#pos(n61, {}, {f(w(14,10))}, {
start_state(w(28,23)).
}).
#pos(n62, {}, {f(w(8,30))}, {
start_state(w(18,21)).
}).
#pos(n63, {}, {f(w(9,30))}, {
start_state(w(20,12)).
}).
#pos(n64, {}, {f(w(13,2))}, {
start_state(w(21,12)).
}).
#pos(n65, {}, {f(w(15,11))}, {
start_state(w(24,2)).
}).
#pos(n66, {}, {f(w(30,24))}, {
start_state(w(20,21)).
}).
#pos(n67, {}, {f(w(13,25))}, {
start_state(w(3,17)).
}).
#pos(n68, {}, {f(w(12,29))}, {
start_state(w(8,16)).
}).
#pos(n69, {}, {f(w(7,28))}, {
start_state(w(30,2)).
}).
#pos(n70, {}, {f(w(11,5))}, {
start_state(w(13,1)).
}).
#pos(n71, {}, {f(w(28,15))}, {
start_state(w(17,8)).
}).
#pos(n72, {}, {f(w(16,30))}, {
start_state(w(30,21)).
}).
#pos(n73, {}, {f(w(17,30))}, {
start_state(w(19,4)).
}).
#pos(n74, {}, {f(w(8,1))}, {
start_state(w(16,19)).
}).
#pos(n75, {}, {f(w(7,9))}, {
start_state(w(30,9)).
}).
#pos(n76, {}, {f(w(17,30))}, {
start_state(w(19,13)).
}).
#pos(n77, {}, {f(w(14,15))}, {
start_state(w(10,19)).
}).
#pos(n78, {}, {f(w(16,24))}, {
start_state(w(20,7)).
}).
#pos(n79, {}, {f(w(18,30))}, {
start_state(w(9,26)).
}).
#pos(n80, {}, {f(w(29,30))}, {
start_state(w(16,4)).
}).
#pos(n81, {}, {f(w(15,30))}, {
start_state(w(17,9)).
}).
#pos(n82, {}, {f(w(13,23))}, {
start_state(w(8,23)).
}).
#pos(n83, {}, {f(w(18,1))}, {
start_state(w(4,21)).
}).
#pos(n84, {}, {f(w(17,30))}, {
start_state(w(10,10)).
}).
#pos(n85, {}, {f(w(27,17))}, {
start_state(w(12,15)).
}).
#pos(n86, {}, {f(w(29,7))}, {
start_state(w(30,18)).
}).
#pos(n87, {}, {f(w(24,26))}, {
start_state(w(2,6)).
}).
#pos(n88, {}, {f(w(11,2))}, {
start_state(w(28,21)).
}).
#pos(n89, {}, {f(w(6,30))}, {
start_state(w(9,6)).
}).
#pos(n90, {}, {f(w(25,12))}, {
start_state(w(5,2)).
}).
#pos(n91, {}, {f(w(13,27))}, {
start_state(w(1,30)).
}).
#pos(n92, {}, {f(w(13,23))}, {
start_state(w(15,24)).
}).
#pos(n93, {}, {f(w(5,30))}, {
start_state(w(7,7)).
}).
#pos(n94, {}, {f(w(9,21))}, {
start_state(w(11,6)).
}).
#pos(n95, {}, {f(w(11,14))}, {
start_state(w(29,21)).
}).
#pos(n96, {}, {f(w(6,29))}, {
start_state(w(15,30)).
}).
#pos(n97, {}, {f(w(5,6))}, {
start_state(w(17,4)).
}).
#pos(n98, {}, {f(w(22,27))}, {
start_state(w(14,8)).
}).
#pos(n99, {}, {f(w(11,30))}, {
start_state(w(26,26)).
}).
