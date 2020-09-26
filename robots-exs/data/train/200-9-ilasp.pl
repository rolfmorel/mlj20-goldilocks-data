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

#pos(p0, {f(w(11,30))}, {}, {
start_state(w(11,4)).
}).
#pos(p1, {f(w(10,30))}, {}, {
start_state(w(10,19)).
}).
#pos(p2, {f(w(30,30))}, {}, {
start_state(w(30,20)).
}).
#pos(p3, {f(w(30,30))}, {}, {
start_state(w(30,26)).
}).
#pos(p4, {f(w(25,30))}, {}, {
start_state(w(25,27)).
}).
#pos(p5, {f(w(29,30))}, {}, {
start_state(w(29,25)).
}).
#pos(p6, {f(w(21,30))}, {}, {
start_state(w(21,12)).
}).
#pos(p7, {f(w(4,30))}, {}, {
start_state(w(4,9)).
}).
#pos(p8, {f(w(3,30))}, {}, {
start_state(w(3,15)).
}).
#pos(p9, {f(w(28,30))}, {}, {
start_state(w(28,4)).
}).
#pos(p10, {f(w(2,30))}, {}, {
start_state(w(2,26)).
}).
#pos(p11, {f(w(19,30))}, {}, {
start_state(w(19,8)).
}).
#pos(p12, {f(w(7,30))}, {}, {
start_state(w(7,14)).
}).
#pos(p13, {f(w(4,30))}, {}, {
start_state(w(4,9)).
}).
#pos(p14, {f(w(1,30))}, {}, {
start_state(w(1,5)).
}).
#pos(p15, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p16, {f(w(8,30))}, {}, {
start_state(w(8,7)).
}).
#pos(p17, {f(w(17,30))}, {}, {
start_state(w(17,1)).
}).
#pos(p18, {f(w(6,30))}, {}, {
start_state(w(6,27)).
}).
#pos(p19, {f(w(3,30))}, {}, {
start_state(w(3,29)).
}).
#pos(p20, {f(w(28,30))}, {}, {
start_state(w(28,29)).
}).
#pos(p21, {f(w(26,30))}, {}, {
start_state(w(26,15)).
}).
#pos(p22, {f(w(19,30))}, {}, {
start_state(w(19,13)).
}).
#pos(p23, {f(w(21,30))}, {}, {
start_state(w(21,25)).
}).
#pos(p24, {f(w(9,30))}, {}, {
start_state(w(9,15)).
}).
#pos(p25, {f(w(11,30))}, {}, {
start_state(w(11,27)).
}).
#pos(p26, {f(w(8,30))}, {}, {
start_state(w(8,20)).
}).
#pos(p27, {f(w(5,30))}, {}, {
start_state(w(5,27)).
}).
#pos(p28, {f(w(23,30))}, {}, {
start_state(w(23,20)).
}).
#pos(p29, {f(w(11,30))}, {}, {
start_state(w(11,10)).
}).
#pos(p30, {f(w(1,30))}, {}, {
start_state(w(1,6)).
}).
#pos(p31, {f(w(21,30))}, {}, {
start_state(w(21,25)).
}).
#pos(p32, {f(w(7,30))}, {}, {
start_state(w(7,13)).
}).
#pos(p33, {f(w(26,30))}, {}, {
start_state(w(26,29)).
}).
#pos(p34, {f(w(20,30))}, {}, {
start_state(w(20,29)).
}).
#pos(p35, {f(w(12,30))}, {}, {
start_state(w(12,9)).
}).
#pos(p36, {f(w(13,30))}, {}, {
start_state(w(13,6)).
}).
#pos(p37, {f(w(8,30))}, {}, {
start_state(w(8,28)).
}).
#pos(p38, {f(w(6,30))}, {}, {
start_state(w(6,14)).
}).
#pos(p39, {f(w(27,30))}, {}, {
start_state(w(27,6)).
}).
#pos(p40, {f(w(28,30))}, {}, {
start_state(w(28,22)).
}).
#pos(p41, {f(w(16,30))}, {}, {
start_state(w(16,11)).
}).
#pos(p42, {f(w(8,30))}, {}, {
start_state(w(8,1)).
}).
#pos(p43, {f(w(15,30))}, {}, {
start_state(w(15,27)).
}).
#pos(p44, {f(w(25,30))}, {}, {
start_state(w(25,27)).
}).
#pos(p45, {f(w(29,30))}, {}, {
start_state(w(29,14)).
}).
#pos(p46, {f(w(11,30))}, {}, {
start_state(w(11,5)).
}).
#pos(p47, {f(w(7,30))}, {}, {
start_state(w(7,27)).
}).
#pos(p48, {f(w(12,30))}, {}, {
start_state(w(12,6)).
}).
#pos(p49, {f(w(13,30))}, {}, {
start_state(w(13,2)).
}).
#pos(p50, {f(w(24,30))}, {}, {
start_state(w(24,23)).
}).
#pos(p51, {f(w(13,30))}, {}, {
start_state(w(13,23)).
}).
#pos(p52, {f(w(16,30))}, {}, {
start_state(w(16,29)).
}).
#pos(p53, {f(w(4,30))}, {}, {
start_state(w(4,28)).
}).
#pos(p54, {f(w(4,30))}, {}, {
start_state(w(4,15)).
}).
#pos(p55, {f(w(14,30))}, {}, {
start_state(w(14,8)).
}).
#pos(p56, {f(w(9,30))}, {}, {
start_state(w(9,21)).
}).
#pos(p57, {f(w(9,30))}, {}, {
start_state(w(9,25)).
}).
#pos(p58, {f(w(28,30))}, {}, {
start_state(w(28,5)).
}).
#pos(p59, {f(w(6,30))}, {}, {
start_state(w(6,9)).
}).
#pos(p60, {f(w(25,30))}, {}, {
start_state(w(25,4)).
}).
#pos(p61, {f(w(19,30))}, {}, {
start_state(w(19,21)).
}).
#pos(p62, {f(w(13,30))}, {}, {
start_state(w(13,27)).
}).
#pos(p63, {f(w(16,30))}, {}, {
start_state(w(16,11)).
}).
#pos(p64, {f(w(28,30))}, {}, {
start_state(w(28,7)).
}).
#pos(p65, {f(w(5,30))}, {}, {
start_state(w(5,6)).
}).
#pos(p66, {f(w(26,30))}, {}, {
start_state(w(26,21)).
}).
#pos(p67, {f(w(7,30))}, {}, {
start_state(w(7,5)).
}).
#pos(p68, {f(w(30,30))}, {}, {
start_state(w(30,4)).
}).
#pos(p69, {f(w(23,30))}, {}, {
start_state(w(23,11)).
}).
#pos(p70, {f(w(16,30))}, {}, {
start_state(w(16,26)).
}).
#pos(p71, {f(w(5,30))}, {}, {
start_state(w(5,16)).
}).
#pos(p72, {f(w(19,30))}, {}, {
start_state(w(19,22)).
}).
#pos(p73, {f(w(21,30))}, {}, {
start_state(w(21,16)).
}).
#pos(p74, {f(w(13,30))}, {}, {
start_state(w(13,22)).
}).
#pos(p75, {f(w(5,30))}, {}, {
start_state(w(5,18)).
}).
#pos(p76, {f(w(29,30))}, {}, {
start_state(w(29,5)).
}).
#pos(p77, {f(w(17,30))}, {}, {
start_state(w(17,17)).
}).
#pos(p78, {f(w(17,30))}, {}, {
start_state(w(17,27)).
}).
#pos(p79, {f(w(26,30))}, {}, {
start_state(w(26,19)).
}).
#pos(p80, {f(w(23,30))}, {}, {
start_state(w(23,29)).
}).
#pos(p81, {f(w(11,30))}, {}, {
start_state(w(11,18)).
}).
#pos(p82, {f(w(26,30))}, {}, {
start_state(w(26,22)).
}).
#pos(p83, {f(w(28,30))}, {}, {
start_state(w(28,1)).
}).
#pos(p84, {f(w(15,30))}, {}, {
start_state(w(15,5)).
}).
#pos(p85, {f(w(28,30))}, {}, {
start_state(w(28,19)).
}).
#pos(p86, {f(w(11,30))}, {}, {
start_state(w(11,2)).
}).
#pos(p87, {f(w(20,30))}, {}, {
start_state(w(20,19)).
}).
#pos(p88, {f(w(7,30))}, {}, {
start_state(w(7,29)).
}).
#pos(p89, {f(w(1,30))}, {}, {
start_state(w(1,8)).
}).
#pos(p90, {f(w(22,30))}, {}, {
start_state(w(22,19)).
}).
#pos(p91, {f(w(7,30))}, {}, {
start_state(w(7,17)).
}).
#pos(p92, {f(w(2,30))}, {}, {
start_state(w(2,26)).
}).
#pos(p93, {f(w(30,30))}, {}, {
start_state(w(30,2)).
}).
#pos(p94, {f(w(28,30))}, {}, {
start_state(w(28,6)).
}).
#pos(p95, {f(w(12,30))}, {}, {
start_state(w(12,18)).
}).
#pos(p96, {f(w(26,30))}, {}, {
start_state(w(26,12)).
}).
#pos(p97, {f(w(25,30))}, {}, {
start_state(w(25,29)).
}).
#pos(p98, {f(w(26,30))}, {}, {
start_state(w(26,9)).
}).
#pos(p99, {f(w(5,30))}, {}, {
start_state(w(5,10)).
}).
#pos(p100, {f(w(7,30))}, {}, {
start_state(w(7,15)).
}).
#pos(p101, {f(w(19,30))}, {}, {
start_state(w(19,13)).
}).
#pos(p102, {f(w(6,30))}, {}, {
start_state(w(6,26)).
}).
#pos(p103, {f(w(11,30))}, {}, {
start_state(w(11,20)).
}).
#pos(p104, {f(w(11,30))}, {}, {
start_state(w(11,18)).
}).
#pos(p105, {f(w(3,30))}, {}, {
start_state(w(3,7)).
}).
#pos(p106, {f(w(1,30))}, {}, {
start_state(w(1,2)).
}).
#pos(p107, {f(w(24,30))}, {}, {
start_state(w(24,3)).
}).
#pos(p108, {f(w(27,30))}, {}, {
start_state(w(27,5)).
}).
#pos(p109, {f(w(17,30))}, {}, {
start_state(w(17,29)).
}).
#pos(p110, {f(w(19,30))}, {}, {
start_state(w(19,5)).
}).
#pos(p111, {f(w(15,30))}, {}, {
start_state(w(15,25)).
}).
#pos(p112, {f(w(30,30))}, {}, {
start_state(w(30,27)).
}).
#pos(p113, {f(w(28,30))}, {}, {
start_state(w(28,16)).
}).
#pos(p114, {f(w(6,30))}, {}, {
start_state(w(6,7)).
}).
#pos(p115, {f(w(4,30))}, {}, {
start_state(w(4,23)).
}).
#pos(p116, {f(w(29,30))}, {}, {
start_state(w(29,16)).
}).
#pos(p117, {f(w(26,30))}, {}, {
start_state(w(26,22)).
}).
#pos(p118, {f(w(3,30))}, {}, {
start_state(w(3,10)).
}).
#pos(p119, {f(w(12,30))}, {}, {
start_state(w(12,25)).
}).
#pos(p120, {f(w(12,30))}, {}, {
start_state(w(12,14)).
}).
#pos(p121, {f(w(29,30))}, {}, {
start_state(w(29,5)).
}).
#pos(p122, {f(w(4,30))}, {}, {
start_state(w(4,22)).
}).
#pos(p123, {f(w(18,30))}, {}, {
start_state(w(18,8)).
}).
#pos(p124, {f(w(14,30))}, {}, {
start_state(w(14,15)).
}).
#pos(p125, {f(w(8,30))}, {}, {
start_state(w(8,10)).
}).
#pos(p126, {f(w(23,30))}, {}, {
start_state(w(23,18)).
}).
#pos(p127, {f(w(9,30))}, {}, {
start_state(w(9,21)).
}).
#pos(p128, {f(w(15,30))}, {}, {
start_state(w(15,7)).
}).
#pos(p129, {f(w(1,30))}, {}, {
start_state(w(1,1)).
}).
#pos(p130, {f(w(28,30))}, {}, {
start_state(w(28,28)).
}).
#pos(p131, {f(w(3,30))}, {}, {
start_state(w(3,2)).
}).
#pos(p132, {f(w(18,30))}, {}, {
start_state(w(18,3)).
}).
#pos(p133, {f(w(8,30))}, {}, {
start_state(w(8,16)).
}).
#pos(p134, {f(w(16,30))}, {}, {
start_state(w(16,11)).
}).
#pos(p135, {f(w(1,30))}, {}, {
start_state(w(1,22)).
}).
#pos(p136, {f(w(30,30))}, {}, {
start_state(w(30,9)).
}).
#pos(p137, {f(w(6,30))}, {}, {
start_state(w(6,26)).
}).
#pos(p138, {f(w(9,30))}, {}, {
start_state(w(9,17)).
}).
#pos(p139, {f(w(14,30))}, {}, {
start_state(w(14,22)).
}).
#pos(p140, {f(w(14,30))}, {}, {
start_state(w(14,24)).
}).
#pos(p141, {f(w(29,30))}, {}, {
start_state(w(29,18)).
}).
#pos(p142, {f(w(6,30))}, {}, {
start_state(w(6,18)).
}).
#pos(p143, {f(w(10,30))}, {}, {
start_state(w(10,28)).
}).
#pos(p144, {f(w(21,30))}, {}, {
start_state(w(21,5)).
}).
#pos(p145, {f(w(15,30))}, {}, {
start_state(w(15,11)).
}).
#pos(p146, {f(w(8,30))}, {}, {
start_state(w(8,17)).
}).
#pos(p147, {f(w(17,30))}, {}, {
start_state(w(17,20)).
}).
#pos(p148, {f(w(29,30))}, {}, {
start_state(w(29,28)).
}).
#pos(p149, {f(w(8,30))}, {}, {
start_state(w(8,9)).
}).
#pos(p150, {f(w(6,30))}, {}, {
start_state(w(6,11)).
}).
#pos(p151, {f(w(17,30))}, {}, {
start_state(w(17,14)).
}).
#pos(p152, {f(w(9,30))}, {}, {
start_state(w(9,29)).
}).
#pos(p153, {f(w(1,30))}, {}, {
start_state(w(1,5)).
}).
#pos(p154, {f(w(18,30))}, {}, {
start_state(w(18,12)).
}).
#pos(p155, {f(w(15,30))}, {}, {
start_state(w(15,1)).
}).
#pos(p156, {f(w(13,30))}, {}, {
start_state(w(13,28)).
}).
#pos(p157, {f(w(26,30))}, {}, {
start_state(w(26,18)).
}).
#pos(p158, {f(w(21,30))}, {}, {
start_state(w(21,3)).
}).
#pos(p159, {f(w(23,30))}, {}, {
start_state(w(23,7)).
}).
#pos(p160, {f(w(29,30))}, {}, {
start_state(w(29,7)).
}).
#pos(p161, {f(w(16,30))}, {}, {
start_state(w(16,7)).
}).
#pos(p162, {f(w(13,30))}, {}, {
start_state(w(13,16)).
}).
#pos(p163, {f(w(8,30))}, {}, {
start_state(w(8,23)).
}).
#pos(p164, {f(w(2,30))}, {}, {
start_state(w(2,10)).
}).
#pos(p165, {f(w(12,30))}, {}, {
start_state(w(12,25)).
}).
#pos(p166, {f(w(25,30))}, {}, {
start_state(w(25,7)).
}).
#pos(p167, {f(w(25,30))}, {}, {
start_state(w(25,12)).
}).
#pos(p168, {f(w(1,30))}, {}, {
start_state(w(1,17)).
}).
#pos(p169, {f(w(25,30))}, {}, {
start_state(w(25,9)).
}).
#pos(p170, {f(w(24,30))}, {}, {
start_state(w(24,29)).
}).
#pos(p171, {f(w(6,30))}, {}, {
start_state(w(6,12)).
}).
#pos(p172, {f(w(1,30))}, {}, {
start_state(w(1,6)).
}).
#pos(p173, {f(w(25,30))}, {}, {
start_state(w(25,9)).
}).
#pos(p174, {f(w(26,30))}, {}, {
start_state(w(26,25)).
}).
#pos(p175, {f(w(16,30))}, {}, {
start_state(w(16,3)).
}).
#pos(p176, {f(w(2,30))}, {}, {
start_state(w(2,27)).
}).
#pos(p177, {f(w(30,30))}, {}, {
start_state(w(30,19)).
}).
#pos(p178, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p179, {f(w(14,30))}, {}, {
start_state(w(14,15)).
}).
#pos(p180, {f(w(19,30))}, {}, {
start_state(w(19,25)).
}).
#pos(p181, {f(w(6,30))}, {}, {
start_state(w(6,19)).
}).
#pos(p182, {f(w(2,30))}, {}, {
start_state(w(2,22)).
}).
#pos(p183, {f(w(7,30))}, {}, {
start_state(w(7,14)).
}).
#pos(p184, {f(w(15,30))}, {}, {
start_state(w(15,16)).
}).
#pos(p185, {f(w(11,30))}, {}, {
start_state(w(11,9)).
}).
#pos(p186, {f(w(16,30))}, {}, {
start_state(w(16,22)).
}).
#pos(p187, {f(w(15,30))}, {}, {
start_state(w(15,28)).
}).
#pos(p188, {f(w(25,30))}, {}, {
start_state(w(25,23)).
}).
#pos(p189, {f(w(5,30))}, {}, {
start_state(w(5,25)).
}).
#pos(p190, {f(w(22,30))}, {}, {
start_state(w(22,16)).
}).
#pos(p191, {f(w(19,30))}, {}, {
start_state(w(19,17)).
}).
#pos(p192, {f(w(19,30))}, {}, {
start_state(w(19,17)).
}).
#pos(p193, {f(w(30,30))}, {}, {
start_state(w(30,6)).
}).
#pos(p194, {f(w(30,30))}, {}, {
start_state(w(30,13)).
}).
#pos(p195, {f(w(19,30))}, {}, {
start_state(w(19,10)).
}).
#pos(p196, {f(w(30,30))}, {}, {
start_state(w(30,29)).
}).
#pos(p197, {f(w(21,30))}, {}, {
start_state(w(21,29)).
}).
#pos(p198, {f(w(14,30))}, {}, {
start_state(w(14,29)).
}).
#pos(p199, {f(w(26,30))}, {}, {
start_state(w(26,8)).
}).
#pos(n0, {}, {f(w(4,30))}, {
start_state(w(15,22)).
}).
#pos(n1, {}, {f(w(17,30))}, {
start_state(w(22,10)).
}).
#pos(n2, {}, {f(w(25,5))}, {
start_state(w(20,8)).
}).
#pos(n3, {}, {f(w(21,15))}, {
start_state(w(21,20)).
}).
#pos(n4, {}, {f(w(25,12))}, {
start_state(w(26,24)).
}).
#pos(n5, {}, {f(w(22,30))}, {
start_state(w(27,13)).
}).
#pos(n6, {}, {f(w(22,16))}, {
start_state(w(20,5)).
}).
#pos(n7, {}, {f(w(29,22))}, {
start_state(w(13,15)).
}).
#pos(n8, {}, {f(w(3,30))}, {
start_state(w(11,4)).
}).
#pos(n9, {}, {f(w(16,30))}, {
start_state(w(29,21)).
}).
#pos(n10, {}, {f(w(9,20))}, {
start_state(w(6,28)).
}).
#pos(n11, {}, {f(w(25,12))}, {
start_state(w(24,20)).
}).
#pos(n12, {}, {f(w(27,12))}, {
start_state(w(13,5)).
}).
#pos(n13, {}, {f(w(13,16))}, {
start_state(w(28,23)).
}).
#pos(n14, {}, {f(w(25,23))}, {
start_state(w(23,3)).
}).
#pos(n15, {}, {f(w(20,12))}, {
start_state(w(24,26)).
}).
#pos(n16, {}, {f(w(1,18))}, {
start_state(w(17,16)).
}).
#pos(n17, {}, {f(w(15,5))}, {
start_state(w(13,30)).
}).
#pos(n18, {}, {f(w(7,11))}, {
start_state(w(21,19)).
}).
#pos(n19, {}, {f(w(11,26))}, {
start_state(w(24,4)).
}).
#pos(n20, {}, {f(w(28,7))}, {
start_state(w(2,25)).
}).
#pos(n21, {}, {f(w(19,9))}, {
start_state(w(25,9)).
}).
#pos(n22, {}, {f(w(24,23))}, {
start_state(w(13,5)).
}).
#pos(n23, {}, {f(w(19,28))}, {
start_state(w(1,19)).
}).
#pos(n24, {}, {f(w(3,18))}, {
start_state(w(7,21)).
}).
#pos(n25, {}, {f(w(26,30))}, {
start_state(w(8,4)).
}).
#pos(n26, {}, {f(w(27,7))}, {
start_state(w(17,25)).
}).
#pos(n27, {}, {f(w(4,30))}, {
start_state(w(15,16)).
}).
#pos(n28, {}, {f(w(18,14))}, {
start_state(w(13,30)).
}).
#pos(n29, {}, {f(w(16,26))}, {
start_state(w(17,12)).
}).
#pos(n30, {}, {f(w(24,10))}, {
start_state(w(16,17)).
}).
#pos(n31, {}, {f(w(13,30))}, {
start_state(w(26,21)).
}).
#pos(n32, {}, {f(w(17,13))}, {
start_state(w(24,19)).
}).
#pos(n33, {}, {f(w(5,8))}, {
start_state(w(11,26)).
}).
#pos(n34, {}, {f(w(16,15))}, {
start_state(w(27,30)).
}).
#pos(n35, {}, {f(w(13,25))}, {
start_state(w(22,24)).
}).
#pos(n36, {}, {f(w(2,16))}, {
start_state(w(27,28)).
}).
#pos(n37, {}, {f(w(5,30))}, {
start_state(w(24,27)).
}).
#pos(n38, {}, {f(w(8,2))}, {
start_state(w(3,1)).
}).
#pos(n39, {}, {f(w(10,11))}, {
start_state(w(28,24)).
}).
#pos(n40, {}, {f(w(1,30))}, {
start_state(w(13,4)).
}).
#pos(n41, {}, {f(w(22,30))}, {
start_state(w(9,19)).
}).
#pos(n42, {}, {f(w(23,30))}, {
start_state(w(12,7)).
}).
#pos(n43, {}, {f(w(6,17))}, {
start_state(w(6,10)).
}).
#pos(n44, {}, {f(w(12,26))}, {
start_state(w(11,28)).
}).
#pos(n45, {}, {f(w(29,28))}, {
start_state(w(22,13)).
}).
#pos(n46, {}, {f(w(24,30))}, {
start_state(w(11,7)).
}).
#pos(n47, {}, {f(w(21,14))}, {
start_state(w(2,14)).
}).
#pos(n48, {}, {f(w(11,8))}, {
start_state(w(11,12)).
}).
#pos(n49, {}, {f(w(3,25))}, {
start_state(w(18,17)).
}).
#pos(n50, {}, {f(w(26,30))}, {
start_state(w(27,7)).
}).
#pos(n51, {}, {f(w(4,28))}, {
start_state(w(9,14)).
}).
#pos(n52, {}, {f(w(15,24))}, {
start_state(w(24,29)).
}).
#pos(n53, {}, {f(w(17,13))}, {
start_state(w(15,5)).
}).
#pos(n54, {}, {f(w(7,5))}, {
start_state(w(26,23)).
}).
#pos(n55, {}, {f(w(7,16))}, {
start_state(w(3,24)).
}).
#pos(n56, {}, {f(w(21,29))}, {
start_state(w(29,15)).
}).
#pos(n57, {}, {f(w(15,16))}, {
start_state(w(30,2)).
}).
#pos(n58, {}, {f(w(25,4))}, {
start_state(w(28,17)).
}).
#pos(n59, {}, {f(w(6,30))}, {
start_state(w(13,7)).
}).
#pos(n60, {}, {f(w(14,29))}, {
start_state(w(22,27)).
}).
#pos(n61, {}, {f(w(10,18))}, {
start_state(w(12,6)).
}).
#pos(n62, {}, {f(w(25,30))}, {
start_state(w(2,20)).
}).
#pos(n63, {}, {f(w(26,16))}, {
start_state(w(26,20)).
}).
#pos(n64, {}, {f(w(14,1))}, {
start_state(w(3,12)).
}).
#pos(n65, {}, {f(w(14,30))}, {
start_state(w(3,9)).
}).
#pos(n66, {}, {f(w(4,15))}, {
start_state(w(11,18)).
}).
#pos(n67, {}, {f(w(30,21))}, {
start_state(w(8,11)).
}).
#pos(n68, {}, {f(w(22,4))}, {
start_state(w(23,9)).
}).
#pos(n69, {}, {f(w(13,3))}, {
start_state(w(19,27)).
}).
#pos(n70, {}, {f(w(4,24))}, {
start_state(w(12,16)).
}).
#pos(n71, {}, {f(w(5,18))}, {
start_state(w(6,18)).
}).
#pos(n72, {}, {f(w(17,4))}, {
start_state(w(24,27)).
}).
#pos(n73, {}, {f(w(30,8))}, {
start_state(w(24,27)).
}).
#pos(n74, {}, {f(w(29,27))}, {
start_state(w(4,3)).
}).
#pos(n75, {}, {f(w(14,30))}, {
start_state(w(8,14)).
}).
#pos(n76, {}, {f(w(14,12))}, {
start_state(w(25,16)).
}).
#pos(n77, {}, {f(w(4,25))}, {
start_state(w(23,28)).
}).
#pos(n78, {}, {f(w(7,7))}, {
start_state(w(3,13)).
}).
#pos(n79, {}, {f(w(19,14))}, {
start_state(w(27,20)).
}).
#pos(n80, {}, {f(w(6,21))}, {
start_state(w(8,3)).
}).
#pos(n81, {}, {f(w(21,18))}, {
start_state(w(5,24)).
}).
#pos(n82, {}, {f(w(14,30))}, {
start_state(w(2,29)).
}).
#pos(n83, {}, {f(w(23,10))}, {
start_state(w(5,3)).
}).
#pos(n84, {}, {f(w(2,26))}, {
start_state(w(2,8)).
}).
#pos(n85, {}, {f(w(3,13))}, {
start_state(w(9,27)).
}).
#pos(n86, {}, {f(w(27,26))}, {
start_state(w(16,5)).
}).
#pos(n87, {}, {f(w(24,11))}, {
start_state(w(14,1)).
}).
#pos(n88, {}, {f(w(26,30))}, {
start_state(w(2,26)).
}).
#pos(n89, {}, {f(w(14,7))}, {
start_state(w(25,16)).
}).
#pos(n90, {}, {f(w(7,30))}, {
start_state(w(26,13)).
}).
#pos(n91, {}, {f(w(26,30))}, {
start_state(w(8,10)).
}).
#pos(n92, {}, {f(w(10,30))}, {
start_state(w(3,15)).
}).
#pos(n93, {}, {f(w(1,7))}, {
start_state(w(18,1)).
}).
#pos(n94, {}, {f(w(30,30))}, {
start_state(w(8,18)).
}).
#pos(n95, {}, {f(w(26,25))}, {
start_state(w(20,27)).
}).
#pos(n96, {}, {f(w(27,30))}, {
start_state(w(9,24)).
}).
#pos(n97, {}, {f(w(4,28))}, {
start_state(w(14,26)).
}).
#pos(n98, {}, {f(w(14,30))}, {
start_state(w(24,9)).
}).
#pos(n99, {}, {f(w(25,30))}, {
start_state(w(11,7)).
}).
#pos(n100, {}, {f(w(3,30))}, {
start_state(w(27,14)).
}).
#pos(n101, {}, {f(w(4,30))}, {
start_state(w(29,4)).
}).
#pos(n102, {}, {f(w(24,30))}, {
start_state(w(1,11)).
}).
#pos(n103, {}, {f(w(19,30))}, {
start_state(w(2,7)).
}).
#pos(n104, {}, {f(w(24,30))}, {
start_state(w(29,24)).
}).
#pos(n105, {}, {f(w(5,8))}, {
start_state(w(24,10)).
}).
#pos(n106, {}, {f(w(12,14))}, {
start_state(w(25,4)).
}).
#pos(n107, {}, {f(w(20,16))}, {
start_state(w(5,8)).
}).
#pos(n108, {}, {f(w(8,20))}, {
start_state(w(22,16)).
}).
#pos(n109, {}, {f(w(7,30))}, {
start_state(w(4,21)).
}).
#pos(n110, {}, {f(w(27,17))}, {
start_state(w(1,2)).
}).
#pos(n111, {}, {f(w(8,9))}, {
start_state(w(8,7)).
}).
#pos(n112, {}, {f(w(30,30))}, {
start_state(w(3,9)).
}).
#pos(n113, {}, {f(w(7,15))}, {
start_state(w(7,27)).
}).
#pos(n114, {}, {f(w(18,11))}, {
start_state(w(11,8)).
}).
#pos(n115, {}, {f(w(18,3))}, {
start_state(w(9,3)).
}).
#pos(n116, {}, {f(w(19,17))}, {
start_state(w(20,5)).
}).
#pos(n117, {}, {f(w(3,14))}, {
start_state(w(29,22)).
}).
#pos(n118, {}, {f(w(3,17))}, {
start_state(w(27,19)).
}).
#pos(n119, {}, {f(w(22,1))}, {
start_state(w(29,9)).
}).
#pos(n120, {}, {f(w(8,6))}, {
start_state(w(20,16)).
}).
#pos(n121, {}, {f(w(27,30))}, {
start_state(w(24,4)).
}).
#pos(n122, {}, {f(w(6,30))}, {
start_state(w(28,16)).
}).
#pos(n123, {}, {f(w(16,30))}, {
start_state(w(20,20)).
}).
#pos(n124, {}, {f(w(11,15))}, {
start_state(w(1,29)).
}).
#pos(n125, {}, {f(w(17,16))}, {
start_state(w(21,30)).
}).
#pos(n126, {}, {f(w(14,10))}, {
start_state(w(15,28)).
}).
#pos(n127, {}, {f(w(25,15))}, {
start_state(w(27,16)).
}).
#pos(n128, {}, {f(w(3,6))}, {
start_state(w(15,6)).
}).
#pos(n129, {}, {f(w(14,30))}, {
start_state(w(19,25)).
}).
#pos(n130, {}, {f(w(13,11))}, {
start_state(w(29,12)).
}).
#pos(n131, {}, {f(w(9,27))}, {
start_state(w(22,1)).
}).
#pos(n132, {}, {f(w(15,21))}, {
start_state(w(15,4)).
}).
#pos(n133, {}, {f(w(19,21))}, {
start_state(w(22,8)).
}).
#pos(n134, {}, {f(w(16,21))}, {
start_state(w(27,28)).
}).
#pos(n135, {}, {f(w(26,3))}, {
start_state(w(20,14)).
}).
#pos(n136, {}, {f(w(9,30))}, {
start_state(w(11,12)).
}).
#pos(n137, {}, {f(w(6,6))}, {
start_state(w(10,4)).
}).
#pos(n138, {}, {f(w(8,7))}, {
start_state(w(30,7)).
}).
#pos(n139, {}, {f(w(8,30))}, {
start_state(w(1,29)).
}).
#pos(n140, {}, {f(w(20,15))}, {
start_state(w(12,22)).
}).
#pos(n141, {}, {f(w(17,12))}, {
start_state(w(7,28)).
}).
#pos(n142, {}, {f(w(30,7))}, {
start_state(w(14,28)).
}).
#pos(n143, {}, {f(w(9,30))}, {
start_state(w(22,20)).
}).
#pos(n144, {}, {f(w(24,30))}, {
start_state(w(16,13)).
}).
#pos(n145, {}, {f(w(2,30))}, {
start_state(w(3,2)).
}).
#pos(n146, {}, {f(w(17,26))}, {
start_state(w(24,30)).
}).
#pos(n147, {}, {f(w(10,9))}, {
start_state(w(12,4)).
}).
#pos(n148, {}, {f(w(11,30))}, {
start_state(w(1,1)).
}).
#pos(n149, {}, {f(w(11,3))}, {
start_state(w(4,7)).
}).
#pos(n150, {}, {f(w(24,1))}, {
start_state(w(2,13)).
}).
#pos(n151, {}, {f(w(27,5))}, {
start_state(w(29,28)).
}).
#pos(n152, {}, {f(w(10,22))}, {
start_state(w(3,20)).
}).
#pos(n153, {}, {f(w(21,30))}, {
start_state(w(27,10)).
}).
#pos(n154, {}, {f(w(15,30))}, {
start_state(w(7,24)).
}).
#pos(n155, {}, {f(w(23,14))}, {
start_state(w(17,26)).
}).
#pos(n156, {}, {f(w(12,30))}, {
start_state(w(28,15)).
}).
#pos(n157, {}, {f(w(8,12))}, {
start_state(w(17,4)).
}).
#pos(n158, {}, {f(w(26,2))}, {
start_state(w(6,21)).
}).
#pos(n159, {}, {f(w(25,30))}, {
start_state(w(21,26)).
}).
#pos(n160, {}, {f(w(2,29))}, {
start_state(w(29,25)).
}).
#pos(n161, {}, {f(w(25,30))}, {
start_state(w(23,22)).
}).
#pos(n162, {}, {f(w(6,25))}, {
start_state(w(1,12)).
}).
#pos(n163, {}, {f(w(26,30))}, {
start_state(w(1,16)).
}).
#pos(n164, {}, {f(w(21,30))}, {
start_state(w(5,3)).
}).
#pos(n165, {}, {f(w(13,30))}, {
start_state(w(15,30)).
}).
#pos(n166, {}, {f(w(30,26))}, {
start_state(w(3,19)).
}).
#pos(n167, {}, {f(w(7,17))}, {
start_state(w(23,19)).
}).
#pos(n168, {}, {f(w(20,27))}, {
start_state(w(12,25)).
}).
#pos(n169, {}, {f(w(14,30))}, {
start_state(w(29,22)).
}).
#pos(n170, {}, {f(w(16,30))}, {
start_state(w(2,7)).
}).
#pos(n171, {}, {f(w(13,20))}, {
start_state(w(21,16)).
}).
#pos(n172, {}, {f(w(29,30))}, {
start_state(w(13,4)).
}).
#pos(n173, {}, {f(w(9,9))}, {
start_state(w(19,13)).
}).
#pos(n174, {}, {f(w(28,16))}, {
start_state(w(27,23)).
}).
#pos(n175, {}, {f(w(1,5))}, {
start_state(w(16,25)).
}).
#pos(n176, {}, {f(w(15,30))}, {
start_state(w(29,11)).
}).
#pos(n177, {}, {f(w(18,10))}, {
start_state(w(18,1)).
}).
#pos(n178, {}, {f(w(16,30))}, {
start_state(w(29,29)).
}).
#pos(n179, {}, {f(w(29,14))}, {
start_state(w(24,11)).
}).
#pos(n180, {}, {f(w(8,30))}, {
start_state(w(24,5)).
}).
#pos(n181, {}, {f(w(3,30))}, {
start_state(w(26,16)).
}).
#pos(n182, {}, {f(w(2,5))}, {
start_state(w(11,16)).
}).
#pos(n183, {}, {f(w(17,30))}, {
start_state(w(3,27)).
}).
#pos(n184, {}, {f(w(14,27))}, {
start_state(w(15,8)).
}).
#pos(n185, {}, {f(w(6,22))}, {
start_state(w(6,9)).
}).
#pos(n186, {}, {f(w(2,9))}, {
start_state(w(17,25)).
}).
#pos(n187, {}, {f(w(21,10))}, {
start_state(w(26,25)).
}).
#pos(n188, {}, {f(w(18,28))}, {
start_state(w(22,21)).
}).
#pos(n189, {}, {f(w(1,29))}, {
start_state(w(13,22)).
}).
#pos(n190, {}, {f(w(3,30))}, {
start_state(w(6,9)).
}).
#pos(n191, {}, {f(w(9,30))}, {
start_state(w(14,2)).
}).
#pos(n192, {}, {f(w(19,24))}, {
start_state(w(28,6)).
}).
#pos(n193, {}, {f(w(8,30))}, {
start_state(w(4,7)).
}).
#pos(n194, {}, {f(w(27,26))}, {
start_state(w(28,30)).
}).
#pos(n195, {}, {f(w(4,30))}, {
start_state(w(14,27)).
}).
#pos(n196, {}, {f(w(20,12))}, {
start_state(w(5,2)).
}).
#pos(n197, {}, {f(w(26,14))}, {
start_state(w(7,28)).
}).
#pos(n198, {}, {f(w(15,30))}, {
start_state(w(30,25)).
}).
#pos(n199, {}, {f(w(18,6))}, {
start_state(w(3,12)).
}).
