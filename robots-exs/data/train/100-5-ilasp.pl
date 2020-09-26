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
start_state(w(4,16)).
}).
#pos(p1, {f(w(16,30))}, {}, {
start_state(w(16,18)).
}).
#pos(p2, {f(w(7,30))}, {}, {
start_state(w(7,28)).
}).
#pos(p3, {f(w(10,30))}, {}, {
start_state(w(10,17)).
}).
#pos(p4, {f(w(25,30))}, {}, {
start_state(w(25,8)).
}).
#pos(p5, {f(w(30,30))}, {}, {
start_state(w(30,13)).
}).
#pos(p6, {f(w(28,30))}, {}, {
start_state(w(28,9)).
}).
#pos(p7, {f(w(13,30))}, {}, {
start_state(w(13,6)).
}).
#pos(p8, {f(w(9,30))}, {}, {
start_state(w(9,5)).
}).
#pos(p9, {f(w(25,30))}, {}, {
start_state(w(25,22)).
}).
#pos(p10, {f(w(15,30))}, {}, {
start_state(w(15,10)).
}).
#pos(p11, {f(w(22,30))}, {}, {
start_state(w(22,2)).
}).
#pos(p12, {f(w(13,30))}, {}, {
start_state(w(13,29)).
}).
#pos(p13, {f(w(29,30))}, {}, {
start_state(w(29,5)).
}).
#pos(p14, {f(w(28,30))}, {}, {
start_state(w(28,29)).
}).
#pos(p15, {f(w(28,30))}, {}, {
start_state(w(28,16)).
}).
#pos(p16, {f(w(2,30))}, {}, {
start_state(w(2,11)).
}).
#pos(p17, {f(w(24,30))}, {}, {
start_state(w(24,27)).
}).
#pos(p18, {f(w(28,30))}, {}, {
start_state(w(28,3)).
}).
#pos(p19, {f(w(16,30))}, {}, {
start_state(w(16,10)).
}).
#pos(p20, {f(w(12,30))}, {}, {
start_state(w(12,8)).
}).
#pos(p21, {f(w(29,30))}, {}, {
start_state(w(29,7)).
}).
#pos(p22, {f(w(16,30))}, {}, {
start_state(w(16,2)).
}).
#pos(p23, {f(w(28,30))}, {}, {
start_state(w(28,6)).
}).
#pos(p24, {f(w(17,30))}, {}, {
start_state(w(17,2)).
}).
#pos(p25, {f(w(7,30))}, {}, {
start_state(w(7,28)).
}).
#pos(p26, {f(w(13,30))}, {}, {
start_state(w(13,19)).
}).
#pos(p27, {f(w(6,30))}, {}, {
start_state(w(6,19)).
}).
#pos(p28, {f(w(30,30))}, {}, {
start_state(w(30,26)).
}).
#pos(p29, {f(w(18,30))}, {}, {
start_state(w(18,29)).
}).
#pos(p30, {f(w(26,30))}, {}, {
start_state(w(26,16)).
}).
#pos(p31, {f(w(27,30))}, {}, {
start_state(w(27,25)).
}).
#pos(p32, {f(w(15,30))}, {}, {
start_state(w(15,18)).
}).
#pos(p33, {f(w(3,30))}, {}, {
start_state(w(3,3)).
}).
#pos(p34, {f(w(25,30))}, {}, {
start_state(w(25,27)).
}).
#pos(p35, {f(w(6,30))}, {}, {
start_state(w(6,9)).
}).
#pos(p36, {f(w(10,30))}, {}, {
start_state(w(10,10)).
}).
#pos(p37, {f(w(16,30))}, {}, {
start_state(w(16,29)).
}).
#pos(p38, {f(w(5,30))}, {}, {
start_state(w(5,25)).
}).
#pos(p39, {f(w(21,30))}, {}, {
start_state(w(21,19)).
}).
#pos(p40, {f(w(17,30))}, {}, {
start_state(w(17,28)).
}).
#pos(p41, {f(w(29,30))}, {}, {
start_state(w(29,12)).
}).
#pos(p42, {f(w(1,30))}, {}, {
start_state(w(1,17)).
}).
#pos(p43, {f(w(30,30))}, {}, {
start_state(w(30,9)).
}).
#pos(p44, {f(w(13,30))}, {}, {
start_state(w(13,18)).
}).
#pos(p45, {f(w(10,30))}, {}, {
start_state(w(10,25)).
}).
#pos(p46, {f(w(22,30))}, {}, {
start_state(w(22,22)).
}).
#pos(p47, {f(w(8,30))}, {}, {
start_state(w(8,3)).
}).
#pos(p48, {f(w(19,30))}, {}, {
start_state(w(19,11)).
}).
#pos(p49, {f(w(5,30))}, {}, {
start_state(w(5,10)).
}).
#pos(p50, {f(w(30,30))}, {}, {
start_state(w(30,16)).
}).
#pos(p51, {f(w(21,30))}, {}, {
start_state(w(21,22)).
}).
#pos(p52, {f(w(23,30))}, {}, {
start_state(w(23,6)).
}).
#pos(p53, {f(w(2,30))}, {}, {
start_state(w(2,24)).
}).
#pos(p54, {f(w(1,30))}, {}, {
start_state(w(1,1)).
}).
#pos(p55, {f(w(25,30))}, {}, {
start_state(w(25,23)).
}).
#pos(p56, {f(w(1,30))}, {}, {
start_state(w(1,23)).
}).
#pos(p57, {f(w(30,30))}, {}, {
start_state(w(30,24)).
}).
#pos(p58, {f(w(20,30))}, {}, {
start_state(w(20,16)).
}).
#pos(p59, {f(w(20,30))}, {}, {
start_state(w(20,2)).
}).
#pos(p60, {f(w(4,30))}, {}, {
start_state(w(4,2)).
}).
#pos(p61, {f(w(22,30))}, {}, {
start_state(w(22,29)).
}).
#pos(p62, {f(w(8,30))}, {}, {
start_state(w(8,24)).
}).
#pos(p63, {f(w(5,30))}, {}, {
start_state(w(5,22)).
}).
#pos(p64, {f(w(18,30))}, {}, {
start_state(w(18,1)).
}).
#pos(p65, {f(w(16,30))}, {}, {
start_state(w(16,16)).
}).
#pos(p66, {f(w(10,30))}, {}, {
start_state(w(10,13)).
}).
#pos(p67, {f(w(22,30))}, {}, {
start_state(w(22,28)).
}).
#pos(p68, {f(w(27,30))}, {}, {
start_state(w(27,29)).
}).
#pos(p69, {f(w(25,30))}, {}, {
start_state(w(25,8)).
}).
#pos(p70, {f(w(2,30))}, {}, {
start_state(w(2,5)).
}).
#pos(p71, {f(w(22,30))}, {}, {
start_state(w(22,14)).
}).
#pos(p72, {f(w(24,30))}, {}, {
start_state(w(24,12)).
}).
#pos(p73, {f(w(24,30))}, {}, {
start_state(w(24,9)).
}).
#pos(p74, {f(w(17,30))}, {}, {
start_state(w(17,3)).
}).
#pos(p75, {f(w(9,30))}, {}, {
start_state(w(9,26)).
}).
#pos(p76, {f(w(21,30))}, {}, {
start_state(w(21,20)).
}).
#pos(p77, {f(w(26,30))}, {}, {
start_state(w(26,12)).
}).
#pos(p78, {f(w(6,30))}, {}, {
start_state(w(6,17)).
}).
#pos(p79, {f(w(8,30))}, {}, {
start_state(w(8,15)).
}).
#pos(p80, {f(w(16,30))}, {}, {
start_state(w(16,14)).
}).
#pos(p81, {f(w(30,30))}, {}, {
start_state(w(30,4)).
}).
#pos(p82, {f(w(26,30))}, {}, {
start_state(w(26,1)).
}).
#pos(p83, {f(w(11,30))}, {}, {
start_state(w(11,12)).
}).
#pos(p84, {f(w(23,30))}, {}, {
start_state(w(23,4)).
}).
#pos(p85, {f(w(10,30))}, {}, {
start_state(w(10,12)).
}).
#pos(p86, {f(w(18,30))}, {}, {
start_state(w(18,7)).
}).
#pos(p87, {f(w(3,30))}, {}, {
start_state(w(3,22)).
}).
#pos(p88, {f(w(14,30))}, {}, {
start_state(w(14,28)).
}).
#pos(p89, {f(w(14,30))}, {}, {
start_state(w(14,8)).
}).
#pos(p90, {f(w(5,30))}, {}, {
start_state(w(5,5)).
}).
#pos(p91, {f(w(16,30))}, {}, {
start_state(w(16,21)).
}).
#pos(p92, {f(w(4,30))}, {}, {
start_state(w(4,29)).
}).
#pos(p93, {f(w(7,30))}, {}, {
start_state(w(7,7)).
}).
#pos(p94, {f(w(25,30))}, {}, {
start_state(w(25,28)).
}).
#pos(p95, {f(w(8,30))}, {}, {
start_state(w(8,22)).
}).
#pos(p96, {f(w(18,30))}, {}, {
start_state(w(18,19)).
}).
#pos(p97, {f(w(15,30))}, {}, {
start_state(w(15,16)).
}).
#pos(p98, {f(w(6,30))}, {}, {
start_state(w(6,6)).
}).
#pos(p99, {f(w(24,30))}, {}, {
start_state(w(24,4)).
}).
#pos(n0, {}, {f(w(7,30))}, {
start_state(w(1,1)).
}).
#pos(n1, {}, {f(w(9,2))}, {
start_state(w(17,4)).
}).
#pos(n2, {}, {f(w(8,28))}, {
start_state(w(1,16)).
}).
#pos(n3, {}, {f(w(25,4))}, {
start_state(w(5,10)).
}).
#pos(n4, {}, {f(w(12,30))}, {
start_state(w(10,30)).
}).
#pos(n5, {}, {f(w(24,18))}, {
start_state(w(19,21)).
}).
#pos(n6, {}, {f(w(22,30))}, {
start_state(w(27,24)).
}).
#pos(n7, {}, {f(w(26,30))}, {
start_state(w(6,10)).
}).
#pos(n8, {}, {f(w(21,11))}, {
start_state(w(21,3)).
}).
#pos(n9, {}, {f(w(9,3))}, {
start_state(w(11,15)).
}).
#pos(n10, {}, {f(w(29,2))}, {
start_state(w(13,5)).
}).
#pos(n11, {}, {f(w(4,17))}, {
start_state(w(5,23)).
}).
#pos(n12, {}, {f(w(12,30))}, {
start_state(w(5,19)).
}).
#pos(n13, {}, {f(w(10,19))}, {
start_state(w(29,8)).
}).
#pos(n14, {}, {f(w(27,9))}, {
start_state(w(8,17)).
}).
#pos(n15, {}, {f(w(22,4))}, {
start_state(w(27,22)).
}).
#pos(n16, {}, {f(w(13,16))}, {
start_state(w(26,8)).
}).
#pos(n17, {}, {f(w(24,3))}, {
start_state(w(25,28)).
}).
#pos(n18, {}, {f(w(2,23))}, {
start_state(w(5,28)).
}).
#pos(n19, {}, {f(w(8,21))}, {
start_state(w(16,18)).
}).
#pos(n20, {}, {f(w(3,30))}, {
start_state(w(28,12)).
}).
#pos(n21, {}, {f(w(8,25))}, {
start_state(w(7,11)).
}).
#pos(n22, {}, {f(w(4,28))}, {
start_state(w(7,24)).
}).
#pos(n23, {}, {f(w(27,17))}, {
start_state(w(27,7)).
}).
#pos(n24, {}, {f(w(12,1))}, {
start_state(w(17,5)).
}).
#pos(n25, {}, {f(w(22,30))}, {
start_state(w(14,1)).
}).
#pos(n26, {}, {f(w(27,13))}, {
start_state(w(12,6)).
}).
#pos(n27, {}, {f(w(3,26))}, {
start_state(w(16,9)).
}).
#pos(n28, {}, {f(w(9,1))}, {
start_state(w(9,29)).
}).
#pos(n29, {}, {f(w(6,30))}, {
start_state(w(26,20)).
}).
#pos(n30, {}, {f(w(25,23))}, {
start_state(w(23,11)).
}).
#pos(n31, {}, {f(w(17,9))}, {
start_state(w(19,3)).
}).
#pos(n32, {}, {f(w(2,20))}, {
start_state(w(4,11)).
}).
#pos(n33, {}, {f(w(19,30))}, {
start_state(w(15,6)).
}).
#pos(n34, {}, {f(w(20,29))}, {
start_state(w(15,3)).
}).
#pos(n35, {}, {f(w(12,30))}, {
start_state(w(11,19)).
}).
#pos(n36, {}, {f(w(28,30))}, {
start_state(w(18,4)).
}).
#pos(n37, {}, {f(w(6,30))}, {
start_state(w(2,5)).
}).
#pos(n38, {}, {f(w(12,2))}, {
start_state(w(11,18)).
}).
#pos(n39, {}, {f(w(23,18))}, {
start_state(w(24,6)).
}).
#pos(n40, {}, {f(w(13,30))}, {
start_state(w(25,21)).
}).
#pos(n41, {}, {f(w(5,4))}, {
start_state(w(3,4)).
}).
#pos(n42, {}, {f(w(4,24))}, {
start_state(w(26,18)).
}).
#pos(n43, {}, {f(w(17,20))}, {
start_state(w(2,20)).
}).
#pos(n44, {}, {f(w(16,7))}, {
start_state(w(10,10)).
}).
#pos(n45, {}, {f(w(6,2))}, {
start_state(w(13,12)).
}).
#pos(n46, {}, {f(w(5,5))}, {
start_state(w(10,21)).
}).
#pos(n47, {}, {f(w(27,30))}, {
start_state(w(24,17)).
}).
#pos(n48, {}, {f(w(10,26))}, {
start_state(w(21,4)).
}).
#pos(n49, {}, {f(w(11,12))}, {
start_state(w(13,24)).
}).
#pos(n50, {}, {f(w(25,26))}, {
start_state(w(7,17)).
}).
#pos(n51, {}, {f(w(13,3))}, {
start_state(w(4,1)).
}).
#pos(n52, {}, {f(w(5,25))}, {
start_state(w(12,6)).
}).
#pos(n53, {}, {f(w(22,28))}, {
start_state(w(14,20)).
}).
#pos(n54, {}, {f(w(20,17))}, {
start_state(w(5,12)).
}).
#pos(n55, {}, {f(w(9,24))}, {
start_state(w(6,22)).
}).
#pos(n56, {}, {f(w(12,30))}, {
start_state(w(15,15)).
}).
#pos(n57, {}, {f(w(1,1))}, {
start_state(w(10,3)).
}).
#pos(n58, {}, {f(w(9,26))}, {
start_state(w(28,13)).
}).
#pos(n59, {}, {f(w(26,9))}, {
start_state(w(16,17)).
}).
#pos(n60, {}, {f(w(30,2))}, {
start_state(w(19,19)).
}).
#pos(n61, {}, {f(w(4,30))}, {
start_state(w(6,8)).
}).
#pos(n62, {}, {f(w(6,21))}, {
start_state(w(21,17)).
}).
#pos(n63, {}, {f(w(13,29))}, {
start_state(w(14,29)).
}).
#pos(n64, {}, {f(w(11,26))}, {
start_state(w(11,26)).
}).
#pos(n65, {}, {f(w(27,30))}, {
start_state(w(14,10)).
}).
#pos(n66, {}, {f(w(6,23))}, {
start_state(w(30,21)).
}).
#pos(n67, {}, {f(w(12,30))}, {
start_state(w(23,20)).
}).
#pos(n68, {}, {f(w(5,15))}, {
start_state(w(16,9)).
}).
#pos(n69, {}, {f(w(19,30))}, {
start_state(w(9,16)).
}).
#pos(n70, {}, {f(w(24,10))}, {
start_state(w(8,1)).
}).
#pos(n71, {}, {f(w(15,24))}, {
start_state(w(1,11)).
}).
#pos(n72, {}, {f(w(17,18))}, {
start_state(w(29,21)).
}).
#pos(n73, {}, {f(w(25,30))}, {
start_state(w(24,29)).
}).
#pos(n74, {}, {f(w(16,30))}, {
start_state(w(1,16)).
}).
#pos(n75, {}, {f(w(22,20))}, {
start_state(w(26,22)).
}).
#pos(n76, {}, {f(w(18,14))}, {
start_state(w(19,26)).
}).
#pos(n77, {}, {f(w(3,30))}, {
start_state(w(28,23)).
}).
#pos(n78, {}, {f(w(1,30))}, {
start_state(w(12,28)).
}).
#pos(n79, {}, {f(w(20,30))}, {
start_state(w(9,6)).
}).
#pos(n80, {}, {f(w(10,18))}, {
start_state(w(12,1)).
}).
#pos(n81, {}, {f(w(15,24))}, {
start_state(w(20,22)).
}).
#pos(n82, {}, {f(w(16,3))}, {
start_state(w(13,21)).
}).
#pos(n83, {}, {f(w(22,30))}, {
start_state(w(2,22)).
}).
#pos(n84, {}, {f(w(9,15))}, {
start_state(w(24,5)).
}).
#pos(n85, {}, {f(w(29,9))}, {
start_state(w(27,28)).
}).
#pos(n86, {}, {f(w(14,12))}, {
start_state(w(8,6)).
}).
#pos(n87, {}, {f(w(28,30))}, {
start_state(w(23,27)).
}).
#pos(n88, {}, {f(w(19,3))}, {
start_state(w(11,28)).
}).
#pos(n89, {}, {f(w(1,1))}, {
start_state(w(21,24)).
}).
#pos(n90, {}, {f(w(28,30))}, {
start_state(w(24,25)).
}).
#pos(n91, {}, {f(w(5,29))}, {
start_state(w(3,23)).
}).
#pos(n92, {}, {f(w(10,29))}, {
start_state(w(17,15)).
}).
#pos(n93, {}, {f(w(9,30))}, {
start_state(w(11,9)).
}).
#pos(n94, {}, {f(w(27,13))}, {
start_state(w(17,7)).
}).
#pos(n95, {}, {f(w(18,30))}, {
start_state(w(30,24)).
}).
#pos(n96, {}, {f(w(30,23))}, {
start_state(w(13,20)).
}).
#pos(n97, {}, {f(w(26,1))}, {
start_state(w(28,21)).
}).
#pos(n98, {}, {f(w(4,5))}, {
start_state(w(1,23)).
}).
#pos(n99, {}, {f(w(10,13))}, {
start_state(w(16,6)).
}).
