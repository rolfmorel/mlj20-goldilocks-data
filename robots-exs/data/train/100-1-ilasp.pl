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
start_state(w(4,3)).
}).
#pos(p1, {f(w(19,30))}, {}, {
start_state(w(19,17)).
}).
#pos(p2, {f(w(25,30))}, {}, {
start_state(w(25,17)).
}).
#pos(p3, {f(w(11,30))}, {}, {
start_state(w(11,21)).
}).
#pos(p4, {f(w(8,30))}, {}, {
start_state(w(8,1)).
}).
#pos(p5, {f(w(27,30))}, {}, {
start_state(w(27,4)).
}).
#pos(p6, {f(w(6,30))}, {}, {
start_state(w(6,15)).
}).
#pos(p7, {f(w(13,30))}, {}, {
start_state(w(13,7)).
}).
#pos(p8, {f(w(13,30))}, {}, {
start_state(w(13,29)).
}).
#pos(p9, {f(w(10,30))}, {}, {
start_state(w(10,15)).
}).
#pos(p10, {f(w(28,30))}, {}, {
start_state(w(28,19)).
}).
#pos(p11, {f(w(6,30))}, {}, {
start_state(w(6,21)).
}).
#pos(p12, {f(w(19,30))}, {}, {
start_state(w(19,25)).
}).
#pos(p13, {f(w(1,30))}, {}, {
start_state(w(1,7)).
}).
#pos(p14, {f(w(9,30))}, {}, {
start_state(w(9,7)).
}).
#pos(p15, {f(w(21,30))}, {}, {
start_state(w(21,26)).
}).
#pos(p16, {f(w(13,30))}, {}, {
start_state(w(13,4)).
}).
#pos(p17, {f(w(19,30))}, {}, {
start_state(w(19,27)).
}).
#pos(p18, {f(w(9,30))}, {}, {
start_state(w(9,15)).
}).
#pos(p19, {f(w(10,30))}, {}, {
start_state(w(10,10)).
}).
#pos(p20, {f(w(21,30))}, {}, {
start_state(w(21,4)).
}).
#pos(p21, {f(w(20,30))}, {}, {
start_state(w(20,1)).
}).
#pos(p22, {f(w(2,30))}, {}, {
start_state(w(2,27)).
}).
#pos(p23, {f(w(16,30))}, {}, {
start_state(w(16,20)).
}).
#pos(p24, {f(w(16,30))}, {}, {
start_state(w(16,23)).
}).
#pos(p25, {f(w(17,30))}, {}, {
start_state(w(17,16)).
}).
#pos(p26, {f(w(6,30))}, {}, {
start_state(w(6,27)).
}).
#pos(p27, {f(w(22,30))}, {}, {
start_state(w(22,29)).
}).
#pos(p28, {f(w(8,30))}, {}, {
start_state(w(8,29)).
}).
#pos(p29, {f(w(26,30))}, {}, {
start_state(w(26,6)).
}).
#pos(p30, {f(w(4,30))}, {}, {
start_state(w(4,20)).
}).
#pos(p31, {f(w(9,30))}, {}, {
start_state(w(9,16)).
}).
#pos(p32, {f(w(11,30))}, {}, {
start_state(w(11,12)).
}).
#pos(p33, {f(w(9,30))}, {}, {
start_state(w(9,27)).
}).
#pos(p34, {f(w(17,30))}, {}, {
start_state(w(17,23)).
}).
#pos(p35, {f(w(8,30))}, {}, {
start_state(w(8,15)).
}).
#pos(p36, {f(w(22,30))}, {}, {
start_state(w(22,23)).
}).
#pos(p37, {f(w(12,30))}, {}, {
start_state(w(12,14)).
}).
#pos(p38, {f(w(22,30))}, {}, {
start_state(w(22,9)).
}).
#pos(p39, {f(w(23,30))}, {}, {
start_state(w(23,22)).
}).
#pos(p40, {f(w(7,30))}, {}, {
start_state(w(7,23)).
}).
#pos(p41, {f(w(17,30))}, {}, {
start_state(w(17,21)).
}).
#pos(p42, {f(w(19,30))}, {}, {
start_state(w(19,22)).
}).
#pos(p43, {f(w(7,30))}, {}, {
start_state(w(7,10)).
}).
#pos(p44, {f(w(21,30))}, {}, {
start_state(w(21,25)).
}).
#pos(p45, {f(w(3,30))}, {}, {
start_state(w(3,29)).
}).
#pos(p46, {f(w(12,30))}, {}, {
start_state(w(12,14)).
}).
#pos(p47, {f(w(2,30))}, {}, {
start_state(w(2,24)).
}).
#pos(p48, {f(w(2,30))}, {}, {
start_state(w(2,26)).
}).
#pos(p49, {f(w(1,30))}, {}, {
start_state(w(1,9)).
}).
#pos(p50, {f(w(20,30))}, {}, {
start_state(w(20,13)).
}).
#pos(p51, {f(w(19,30))}, {}, {
start_state(w(19,2)).
}).
#pos(p52, {f(w(11,30))}, {}, {
start_state(w(11,10)).
}).
#pos(p53, {f(w(24,30))}, {}, {
start_state(w(24,29)).
}).
#pos(p54, {f(w(28,30))}, {}, {
start_state(w(28,16)).
}).
#pos(p55, {f(w(27,30))}, {}, {
start_state(w(27,27)).
}).
#pos(p56, {f(w(4,30))}, {}, {
start_state(w(4,9)).
}).
#pos(p57, {f(w(10,30))}, {}, {
start_state(w(10,16)).
}).
#pos(p58, {f(w(13,30))}, {}, {
start_state(w(13,10)).
}).
#pos(p59, {f(w(30,30))}, {}, {
start_state(w(30,3)).
}).
#pos(p60, {f(w(29,30))}, {}, {
start_state(w(29,14)).
}).
#pos(p61, {f(w(1,30))}, {}, {
start_state(w(1,9)).
}).
#pos(p62, {f(w(10,30))}, {}, {
start_state(w(10,5)).
}).
#pos(p63, {f(w(24,30))}, {}, {
start_state(w(24,14)).
}).
#pos(p64, {f(w(12,30))}, {}, {
start_state(w(12,20)).
}).
#pos(p65, {f(w(4,30))}, {}, {
start_state(w(4,15)).
}).
#pos(p66, {f(w(12,30))}, {}, {
start_state(w(12,7)).
}).
#pos(p67, {f(w(26,30))}, {}, {
start_state(w(26,20)).
}).
#pos(p68, {f(w(22,30))}, {}, {
start_state(w(22,14)).
}).
#pos(p69, {f(w(28,30))}, {}, {
start_state(w(28,7)).
}).
#pos(p70, {f(w(5,30))}, {}, {
start_state(w(5,8)).
}).
#pos(p71, {f(w(19,30))}, {}, {
start_state(w(19,25)).
}).
#pos(p72, {f(w(8,30))}, {}, {
start_state(w(8,17)).
}).
#pos(p73, {f(w(28,30))}, {}, {
start_state(w(28,19)).
}).
#pos(p74, {f(w(26,30))}, {}, {
start_state(w(26,22)).
}).
#pos(p75, {f(w(29,30))}, {}, {
start_state(w(29,4)).
}).
#pos(p76, {f(w(13,30))}, {}, {
start_state(w(13,8)).
}).
#pos(p77, {f(w(25,30))}, {}, {
start_state(w(25,16)).
}).
#pos(p78, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p79, {f(w(26,30))}, {}, {
start_state(w(26,26)).
}).
#pos(p80, {f(w(6,30))}, {}, {
start_state(w(6,26)).
}).
#pos(p81, {f(w(24,30))}, {}, {
start_state(w(24,25)).
}).
#pos(p82, {f(w(27,30))}, {}, {
start_state(w(27,29)).
}).
#pos(p83, {f(w(27,30))}, {}, {
start_state(w(27,25)).
}).
#pos(p84, {f(w(13,30))}, {}, {
start_state(w(13,24)).
}).
#pos(p85, {f(w(24,30))}, {}, {
start_state(w(24,3)).
}).
#pos(p86, {f(w(30,30))}, {}, {
start_state(w(30,26)).
}).
#pos(p87, {f(w(26,30))}, {}, {
start_state(w(26,4)).
}).
#pos(p88, {f(w(26,30))}, {}, {
start_state(w(26,11)).
}).
#pos(p89, {f(w(26,30))}, {}, {
start_state(w(26,11)).
}).
#pos(p90, {f(w(8,30))}, {}, {
start_state(w(8,21)).
}).
#pos(p91, {f(w(22,30))}, {}, {
start_state(w(22,29)).
}).
#pos(p92, {f(w(4,30))}, {}, {
start_state(w(4,9)).
}).
#pos(p93, {f(w(30,30))}, {}, {
start_state(w(30,29)).
}).
#pos(p94, {f(w(8,30))}, {}, {
start_state(w(8,12)).
}).
#pos(p95, {f(w(14,30))}, {}, {
start_state(w(14,3)).
}).
#pos(p96, {f(w(24,30))}, {}, {
start_state(w(24,6)).
}).
#pos(p97, {f(w(30,30))}, {}, {
start_state(w(30,29)).
}).
#pos(p98, {f(w(28,30))}, {}, {
start_state(w(28,12)).
}).
#pos(p99, {f(w(1,30))}, {}, {
start_state(w(1,29)).
}).
#pos(n0, {}, {f(w(22,6))}, {
start_state(w(5,16)).
}).
#pos(n1, {}, {f(w(29,30))}, {
start_state(w(20,23)).
}).
#pos(n2, {}, {f(w(13,5))}, {
start_state(w(23,6)).
}).
#pos(n3, {}, {f(w(19,18))}, {
start_state(w(28,1)).
}).
#pos(n4, {}, {f(w(5,30))}, {
start_state(w(14,14)).
}).
#pos(n5, {}, {f(w(25,6))}, {
start_state(w(29,22)).
}).
#pos(n6, {}, {f(w(24,6))}, {
start_state(w(28,12)).
}).
#pos(n7, {}, {f(w(7,30))}, {
start_state(w(11,10)).
}).
#pos(n8, {}, {f(w(2,22))}, {
start_state(w(14,21)).
}).
#pos(n9, {}, {f(w(20,23))}, {
start_state(w(3,14)).
}).
#pos(n10, {}, {f(w(25,28))}, {
start_state(w(15,25)).
}).
#pos(n11, {}, {f(w(16,14))}, {
start_state(w(15,29)).
}).
#pos(n12, {}, {f(w(2,30))}, {
start_state(w(22,13)).
}).
#pos(n13, {}, {f(w(11,30))}, {
start_state(w(27,27)).
}).
#pos(n14, {}, {f(w(30,23))}, {
start_state(w(27,30)).
}).
#pos(n15, {}, {f(w(21,12))}, {
start_state(w(16,16)).
}).
#pos(n16, {}, {f(w(10,3))}, {
start_state(w(27,10)).
}).
#pos(n17, {}, {f(w(30,21))}, {
start_state(w(13,6)).
}).
#pos(n18, {}, {f(w(16,13))}, {
start_state(w(16,2)).
}).
#pos(n19, {}, {f(w(25,26))}, {
start_state(w(5,9)).
}).
#pos(n20, {}, {f(w(30,11))}, {
start_state(w(30,25)).
}).
#pos(n21, {}, {f(w(11,30))}, {
start_state(w(25,13)).
}).
#pos(n22, {}, {f(w(4,19))}, {
start_state(w(28,23)).
}).
#pos(n23, {}, {f(w(30,24))}, {
start_state(w(26,3)).
}).
#pos(n24, {}, {f(w(16,29))}, {
start_state(w(19,21)).
}).
#pos(n25, {}, {f(w(13,30))}, {
start_state(w(30,27)).
}).
#pos(n26, {}, {f(w(27,30))}, {
start_state(w(3,3)).
}).
#pos(n27, {}, {f(w(16,30))}, {
start_state(w(23,29)).
}).
#pos(n28, {}, {f(w(6,30))}, {
start_state(w(5,18)).
}).
#pos(n29, {}, {f(w(23,27))}, {
start_state(w(20,21)).
}).
#pos(n30, {}, {f(w(10,12))}, {
start_state(w(3,23)).
}).
#pos(n31, {}, {f(w(12,8))}, {
start_state(w(18,8)).
}).
#pos(n32, {}, {f(w(11,4))}, {
start_state(w(27,25)).
}).
#pos(n33, {}, {f(w(15,25))}, {
start_state(w(23,26)).
}).
#pos(n34, {}, {f(w(5,30))}, {
start_state(w(7,11)).
}).
#pos(n35, {}, {f(w(16,29))}, {
start_state(w(23,30)).
}).
#pos(n36, {}, {f(w(28,30))}, {
start_state(w(1,2)).
}).
#pos(n37, {}, {f(w(7,5))}, {
start_state(w(18,19)).
}).
#pos(n38, {}, {f(w(4,14))}, {
start_state(w(5,22)).
}).
#pos(n39, {}, {f(w(14,10))}, {
start_state(w(3,19)).
}).
#pos(n40, {}, {f(w(6,16))}, {
start_state(w(13,4)).
}).
#pos(n41, {}, {f(w(22,30))}, {
start_state(w(18,5)).
}).
#pos(n42, {}, {f(w(15,4))}, {
start_state(w(14,13)).
}).
#pos(n43, {}, {f(w(16,30))}, {
start_state(w(15,15)).
}).
#pos(n44, {}, {f(w(17,16))}, {
start_state(w(1,11)).
}).
#pos(n45, {}, {f(w(13,2))}, {
start_state(w(15,26)).
}).
#pos(n46, {}, {f(w(2,22))}, {
start_state(w(2,28)).
}).
#pos(n47, {}, {f(w(10,20))}, {
start_state(w(11,14)).
}).
#pos(n48, {}, {f(w(3,16))}, {
start_state(w(15,11)).
}).
#pos(n49, {}, {f(w(1,13))}, {
start_state(w(20,1)).
}).
#pos(n50, {}, {f(w(19,19))}, {
start_state(w(19,12)).
}).
#pos(n51, {}, {f(w(13,2))}, {
start_state(w(20,30)).
}).
#pos(n52, {}, {f(w(11,13))}, {
start_state(w(30,18)).
}).
#pos(n53, {}, {f(w(23,1))}, {
start_state(w(10,11)).
}).
#pos(n54, {}, {f(w(1,8))}, {
start_state(w(1,15)).
}).
#pos(n55, {}, {f(w(7,10))}, {
start_state(w(30,6)).
}).
#pos(n56, {}, {f(w(5,3))}, {
start_state(w(29,5)).
}).
#pos(n57, {}, {f(w(16,30))}, {
start_state(w(27,18)).
}).
#pos(n58, {}, {f(w(9,30))}, {
start_state(w(17,11)).
}).
#pos(n59, {}, {f(w(4,13))}, {
start_state(w(23,4)).
}).
#pos(n60, {}, {f(w(30,8))}, {
start_state(w(19,7)).
}).
#pos(n61, {}, {f(w(4,2))}, {
start_state(w(3,18)).
}).
#pos(n62, {}, {f(w(5,7))}, {
start_state(w(16,7)).
}).
#pos(n63, {}, {f(w(20,3))}, {
start_state(w(25,10)).
}).
#pos(n64, {}, {f(w(1,22))}, {
start_state(w(20,18)).
}).
#pos(n65, {}, {f(w(28,16))}, {
start_state(w(30,7)).
}).
#pos(n66, {}, {f(w(1,15))}, {
start_state(w(24,5)).
}).
#pos(n67, {}, {f(w(14,16))}, {
start_state(w(28,26)).
}).
#pos(n68, {}, {f(w(23,2))}, {
start_state(w(10,12)).
}).
#pos(n69, {}, {f(w(3,29))}, {
start_state(w(24,27)).
}).
#pos(n70, {}, {f(w(30,12))}, {
start_state(w(20,18)).
}).
#pos(n71, {}, {f(w(15,13))}, {
start_state(w(20,19)).
}).
#pos(n72, {}, {f(w(18,22))}, {
start_state(w(30,16)).
}).
#pos(n73, {}, {f(w(15,9))}, {
start_state(w(6,27)).
}).
#pos(n74, {}, {f(w(16,8))}, {
start_state(w(17,18)).
}).
#pos(n75, {}, {f(w(17,21))}, {
start_state(w(30,10)).
}).
#pos(n76, {}, {f(w(28,12))}, {
start_state(w(23,7)).
}).
#pos(n77, {}, {f(w(7,30))}, {
start_state(w(30,23)).
}).
#pos(n78, {}, {f(w(13,30))}, {
start_state(w(29,6)).
}).
#pos(n79, {}, {f(w(9,8))}, {
start_state(w(5,29)).
}).
#pos(n80, {}, {f(w(22,30))}, {
start_state(w(27,10)).
}).
#pos(n81, {}, {f(w(5,19))}, {
start_state(w(28,18)).
}).
#pos(n82, {}, {f(w(25,8))}, {
start_state(w(24,6)).
}).
#pos(n83, {}, {f(w(16,30))}, {
start_state(w(15,16)).
}).
#pos(n84, {}, {f(w(17,17))}, {
start_state(w(14,5)).
}).
#pos(n85, {}, {f(w(17,18))}, {
start_state(w(16,22)).
}).
#pos(n86, {}, {f(w(28,30))}, {
start_state(w(3,17)).
}).
#pos(n87, {}, {f(w(17,30))}, {
start_state(w(5,9)).
}).
#pos(n88, {}, {f(w(25,23))}, {
start_state(w(25,29)).
}).
#pos(n89, {}, {f(w(24,16))}, {
start_state(w(25,11)).
}).
#pos(n90, {}, {f(w(2,11))}, {
start_state(w(11,3)).
}).
#pos(n91, {}, {f(w(29,25))}, {
start_state(w(25,12)).
}).
#pos(n92, {}, {f(w(6,2))}, {
start_state(w(6,3)).
}).
#pos(n93, {}, {f(w(15,21))}, {
start_state(w(22,14)).
}).
#pos(n94, {}, {f(w(1,7))}, {
start_state(w(18,9)).
}).
#pos(n95, {}, {f(w(6,2))}, {
start_state(w(1,29)).
}).
#pos(n96, {}, {f(w(19,7))}, {
start_state(w(13,21)).
}).
#pos(n97, {}, {f(w(12,5))}, {
start_state(w(6,28)).
}).
#pos(n98, {}, {f(w(26,29))}, {
start_state(w(14,27)).
}).
#pos(n99, {}, {f(w(3,7))}, {
start_state(w(2,17)).
}).
