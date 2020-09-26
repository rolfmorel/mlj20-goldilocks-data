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

#pos(p0, {f(w(29,30))}, {}, {
start_state(w(29,27)).
}).
#pos(p1, {f(w(14,30))}, {}, {
start_state(w(14,2)).
}).
#pos(p2, {f(w(28,30))}, {}, {
start_state(w(28,16)).
}).
#pos(p3, {f(w(5,30))}, {}, {
start_state(w(5,14)).
}).
#pos(p4, {f(w(30,30))}, {}, {
start_state(w(30,17)).
}).
#pos(p5, {f(w(5,30))}, {}, {
start_state(w(5,12)).
}).
#pos(p6, {f(w(15,30))}, {}, {
start_state(w(15,24)).
}).
#pos(p7, {f(w(23,30))}, {}, {
start_state(w(23,4)).
}).
#pos(p8, {f(w(30,30))}, {}, {
start_state(w(30,29)).
}).
#pos(p9, {f(w(17,30))}, {}, {
start_state(w(17,23)).
}).
#pos(p10, {f(w(22,30))}, {}, {
start_state(w(22,22)).
}).
#pos(p11, {f(w(24,30))}, {}, {
start_state(w(24,29)).
}).
#pos(p12, {f(w(8,30))}, {}, {
start_state(w(8,12)).
}).
#pos(p13, {f(w(5,30))}, {}, {
start_state(w(5,26)).
}).
#pos(p14, {f(w(13,30))}, {}, {
start_state(w(13,14)).
}).
#pos(p15, {f(w(23,30))}, {}, {
start_state(w(23,15)).
}).
#pos(p16, {f(w(13,30))}, {}, {
start_state(w(13,22)).
}).
#pos(p17, {f(w(15,30))}, {}, {
start_state(w(15,13)).
}).
#pos(p18, {f(w(28,30))}, {}, {
start_state(w(28,24)).
}).
#pos(p19, {f(w(18,30))}, {}, {
start_state(w(18,5)).
}).
#pos(p20, {f(w(21,30))}, {}, {
start_state(w(21,20)).
}).
#pos(p21, {f(w(26,30))}, {}, {
start_state(w(26,12)).
}).
#pos(p22, {f(w(3,30))}, {}, {
start_state(w(3,22)).
}).
#pos(p23, {f(w(19,30))}, {}, {
start_state(w(19,24)).
}).
#pos(p24, {f(w(19,30))}, {}, {
start_state(w(19,29)).
}).
#pos(p25, {f(w(1,30))}, {}, {
start_state(w(1,25)).
}).
#pos(p26, {f(w(5,30))}, {}, {
start_state(w(5,11)).
}).
#pos(p27, {f(w(7,30))}, {}, {
start_state(w(7,27)).
}).
#pos(p28, {f(w(12,30))}, {}, {
start_state(w(12,27)).
}).
#pos(p29, {f(w(7,30))}, {}, {
start_state(w(7,6)).
}).
#pos(p30, {f(w(2,30))}, {}, {
start_state(w(2,21)).
}).
#pos(p31, {f(w(14,30))}, {}, {
start_state(w(14,24)).
}).
#pos(p32, {f(w(12,30))}, {}, {
start_state(w(12,3)).
}).
#pos(p33, {f(w(5,30))}, {}, {
start_state(w(5,25)).
}).
#pos(p34, {f(w(28,30))}, {}, {
start_state(w(28,12)).
}).
#pos(p35, {f(w(18,30))}, {}, {
start_state(w(18,4)).
}).
#pos(p36, {f(w(3,30))}, {}, {
start_state(w(3,12)).
}).
#pos(p37, {f(w(9,30))}, {}, {
start_state(w(9,22)).
}).
#pos(p38, {f(w(1,30))}, {}, {
start_state(w(1,15)).
}).
#pos(p39, {f(w(23,30))}, {}, {
start_state(w(23,24)).
}).
#pos(p40, {f(w(8,30))}, {}, {
start_state(w(8,26)).
}).
#pos(p41, {f(w(30,30))}, {}, {
start_state(w(30,25)).
}).
#pos(p42, {f(w(20,30))}, {}, {
start_state(w(20,21)).
}).
#pos(p43, {f(w(13,30))}, {}, {
start_state(w(13,29)).
}).
#pos(p44, {f(w(29,30))}, {}, {
start_state(w(29,1)).
}).
#pos(p45, {f(w(21,30))}, {}, {
start_state(w(21,16)).
}).
#pos(p46, {f(w(14,30))}, {}, {
start_state(w(14,8)).
}).
#pos(p47, {f(w(21,30))}, {}, {
start_state(w(21,1)).
}).
#pos(p48, {f(w(30,30))}, {}, {
start_state(w(30,19)).
}).
#pos(p49, {f(w(22,30))}, {}, {
start_state(w(22,8)).
}).
#pos(p50, {f(w(18,30))}, {}, {
start_state(w(18,16)).
}).
#pos(p51, {f(w(29,30))}, {}, {
start_state(w(29,12)).
}).
#pos(p52, {f(w(11,30))}, {}, {
start_state(w(11,26)).
}).
#pos(p53, {f(w(11,30))}, {}, {
start_state(w(11,8)).
}).
#pos(p54, {f(w(12,30))}, {}, {
start_state(w(12,17)).
}).
#pos(p55, {f(w(16,30))}, {}, {
start_state(w(16,12)).
}).
#pos(p56, {f(w(7,30))}, {}, {
start_state(w(7,15)).
}).
#pos(p57, {f(w(26,30))}, {}, {
start_state(w(26,24)).
}).
#pos(p58, {f(w(23,30))}, {}, {
start_state(w(23,10)).
}).
#pos(p59, {f(w(10,30))}, {}, {
start_state(w(10,19)).
}).
#pos(p60, {f(w(30,30))}, {}, {
start_state(w(30,16)).
}).
#pos(p61, {f(w(14,30))}, {}, {
start_state(w(14,20)).
}).
#pos(p62, {f(w(18,30))}, {}, {
start_state(w(18,6)).
}).
#pos(p63, {f(w(14,30))}, {}, {
start_state(w(14,17)).
}).
#pos(p64, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p65, {f(w(12,30))}, {}, {
start_state(w(12,27)).
}).
#pos(p66, {f(w(27,30))}, {}, {
start_state(w(27,7)).
}).
#pos(p67, {f(w(29,30))}, {}, {
start_state(w(29,29)).
}).
#pos(p68, {f(w(24,30))}, {}, {
start_state(w(24,28)).
}).
#pos(p69, {f(w(11,30))}, {}, {
start_state(w(11,29)).
}).
#pos(p70, {f(w(27,30))}, {}, {
start_state(w(27,12)).
}).
#pos(p71, {f(w(3,30))}, {}, {
start_state(w(3,5)).
}).
#pos(p72, {f(w(19,30))}, {}, {
start_state(w(19,7)).
}).
#pos(p73, {f(w(19,30))}, {}, {
start_state(w(19,22)).
}).
#pos(p74, {f(w(1,30))}, {}, {
start_state(w(1,22)).
}).
#pos(p75, {f(w(8,30))}, {}, {
start_state(w(8,20)).
}).
#pos(p76, {f(w(7,30))}, {}, {
start_state(w(7,14)).
}).
#pos(p77, {f(w(12,30))}, {}, {
start_state(w(12,6)).
}).
#pos(p78, {f(w(29,30))}, {}, {
start_state(w(29,9)).
}).
#pos(p79, {f(w(20,30))}, {}, {
start_state(w(20,18)).
}).
#pos(p80, {f(w(29,30))}, {}, {
start_state(w(29,29)).
}).
#pos(p81, {f(w(2,30))}, {}, {
start_state(w(2,22)).
}).
#pos(p82, {f(w(25,30))}, {}, {
start_state(w(25,14)).
}).
#pos(p83, {f(w(7,30))}, {}, {
start_state(w(7,11)).
}).
#pos(p84, {f(w(24,30))}, {}, {
start_state(w(24,9)).
}).
#pos(p85, {f(w(23,30))}, {}, {
start_state(w(23,16)).
}).
#pos(p86, {f(w(3,30))}, {}, {
start_state(w(3,11)).
}).
#pos(p87, {f(w(16,30))}, {}, {
start_state(w(16,21)).
}).
#pos(p88, {f(w(7,30))}, {}, {
start_state(w(7,12)).
}).
#pos(p89, {f(w(1,30))}, {}, {
start_state(w(1,25)).
}).
#pos(p90, {f(w(24,30))}, {}, {
start_state(w(24,15)).
}).
#pos(p91, {f(w(26,30))}, {}, {
start_state(w(26,23)).
}).
#pos(p92, {f(w(25,30))}, {}, {
start_state(w(25,4)).
}).
#pos(p93, {f(w(1,30))}, {}, {
start_state(w(1,2)).
}).
#pos(p94, {f(w(27,30))}, {}, {
start_state(w(27,4)).
}).
#pos(p95, {f(w(5,30))}, {}, {
start_state(w(5,1)).
}).
#pos(p96, {f(w(2,30))}, {}, {
start_state(w(2,14)).
}).
#pos(p97, {f(w(9,30))}, {}, {
start_state(w(9,23)).
}).
#pos(p98, {f(w(19,30))}, {}, {
start_state(w(19,26)).
}).
#pos(p99, {f(w(9,30))}, {}, {
start_state(w(9,10)).
}).
#pos(p100, {f(w(30,30))}, {}, {
start_state(w(30,28)).
}).
#pos(p101, {f(w(12,30))}, {}, {
start_state(w(12,22)).
}).
#pos(p102, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p103, {f(w(8,30))}, {}, {
start_state(w(8,27)).
}).
#pos(p104, {f(w(28,30))}, {}, {
start_state(w(28,24)).
}).
#pos(p105, {f(w(24,30))}, {}, {
start_state(w(24,19)).
}).
#pos(p106, {f(w(30,30))}, {}, {
start_state(w(30,19)).
}).
#pos(p107, {f(w(22,30))}, {}, {
start_state(w(22,7)).
}).
#pos(p108, {f(w(28,30))}, {}, {
start_state(w(28,16)).
}).
#pos(p109, {f(w(6,30))}, {}, {
start_state(w(6,29)).
}).
#pos(p110, {f(w(7,30))}, {}, {
start_state(w(7,7)).
}).
#pos(p111, {f(w(2,30))}, {}, {
start_state(w(2,26)).
}).
#pos(p112, {f(w(1,30))}, {}, {
start_state(w(1,8)).
}).
#pos(p113, {f(w(29,30))}, {}, {
start_state(w(29,25)).
}).
#pos(p114, {f(w(14,30))}, {}, {
start_state(w(14,26)).
}).
#pos(p115, {f(w(22,30))}, {}, {
start_state(w(22,2)).
}).
#pos(p116, {f(w(12,30))}, {}, {
start_state(w(12,10)).
}).
#pos(p117, {f(w(18,30))}, {}, {
start_state(w(18,9)).
}).
#pos(p118, {f(w(9,30))}, {}, {
start_state(w(9,20)).
}).
#pos(p119, {f(w(25,30))}, {}, {
start_state(w(25,7)).
}).
#pos(p120, {f(w(12,30))}, {}, {
start_state(w(12,20)).
}).
#pos(p121, {f(w(13,30))}, {}, {
start_state(w(13,18)).
}).
#pos(p122, {f(w(19,30))}, {}, {
start_state(w(19,16)).
}).
#pos(p123, {f(w(22,30))}, {}, {
start_state(w(22,9)).
}).
#pos(p124, {f(w(25,30))}, {}, {
start_state(w(25,26)).
}).
#pos(p125, {f(w(2,30))}, {}, {
start_state(w(2,1)).
}).
#pos(p126, {f(w(4,30))}, {}, {
start_state(w(4,6)).
}).
#pos(p127, {f(w(11,30))}, {}, {
start_state(w(11,4)).
}).
#pos(p128, {f(w(10,30))}, {}, {
start_state(w(10,10)).
}).
#pos(p129, {f(w(15,30))}, {}, {
start_state(w(15,12)).
}).
#pos(p130, {f(w(8,30))}, {}, {
start_state(w(8,3)).
}).
#pos(p131, {f(w(4,30))}, {}, {
start_state(w(4,26)).
}).
#pos(p132, {f(w(6,30))}, {}, {
start_state(w(6,17)).
}).
#pos(p133, {f(w(4,30))}, {}, {
start_state(w(4,29)).
}).
#pos(p134, {f(w(17,30))}, {}, {
start_state(w(17,20)).
}).
#pos(p135, {f(w(25,30))}, {}, {
start_state(w(25,18)).
}).
#pos(p136, {f(w(27,30))}, {}, {
start_state(w(27,2)).
}).
#pos(p137, {f(w(3,30))}, {}, {
start_state(w(3,18)).
}).
#pos(p138, {f(w(9,30))}, {}, {
start_state(w(9,9)).
}).
#pos(p139, {f(w(22,30))}, {}, {
start_state(w(22,16)).
}).
#pos(p140, {f(w(2,30))}, {}, {
start_state(w(2,28)).
}).
#pos(p141, {f(w(16,30))}, {}, {
start_state(w(16,29)).
}).
#pos(p142, {f(w(6,30))}, {}, {
start_state(w(6,24)).
}).
#pos(p143, {f(w(4,30))}, {}, {
start_state(w(4,27)).
}).
#pos(p144, {f(w(11,30))}, {}, {
start_state(w(11,17)).
}).
#pos(p145, {f(w(8,30))}, {}, {
start_state(w(8,25)).
}).
#pos(p146, {f(w(26,30))}, {}, {
start_state(w(26,5)).
}).
#pos(p147, {f(w(6,30))}, {}, {
start_state(w(6,4)).
}).
#pos(p148, {f(w(23,30))}, {}, {
start_state(w(23,3)).
}).
#pos(p149, {f(w(30,30))}, {}, {
start_state(w(30,19)).
}).
#pos(p150, {f(w(27,30))}, {}, {
start_state(w(27,28)).
}).
#pos(p151, {f(w(20,30))}, {}, {
start_state(w(20,29)).
}).
#pos(p152, {f(w(22,30))}, {}, {
start_state(w(22,6)).
}).
#pos(p153, {f(w(19,30))}, {}, {
start_state(w(19,26)).
}).
#pos(p154, {f(w(4,30))}, {}, {
start_state(w(4,4)).
}).
#pos(p155, {f(w(14,30))}, {}, {
start_state(w(14,9)).
}).
#pos(p156, {f(w(10,30))}, {}, {
start_state(w(10,1)).
}).
#pos(p157, {f(w(16,30))}, {}, {
start_state(w(16,12)).
}).
#pos(p158, {f(w(5,30))}, {}, {
start_state(w(5,13)).
}).
#pos(p159, {f(w(2,30))}, {}, {
start_state(w(2,10)).
}).
#pos(p160, {f(w(2,30))}, {}, {
start_state(w(2,21)).
}).
#pos(p161, {f(w(24,30))}, {}, {
start_state(w(24,10)).
}).
#pos(p162, {f(w(14,30))}, {}, {
start_state(w(14,3)).
}).
#pos(p163, {f(w(30,30))}, {}, {
start_state(w(30,2)).
}).
#pos(p164, {f(w(3,30))}, {}, {
start_state(w(3,8)).
}).
#pos(p165, {f(w(24,30))}, {}, {
start_state(w(24,10)).
}).
#pos(p166, {f(w(30,30))}, {}, {
start_state(w(30,1)).
}).
#pos(p167, {f(w(18,30))}, {}, {
start_state(w(18,16)).
}).
#pos(p168, {f(w(6,30))}, {}, {
start_state(w(6,28)).
}).
#pos(p169, {f(w(18,30))}, {}, {
start_state(w(18,25)).
}).
#pos(p170, {f(w(4,30))}, {}, {
start_state(w(4,7)).
}).
#pos(p171, {f(w(27,30))}, {}, {
start_state(w(27,2)).
}).
#pos(p172, {f(w(29,30))}, {}, {
start_state(w(29,20)).
}).
#pos(p173, {f(w(9,30))}, {}, {
start_state(w(9,3)).
}).
#pos(p174, {f(w(6,30))}, {}, {
start_state(w(6,28)).
}).
#pos(p175, {f(w(5,30))}, {}, {
start_state(w(5,27)).
}).
#pos(p176, {f(w(6,30))}, {}, {
start_state(w(6,17)).
}).
#pos(p177, {f(w(5,30))}, {}, {
start_state(w(5,26)).
}).
#pos(p178, {f(w(20,30))}, {}, {
start_state(w(20,23)).
}).
#pos(p179, {f(w(1,30))}, {}, {
start_state(w(1,6)).
}).
#pos(p180, {f(w(12,30))}, {}, {
start_state(w(12,13)).
}).
#pos(p181, {f(w(8,30))}, {}, {
start_state(w(8,7)).
}).
#pos(p182, {f(w(3,30))}, {}, {
start_state(w(3,2)).
}).
#pos(p183, {f(w(2,30))}, {}, {
start_state(w(2,13)).
}).
#pos(p184, {f(w(19,30))}, {}, {
start_state(w(19,4)).
}).
#pos(p185, {f(w(25,30))}, {}, {
start_state(w(25,13)).
}).
#pos(p186, {f(w(22,30))}, {}, {
start_state(w(22,12)).
}).
#pos(p187, {f(w(2,30))}, {}, {
start_state(w(2,3)).
}).
#pos(p188, {f(w(22,30))}, {}, {
start_state(w(22,6)).
}).
#pos(p189, {f(w(30,30))}, {}, {
start_state(w(30,28)).
}).
#pos(p190, {f(w(27,30))}, {}, {
start_state(w(27,28)).
}).
#pos(p191, {f(w(8,30))}, {}, {
start_state(w(8,12)).
}).
#pos(p192, {f(w(4,30))}, {}, {
start_state(w(4,19)).
}).
#pos(p193, {f(w(6,30))}, {}, {
start_state(w(6,12)).
}).
#pos(p194, {f(w(3,30))}, {}, {
start_state(w(3,13)).
}).
#pos(p195, {f(w(7,30))}, {}, {
start_state(w(7,28)).
}).
#pos(p196, {f(w(7,30))}, {}, {
start_state(w(7,15)).
}).
#pos(p197, {f(w(8,30))}, {}, {
start_state(w(8,26)).
}).
#pos(p198, {f(w(8,30))}, {}, {
start_state(w(8,28)).
}).
#pos(p199, {f(w(12,30))}, {}, {
start_state(w(12,15)).
}).
#pos(p200, {f(w(4,30))}, {}, {
start_state(w(4,26)).
}).
#pos(p201, {f(w(9,30))}, {}, {
start_state(w(9,14)).
}).
#pos(p202, {f(w(23,30))}, {}, {
start_state(w(23,21)).
}).
#pos(p203, {f(w(9,30))}, {}, {
start_state(w(9,14)).
}).
#pos(p204, {f(w(26,30))}, {}, {
start_state(w(26,8)).
}).
#pos(p205, {f(w(28,30))}, {}, {
start_state(w(28,18)).
}).
#pos(p206, {f(w(15,30))}, {}, {
start_state(w(15,28)).
}).
#pos(p207, {f(w(2,30))}, {}, {
start_state(w(2,10)).
}).
#pos(p208, {f(w(21,30))}, {}, {
start_state(w(21,7)).
}).
#pos(p209, {f(w(18,30))}, {}, {
start_state(w(18,8)).
}).
#pos(p210, {f(w(20,30))}, {}, {
start_state(w(20,25)).
}).
#pos(p211, {f(w(28,30))}, {}, {
start_state(w(28,11)).
}).
#pos(p212, {f(w(29,30))}, {}, {
start_state(w(29,19)).
}).
#pos(p213, {f(w(27,30))}, {}, {
start_state(w(27,27)).
}).
#pos(p214, {f(w(19,30))}, {}, {
start_state(w(19,27)).
}).
#pos(p215, {f(w(25,30))}, {}, {
start_state(w(25,29)).
}).
#pos(p216, {f(w(11,30))}, {}, {
start_state(w(11,17)).
}).
#pos(p217, {f(w(6,30))}, {}, {
start_state(w(6,23)).
}).
#pos(p218, {f(w(21,30))}, {}, {
start_state(w(21,16)).
}).
#pos(p219, {f(w(22,30))}, {}, {
start_state(w(22,20)).
}).
#pos(p220, {f(w(17,30))}, {}, {
start_state(w(17,29)).
}).
#pos(p221, {f(w(15,30))}, {}, {
start_state(w(15,2)).
}).
#pos(p222, {f(w(3,30))}, {}, {
start_state(w(3,13)).
}).
#pos(p223, {f(w(17,30))}, {}, {
start_state(w(17,17)).
}).
#pos(p224, {f(w(30,30))}, {}, {
start_state(w(30,28)).
}).
#pos(p225, {f(w(25,30))}, {}, {
start_state(w(25,21)).
}).
#pos(p226, {f(w(10,30))}, {}, {
start_state(w(10,18)).
}).
#pos(p227, {f(w(16,30))}, {}, {
start_state(w(16,13)).
}).
#pos(p228, {f(w(11,30))}, {}, {
start_state(w(11,22)).
}).
#pos(p229, {f(w(21,30))}, {}, {
start_state(w(21,6)).
}).
#pos(p230, {f(w(24,30))}, {}, {
start_state(w(24,23)).
}).
#pos(p231, {f(w(29,30))}, {}, {
start_state(w(29,23)).
}).
#pos(p232, {f(w(5,30))}, {}, {
start_state(w(5,16)).
}).
#pos(p233, {f(w(1,30))}, {}, {
start_state(w(1,3)).
}).
#pos(p234, {f(w(8,30))}, {}, {
start_state(w(8,24)).
}).
#pos(p235, {f(w(14,30))}, {}, {
start_state(w(14,9)).
}).
#pos(p236, {f(w(29,30))}, {}, {
start_state(w(29,27)).
}).
#pos(p237, {f(w(16,30))}, {}, {
start_state(w(16,28)).
}).
#pos(p238, {f(w(7,30))}, {}, {
start_state(w(7,29)).
}).
#pos(p239, {f(w(9,30))}, {}, {
start_state(w(9,6)).
}).
#pos(p240, {f(w(13,30))}, {}, {
start_state(w(13,20)).
}).
#pos(p241, {f(w(2,30))}, {}, {
start_state(w(2,12)).
}).
#pos(p242, {f(w(19,30))}, {}, {
start_state(w(19,10)).
}).
#pos(p243, {f(w(2,30))}, {}, {
start_state(w(2,17)).
}).
#pos(p244, {f(w(3,30))}, {}, {
start_state(w(3,3)).
}).
#pos(p245, {f(w(8,30))}, {}, {
start_state(w(8,15)).
}).
#pos(p246, {f(w(1,30))}, {}, {
start_state(w(1,15)).
}).
#pos(p247, {f(w(2,30))}, {}, {
start_state(w(2,15)).
}).
#pos(p248, {f(w(27,30))}, {}, {
start_state(w(27,8)).
}).
#pos(p249, {f(w(9,30))}, {}, {
start_state(w(9,5)).
}).
#pos(p250, {f(w(11,30))}, {}, {
start_state(w(11,18)).
}).
#pos(p251, {f(w(4,30))}, {}, {
start_state(w(4,5)).
}).
#pos(p252, {f(w(30,30))}, {}, {
start_state(w(30,21)).
}).
#pos(p253, {f(w(23,30))}, {}, {
start_state(w(23,6)).
}).
#pos(p254, {f(w(20,30))}, {}, {
start_state(w(20,6)).
}).
#pos(p255, {f(w(22,30))}, {}, {
start_state(w(22,18)).
}).
#pos(p256, {f(w(15,30))}, {}, {
start_state(w(15,25)).
}).
#pos(p257, {f(w(27,30))}, {}, {
start_state(w(27,13)).
}).
#pos(p258, {f(w(10,30))}, {}, {
start_state(w(10,23)).
}).
#pos(p259, {f(w(19,30))}, {}, {
start_state(w(19,1)).
}).
#pos(p260, {f(w(15,30))}, {}, {
start_state(w(15,27)).
}).
#pos(p261, {f(w(1,30))}, {}, {
start_state(w(1,24)).
}).
#pos(p262, {f(w(8,30))}, {}, {
start_state(w(8,9)).
}).
#pos(p263, {f(w(2,30))}, {}, {
start_state(w(2,18)).
}).
#pos(p264, {f(w(28,30))}, {}, {
start_state(w(28,25)).
}).
#pos(p265, {f(w(12,30))}, {}, {
start_state(w(12,18)).
}).
#pos(p266, {f(w(11,30))}, {}, {
start_state(w(11,26)).
}).
#pos(p267, {f(w(8,30))}, {}, {
start_state(w(8,12)).
}).
#pos(p268, {f(w(16,30))}, {}, {
start_state(w(16,29)).
}).
#pos(p269, {f(w(5,30))}, {}, {
start_state(w(5,25)).
}).
#pos(p270, {f(w(27,30))}, {}, {
start_state(w(27,1)).
}).
#pos(p271, {f(w(4,30))}, {}, {
start_state(w(4,20)).
}).
#pos(p272, {f(w(26,30))}, {}, {
start_state(w(26,10)).
}).
#pos(p273, {f(w(23,30))}, {}, {
start_state(w(23,26)).
}).
#pos(p274, {f(w(3,30))}, {}, {
start_state(w(3,8)).
}).
#pos(p275, {f(w(20,30))}, {}, {
start_state(w(20,16)).
}).
#pos(p276, {f(w(5,30))}, {}, {
start_state(w(5,29)).
}).
#pos(p277, {f(w(11,30))}, {}, {
start_state(w(11,2)).
}).
#pos(p278, {f(w(22,30))}, {}, {
start_state(w(22,22)).
}).
#pos(p279, {f(w(14,30))}, {}, {
start_state(w(14,16)).
}).
#pos(p280, {f(w(5,30))}, {}, {
start_state(w(5,5)).
}).
#pos(p281, {f(w(4,30))}, {}, {
start_state(w(4,12)).
}).
#pos(p282, {f(w(24,30))}, {}, {
start_state(w(24,28)).
}).
#pos(p283, {f(w(11,30))}, {}, {
start_state(w(11,29)).
}).
#pos(p284, {f(w(14,30))}, {}, {
start_state(w(14,1)).
}).
#pos(p285, {f(w(23,30))}, {}, {
start_state(w(23,25)).
}).
#pos(p286, {f(w(26,30))}, {}, {
start_state(w(26,21)).
}).
#pos(p287, {f(w(14,30))}, {}, {
start_state(w(14,22)).
}).
#pos(p288, {f(w(29,30))}, {}, {
start_state(w(29,2)).
}).
#pos(p289, {f(w(17,30))}, {}, {
start_state(w(17,11)).
}).
#pos(p290, {f(w(8,30))}, {}, {
start_state(w(8,19)).
}).
#pos(p291, {f(w(28,30))}, {}, {
start_state(w(28,6)).
}).
#pos(p292, {f(w(29,30))}, {}, {
start_state(w(29,19)).
}).
#pos(p293, {f(w(2,30))}, {}, {
start_state(w(2,23)).
}).
#pos(p294, {f(w(16,30))}, {}, {
start_state(w(16,7)).
}).
#pos(p295, {f(w(22,30))}, {}, {
start_state(w(22,28)).
}).
#pos(p296, {f(w(18,30))}, {}, {
start_state(w(18,10)).
}).
#pos(p297, {f(w(1,30))}, {}, {
start_state(w(1,18)).
}).
#pos(p298, {f(w(1,30))}, {}, {
start_state(w(1,19)).
}).
#pos(p299, {f(w(13,30))}, {}, {
start_state(w(13,2)).
}).
#pos(p300, {f(w(19,30))}, {}, {
start_state(w(19,20)).
}).
#pos(p301, {f(w(26,30))}, {}, {
start_state(w(26,20)).
}).
#pos(p302, {f(w(5,30))}, {}, {
start_state(w(5,14)).
}).
#pos(p303, {f(w(7,30))}, {}, {
start_state(w(7,26)).
}).
#pos(p304, {f(w(16,30))}, {}, {
start_state(w(16,2)).
}).
#pos(p305, {f(w(5,30))}, {}, {
start_state(w(5,13)).
}).
#pos(p306, {f(w(14,30))}, {}, {
start_state(w(14,9)).
}).
#pos(p307, {f(w(3,30))}, {}, {
start_state(w(3,5)).
}).
#pos(p308, {f(w(10,30))}, {}, {
start_state(w(10,27)).
}).
#pos(p309, {f(w(30,30))}, {}, {
start_state(w(30,10)).
}).
#pos(p310, {f(w(16,30))}, {}, {
start_state(w(16,10)).
}).
#pos(p311, {f(w(24,30))}, {}, {
start_state(w(24,28)).
}).
#pos(p312, {f(w(5,30))}, {}, {
start_state(w(5,19)).
}).
#pos(p313, {f(w(2,30))}, {}, {
start_state(w(2,4)).
}).
#pos(p314, {f(w(5,30))}, {}, {
start_state(w(5,11)).
}).
#pos(p315, {f(w(9,30))}, {}, {
start_state(w(9,20)).
}).
#pos(p316, {f(w(28,30))}, {}, {
start_state(w(28,13)).
}).
#pos(p317, {f(w(2,30))}, {}, {
start_state(w(2,13)).
}).
#pos(p318, {f(w(14,30))}, {}, {
start_state(w(14,16)).
}).
#pos(p319, {f(w(20,30))}, {}, {
start_state(w(20,5)).
}).
#pos(p320, {f(w(28,30))}, {}, {
start_state(w(28,10)).
}).
#pos(p321, {f(w(10,30))}, {}, {
start_state(w(10,26)).
}).
#pos(p322, {f(w(30,30))}, {}, {
start_state(w(30,29)).
}).
#pos(p323, {f(w(12,30))}, {}, {
start_state(w(12,28)).
}).
#pos(p324, {f(w(21,30))}, {}, {
start_state(w(21,19)).
}).
#pos(p325, {f(w(3,30))}, {}, {
start_state(w(3,13)).
}).
#pos(p326, {f(w(2,30))}, {}, {
start_state(w(2,12)).
}).
#pos(p327, {f(w(22,30))}, {}, {
start_state(w(22,11)).
}).
#pos(p328, {f(w(29,30))}, {}, {
start_state(w(29,21)).
}).
#pos(p329, {f(w(1,30))}, {}, {
start_state(w(1,22)).
}).
#pos(p330, {f(w(30,30))}, {}, {
start_state(w(30,1)).
}).
#pos(p331, {f(w(30,30))}, {}, {
start_state(w(30,8)).
}).
#pos(p332, {f(w(13,30))}, {}, {
start_state(w(13,19)).
}).
#pos(p333, {f(w(12,30))}, {}, {
start_state(w(12,29)).
}).
#pos(p334, {f(w(22,30))}, {}, {
start_state(w(22,6)).
}).
#pos(p335, {f(w(30,30))}, {}, {
start_state(w(30,8)).
}).
#pos(p336, {f(w(21,30))}, {}, {
start_state(w(21,20)).
}).
#pos(p337, {f(w(2,30))}, {}, {
start_state(w(2,29)).
}).
#pos(p338, {f(w(9,30))}, {}, {
start_state(w(9,1)).
}).
#pos(p339, {f(w(15,30))}, {}, {
start_state(w(15,4)).
}).
#pos(p340, {f(w(7,30))}, {}, {
start_state(w(7,19)).
}).
#pos(p341, {f(w(22,30))}, {}, {
start_state(w(22,10)).
}).
#pos(p342, {f(w(12,30))}, {}, {
start_state(w(12,15)).
}).
#pos(p343, {f(w(23,30))}, {}, {
start_state(w(23,5)).
}).
#pos(p344, {f(w(9,30))}, {}, {
start_state(w(9,24)).
}).
#pos(p345, {f(w(18,30))}, {}, {
start_state(w(18,21)).
}).
#pos(p346, {f(w(7,30))}, {}, {
start_state(w(7,19)).
}).
#pos(p347, {f(w(27,30))}, {}, {
start_state(w(27,14)).
}).
#pos(p348, {f(w(12,30))}, {}, {
start_state(w(12,5)).
}).
#pos(p349, {f(w(18,30))}, {}, {
start_state(w(18,7)).
}).
#pos(p350, {f(w(14,30))}, {}, {
start_state(w(14,24)).
}).
#pos(p351, {f(w(18,30))}, {}, {
start_state(w(18,14)).
}).
#pos(p352, {f(w(2,30))}, {}, {
start_state(w(2,18)).
}).
#pos(p353, {f(w(13,30))}, {}, {
start_state(w(13,12)).
}).
#pos(p354, {f(w(21,30))}, {}, {
start_state(w(21,15)).
}).
#pos(p355, {f(w(22,30))}, {}, {
start_state(w(22,19)).
}).
#pos(p356, {f(w(29,30))}, {}, {
start_state(w(29,10)).
}).
#pos(p357, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p358, {f(w(22,30))}, {}, {
start_state(w(22,11)).
}).
#pos(p359, {f(w(16,30))}, {}, {
start_state(w(16,29)).
}).
#pos(p360, {f(w(19,30))}, {}, {
start_state(w(19,13)).
}).
#pos(p361, {f(w(7,30))}, {}, {
start_state(w(7,1)).
}).
#pos(p362, {f(w(8,30))}, {}, {
start_state(w(8,19)).
}).
#pos(p363, {f(w(26,30))}, {}, {
start_state(w(26,11)).
}).
#pos(p364, {f(w(7,30))}, {}, {
start_state(w(7,8)).
}).
#pos(p365, {f(w(8,30))}, {}, {
start_state(w(8,28)).
}).
#pos(p366, {f(w(9,30))}, {}, {
start_state(w(9,18)).
}).
#pos(p367, {f(w(8,30))}, {}, {
start_state(w(8,28)).
}).
#pos(p368, {f(w(10,30))}, {}, {
start_state(w(10,18)).
}).
#pos(p369, {f(w(13,30))}, {}, {
start_state(w(13,16)).
}).
#pos(p370, {f(w(3,30))}, {}, {
start_state(w(3,8)).
}).
#pos(p371, {f(w(1,30))}, {}, {
start_state(w(1,13)).
}).
#pos(p372, {f(w(4,30))}, {}, {
start_state(w(4,29)).
}).
#pos(p373, {f(w(21,30))}, {}, {
start_state(w(21,9)).
}).
#pos(p374, {f(w(19,30))}, {}, {
start_state(w(19,3)).
}).
#pos(p375, {f(w(4,30))}, {}, {
start_state(w(4,8)).
}).
#pos(p376, {f(w(2,30))}, {}, {
start_state(w(2,13)).
}).
#pos(p377, {f(w(4,30))}, {}, {
start_state(w(4,15)).
}).
#pos(p378, {f(w(15,30))}, {}, {
start_state(w(15,17)).
}).
#pos(p379, {f(w(28,30))}, {}, {
start_state(w(28,19)).
}).
#pos(p380, {f(w(6,30))}, {}, {
start_state(w(6,15)).
}).
#pos(p381, {f(w(3,30))}, {}, {
start_state(w(3,13)).
}).
#pos(p382, {f(w(27,30))}, {}, {
start_state(w(27,15)).
}).
#pos(p383, {f(w(13,30))}, {}, {
start_state(w(13,18)).
}).
#pos(p384, {f(w(28,30))}, {}, {
start_state(w(28,17)).
}).
#pos(p385, {f(w(13,30))}, {}, {
start_state(w(13,25)).
}).
#pos(p386, {f(w(28,30))}, {}, {
start_state(w(28,29)).
}).
#pos(p387, {f(w(22,30))}, {}, {
start_state(w(22,15)).
}).
#pos(p388, {f(w(19,30))}, {}, {
start_state(w(19,10)).
}).
#pos(p389, {f(w(30,30))}, {}, {
start_state(w(30,11)).
}).
#pos(p390, {f(w(24,30))}, {}, {
start_state(w(24,4)).
}).
#pos(p391, {f(w(26,30))}, {}, {
start_state(w(26,26)).
}).
#pos(p392, {f(w(13,30))}, {}, {
start_state(w(13,6)).
}).
#pos(p393, {f(w(25,30))}, {}, {
start_state(w(25,11)).
}).
#pos(p394, {f(w(14,30))}, {}, {
start_state(w(14,29)).
}).
#pos(p395, {f(w(29,30))}, {}, {
start_state(w(29,19)).
}).
#pos(p396, {f(w(6,30))}, {}, {
start_state(w(6,9)).
}).
#pos(p397, {f(w(5,30))}, {}, {
start_state(w(5,8)).
}).
#pos(p398, {f(w(3,30))}, {}, {
start_state(w(3,13)).
}).
#pos(p399, {f(w(21,30))}, {}, {
start_state(w(21,24)).
}).
#pos(p400, {f(w(29,30))}, {}, {
start_state(w(29,17)).
}).
#pos(p401, {f(w(22,30))}, {}, {
start_state(w(22,3)).
}).
#pos(p402, {f(w(5,30))}, {}, {
start_state(w(5,29)).
}).
#pos(p403, {f(w(10,30))}, {}, {
start_state(w(10,6)).
}).
#pos(p404, {f(w(15,30))}, {}, {
start_state(w(15,17)).
}).
#pos(p405, {f(w(5,30))}, {}, {
start_state(w(5,2)).
}).
#pos(p406, {f(w(4,30))}, {}, {
start_state(w(4,17)).
}).
#pos(p407, {f(w(3,30))}, {}, {
start_state(w(3,29)).
}).
#pos(p408, {f(w(3,30))}, {}, {
start_state(w(3,16)).
}).
#pos(p409, {f(w(16,30))}, {}, {
start_state(w(16,27)).
}).
#pos(p410, {f(w(18,30))}, {}, {
start_state(w(18,29)).
}).
#pos(p411, {f(w(20,30))}, {}, {
start_state(w(20,14)).
}).
#pos(p412, {f(w(7,30))}, {}, {
start_state(w(7,11)).
}).
#pos(p413, {f(w(2,30))}, {}, {
start_state(w(2,12)).
}).
#pos(p414, {f(w(30,30))}, {}, {
start_state(w(30,11)).
}).
#pos(p415, {f(w(13,30))}, {}, {
start_state(w(13,13)).
}).
#pos(p416, {f(w(5,30))}, {}, {
start_state(w(5,13)).
}).
#pos(p417, {f(w(13,30))}, {}, {
start_state(w(13,12)).
}).
#pos(p418, {f(w(15,30))}, {}, {
start_state(w(15,10)).
}).
#pos(p419, {f(w(2,30))}, {}, {
start_state(w(2,29)).
}).
#pos(p420, {f(w(15,30))}, {}, {
start_state(w(15,25)).
}).
#pos(p421, {f(w(19,30))}, {}, {
start_state(w(19,7)).
}).
#pos(p422, {f(w(7,30))}, {}, {
start_state(w(7,5)).
}).
#pos(p423, {f(w(29,30))}, {}, {
start_state(w(29,27)).
}).
#pos(p424, {f(w(30,30))}, {}, {
start_state(w(30,10)).
}).
#pos(p425, {f(w(6,30))}, {}, {
start_state(w(6,24)).
}).
#pos(p426, {f(w(4,30))}, {}, {
start_state(w(4,21)).
}).
#pos(p427, {f(w(23,30))}, {}, {
start_state(w(23,24)).
}).
#pos(p428, {f(w(24,30))}, {}, {
start_state(w(24,8)).
}).
#pos(p429, {f(w(21,30))}, {}, {
start_state(w(21,26)).
}).
#pos(p430, {f(w(14,30))}, {}, {
start_state(w(14,12)).
}).
#pos(p431, {f(w(27,30))}, {}, {
start_state(w(27,12)).
}).
#pos(p432, {f(w(15,30))}, {}, {
start_state(w(15,28)).
}).
#pos(p433, {f(w(7,30))}, {}, {
start_state(w(7,8)).
}).
#pos(p434, {f(w(10,30))}, {}, {
start_state(w(10,15)).
}).
#pos(p435, {f(w(30,30))}, {}, {
start_state(w(30,22)).
}).
#pos(p436, {f(w(22,30))}, {}, {
start_state(w(22,29)).
}).
#pos(p437, {f(w(1,30))}, {}, {
start_state(w(1,6)).
}).
#pos(p438, {f(w(22,30))}, {}, {
start_state(w(22,20)).
}).
#pos(p439, {f(w(23,30))}, {}, {
start_state(w(23,9)).
}).
#pos(p440, {f(w(29,30))}, {}, {
start_state(w(29,26)).
}).
#pos(p441, {f(w(12,30))}, {}, {
start_state(w(12,13)).
}).
#pos(p442, {f(w(14,30))}, {}, {
start_state(w(14,9)).
}).
#pos(p443, {f(w(30,30))}, {}, {
start_state(w(30,4)).
}).
#pos(p444, {f(w(16,30))}, {}, {
start_state(w(16,6)).
}).
#pos(p445, {f(w(23,30))}, {}, {
start_state(w(23,17)).
}).
#pos(p446, {f(w(21,30))}, {}, {
start_state(w(21,13)).
}).
#pos(p447, {f(w(25,30))}, {}, {
start_state(w(25,8)).
}).
#pos(p448, {f(w(30,30))}, {}, {
start_state(w(30,18)).
}).
#pos(p449, {f(w(2,30))}, {}, {
start_state(w(2,29)).
}).
#pos(p450, {f(w(27,30))}, {}, {
start_state(w(27,26)).
}).
#pos(p451, {f(w(3,30))}, {}, {
start_state(w(3,27)).
}).
#pos(p452, {f(w(27,30))}, {}, {
start_state(w(27,16)).
}).
#pos(p453, {f(w(12,30))}, {}, {
start_state(w(12,26)).
}).
#pos(p454, {f(w(28,30))}, {}, {
start_state(w(28,13)).
}).
#pos(p455, {f(w(25,30))}, {}, {
start_state(w(25,11)).
}).
#pos(p456, {f(w(11,30))}, {}, {
start_state(w(11,12)).
}).
#pos(p457, {f(w(29,30))}, {}, {
start_state(w(29,29)).
}).
#pos(p458, {f(w(13,30))}, {}, {
start_state(w(13,11)).
}).
#pos(p459, {f(w(16,30))}, {}, {
start_state(w(16,28)).
}).
#pos(p460, {f(w(18,30))}, {}, {
start_state(w(18,13)).
}).
#pos(p461, {f(w(18,30))}, {}, {
start_state(w(18,29)).
}).
#pos(p462, {f(w(4,30))}, {}, {
start_state(w(4,10)).
}).
#pos(p463, {f(w(6,30))}, {}, {
start_state(w(6,5)).
}).
#pos(p464, {f(w(17,30))}, {}, {
start_state(w(17,24)).
}).
#pos(p465, {f(w(24,30))}, {}, {
start_state(w(24,15)).
}).
#pos(p466, {f(w(10,30))}, {}, {
start_state(w(10,23)).
}).
#pos(p467, {f(w(14,30))}, {}, {
start_state(w(14,25)).
}).
#pos(p468, {f(w(22,30))}, {}, {
start_state(w(22,25)).
}).
#pos(p469, {f(w(18,30))}, {}, {
start_state(w(18,2)).
}).
#pos(p470, {f(w(15,30))}, {}, {
start_state(w(15,25)).
}).
#pos(p471, {f(w(22,30))}, {}, {
start_state(w(22,25)).
}).
#pos(p472, {f(w(20,30))}, {}, {
start_state(w(20,24)).
}).
#pos(p473, {f(w(6,30))}, {}, {
start_state(w(6,29)).
}).
#pos(p474, {f(w(29,30))}, {}, {
start_state(w(29,26)).
}).
#pos(p475, {f(w(15,30))}, {}, {
start_state(w(15,23)).
}).
#pos(p476, {f(w(15,30))}, {}, {
start_state(w(15,20)).
}).
#pos(p477, {f(w(23,30))}, {}, {
start_state(w(23,3)).
}).
#pos(p478, {f(w(4,30))}, {}, {
start_state(w(4,14)).
}).
#pos(p479, {f(w(6,30))}, {}, {
start_state(w(6,23)).
}).
#pos(p480, {f(w(26,30))}, {}, {
start_state(w(26,5)).
}).
#pos(p481, {f(w(5,30))}, {}, {
start_state(w(5,1)).
}).
#pos(p482, {f(w(17,30))}, {}, {
start_state(w(17,14)).
}).
#pos(p483, {f(w(1,30))}, {}, {
start_state(w(1,29)).
}).
#pos(p484, {f(w(3,30))}, {}, {
start_state(w(3,29)).
}).
#pos(p485, {f(w(24,30))}, {}, {
start_state(w(24,24)).
}).
#pos(p486, {f(w(18,30))}, {}, {
start_state(w(18,8)).
}).
#pos(p487, {f(w(10,30))}, {}, {
start_state(w(10,7)).
}).
#pos(p488, {f(w(22,30))}, {}, {
start_state(w(22,21)).
}).
#pos(p489, {f(w(27,30))}, {}, {
start_state(w(27,1)).
}).
#pos(p490, {f(w(14,30))}, {}, {
start_state(w(14,1)).
}).
#pos(p491, {f(w(25,30))}, {}, {
start_state(w(25,1)).
}).
#pos(p492, {f(w(8,30))}, {}, {
start_state(w(8,24)).
}).
#pos(p493, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p494, {f(w(2,30))}, {}, {
start_state(w(2,18)).
}).
#pos(p495, {f(w(12,30))}, {}, {
start_state(w(12,27)).
}).
#pos(p496, {f(w(20,30))}, {}, {
start_state(w(20,26)).
}).
#pos(p497, {f(w(19,30))}, {}, {
start_state(w(19,10)).
}).
#pos(p498, {f(w(18,30))}, {}, {
start_state(w(18,25)).
}).
#pos(p499, {f(w(28,30))}, {}, {
start_state(w(28,17)).
}).
#pos(n0, {}, {f(w(7,30))}, {
start_state(w(20,20)).
}).
#pos(n1, {}, {f(w(1,20))}, {
start_state(w(15,10)).
}).
#pos(n2, {}, {f(w(18,9))}, {
start_state(w(21,2)).
}).
#pos(n3, {}, {f(w(20,10))}, {
start_state(w(4,27)).
}).
#pos(n4, {}, {f(w(2,12))}, {
start_state(w(20,22)).
}).
#pos(n5, {}, {f(w(26,8))}, {
start_state(w(25,3)).
}).
#pos(n6, {}, {f(w(25,8))}, {
start_state(w(17,10)).
}).
#pos(n7, {}, {f(w(27,20))}, {
start_state(w(10,6)).
}).
#pos(n8, {}, {f(w(5,14))}, {
start_state(w(6,29)).
}).
#pos(n9, {}, {f(w(24,28))}, {
start_state(w(26,28)).
}).
#pos(n10, {}, {f(w(12,14))}, {
start_state(w(10,5)).
}).
#pos(n11, {}, {f(w(17,30))}, {
start_state(w(26,10)).
}).
#pos(n12, {}, {f(w(20,22))}, {
start_state(w(3,5)).
}).
#pos(n13, {}, {f(w(25,30))}, {
start_state(w(8,26)).
}).
#pos(n14, {}, {f(w(7,30))}, {
start_state(w(10,28)).
}).
#pos(n15, {}, {f(w(29,23))}, {
start_state(w(15,20)).
}).
#pos(n16, {}, {f(w(2,13))}, {
start_state(w(20,13)).
}).
#pos(n17, {}, {f(w(20,14))}, {
start_state(w(28,16)).
}).
#pos(n18, {}, {f(w(2,20))}, {
start_state(w(9,11)).
}).
#pos(n19, {}, {f(w(24,26))}, {
start_state(w(13,11)).
}).
#pos(n20, {}, {f(w(18,30))}, {
start_state(w(17,30)).
}).
#pos(n21, {}, {f(w(1,19))}, {
start_state(w(16,25)).
}).
#pos(n22, {}, {f(w(21,1))}, {
start_state(w(29,11)).
}).
#pos(n23, {}, {f(w(23,8))}, {
start_state(w(21,7)).
}).
#pos(n24, {}, {f(w(22,21))}, {
start_state(w(27,15)).
}).
#pos(n25, {}, {f(w(29,30))}, {
start_state(w(22,3)).
}).
#pos(n26, {}, {f(w(22,22))}, {
start_state(w(8,1)).
}).
#pos(n27, {}, {f(w(28,25))}, {
start_state(w(12,14)).
}).
#pos(n28, {}, {f(w(9,2))}, {
start_state(w(23,9)).
}).
#pos(n29, {}, {f(w(7,19))}, {
start_state(w(15,17)).
}).
#pos(n30, {}, {f(w(29,6))}, {
start_state(w(13,28)).
}).
#pos(n31, {}, {f(w(4,30))}, {
start_state(w(9,13)).
}).
#pos(n32, {}, {f(w(22,24))}, {
start_state(w(2,7)).
}).
#pos(n33, {}, {f(w(15,16))}, {
start_state(w(25,13)).
}).
#pos(n34, {}, {f(w(24,10))}, {
start_state(w(8,30)).
}).
#pos(n35, {}, {f(w(19,30))}, {
start_state(w(11,13)).
}).
#pos(n36, {}, {f(w(27,30))}, {
start_state(w(22,15)).
}).
#pos(n37, {}, {f(w(12,30))}, {
start_state(w(6,3)).
}).
#pos(n38, {}, {f(w(21,6))}, {
start_state(w(29,12)).
}).
#pos(n39, {}, {f(w(17,23))}, {
start_state(w(20,2)).
}).
#pos(n40, {}, {f(w(20,12))}, {
start_state(w(26,30)).
}).
#pos(n41, {}, {f(w(13,11))}, {
start_state(w(12,10)).
}).
#pos(n42, {}, {f(w(12,30))}, {
start_state(w(17,30)).
}).
#pos(n43, {}, {f(w(10,8))}, {
start_state(w(21,2)).
}).
#pos(n44, {}, {f(w(5,30))}, {
start_state(w(17,19)).
}).
#pos(n45, {}, {f(w(29,30))}, {
start_state(w(15,9)).
}).
#pos(n46, {}, {f(w(14,14))}, {
start_state(w(16,26)).
}).
#pos(n47, {}, {f(w(29,2))}, {
start_state(w(27,19)).
}).
#pos(n48, {}, {f(w(26,22))}, {
start_state(w(16,17)).
}).
#pos(n49, {}, {f(w(8,5))}, {
start_state(w(11,4)).
}).
#pos(n50, {}, {f(w(15,30))}, {
start_state(w(28,6)).
}).
#pos(n51, {}, {f(w(24,26))}, {
start_state(w(11,7)).
}).
#pos(n52, {}, {f(w(3,5))}, {
start_state(w(2,18)).
}).
#pos(n53, {}, {f(w(12,14))}, {
start_state(w(19,18)).
}).
#pos(n54, {}, {f(w(23,30))}, {
start_state(w(30,17)).
}).
#pos(n55, {}, {f(w(19,30))}, {
start_state(w(22,1)).
}).
#pos(n56, {}, {f(w(7,18))}, {
start_state(w(1,26)).
}).
#pos(n57, {}, {f(w(11,5))}, {
start_state(w(7,17)).
}).
#pos(n58, {}, {f(w(30,12))}, {
start_state(w(11,2)).
}).
#pos(n59, {}, {f(w(16,16))}, {
start_state(w(3,3)).
}).
#pos(n60, {}, {f(w(10,5))}, {
start_state(w(21,1)).
}).
#pos(n61, {}, {f(w(30,30))}, {
start_state(w(8,24)).
}).
#pos(n62, {}, {f(w(15,30))}, {
start_state(w(3,3)).
}).
#pos(n63, {}, {f(w(5,9))}, {
start_state(w(18,24)).
}).
#pos(n64, {}, {f(w(16,18))}, {
start_state(w(28,29)).
}).
#pos(n65, {}, {f(w(21,30))}, {
start_state(w(28,3)).
}).
#pos(n66, {}, {f(w(5,30))}, {
start_state(w(18,18)).
}).
#pos(n67, {}, {f(w(13,30))}, {
start_state(w(2,10)).
}).
#pos(n68, {}, {f(w(15,18))}, {
start_state(w(9,14)).
}).
#pos(n69, {}, {f(w(26,30))}, {
start_state(w(19,2)).
}).
#pos(n70, {}, {f(w(10,30))}, {
start_state(w(16,24)).
}).
#pos(n71, {}, {f(w(13,30))}, {
start_state(w(21,17)).
}).
#pos(n72, {}, {f(w(22,22))}, {
start_state(w(19,18)).
}).
#pos(n73, {}, {f(w(2,15))}, {
start_state(w(29,2)).
}).
#pos(n74, {}, {f(w(19,17))}, {
start_state(w(3,26)).
}).
#pos(n75, {}, {f(w(17,11))}, {
start_state(w(10,13)).
}).
#pos(n76, {}, {f(w(18,15))}, {
start_state(w(28,24)).
}).
#pos(n77, {}, {f(w(2,2))}, {
start_state(w(26,23)).
}).
#pos(n78, {}, {f(w(1,30))}, {
start_state(w(2,16)).
}).
#pos(n79, {}, {f(w(24,24))}, {
start_state(w(19,6)).
}).
#pos(n80, {}, {f(w(19,15))}, {
start_state(w(16,28)).
}).
#pos(n81, {}, {f(w(18,30))}, {
start_state(w(4,2)).
}).
#pos(n82, {}, {f(w(23,25))}, {
start_state(w(4,20)).
}).
#pos(n83, {}, {f(w(29,29))}, {
start_state(w(9,28)).
}).
#pos(n84, {}, {f(w(9,29))}, {
start_state(w(4,15)).
}).
#pos(n85, {}, {f(w(23,30))}, {
start_state(w(28,26)).
}).
#pos(n86, {}, {f(w(24,30))}, {
start_state(w(1,3)).
}).
#pos(n87, {}, {f(w(20,7))}, {
start_state(w(2,2)).
}).
#pos(n88, {}, {f(w(1,30))}, {
start_state(w(21,17)).
}).
#pos(n89, {}, {f(w(20,30))}, {
start_state(w(19,24)).
}).
#pos(n90, {}, {f(w(2,27))}, {
start_state(w(16,20)).
}).
#pos(n91, {}, {f(w(2,29))}, {
start_state(w(7,18)).
}).
#pos(n92, {}, {f(w(9,20))}, {
start_state(w(14,18)).
}).
#pos(n93, {}, {f(w(18,15))}, {
start_state(w(21,24)).
}).
#pos(n94, {}, {f(w(14,26))}, {
start_state(w(12,23)).
}).
#pos(n95, {}, {f(w(29,18))}, {
start_state(w(30,26)).
}).
#pos(n96, {}, {f(w(30,13))}, {
start_state(w(1,23)).
}).
#pos(n97, {}, {f(w(23,7))}, {
start_state(w(9,27)).
}).
#pos(n98, {}, {f(w(10,19))}, {
start_state(w(29,15)).
}).
#pos(n99, {}, {f(w(11,14))}, {
start_state(w(11,26)).
}).
#pos(n100, {}, {f(w(8,11))}, {
start_state(w(7,18)).
}).
#pos(n101, {}, {f(w(8,16))}, {
start_state(w(6,25)).
}).
#pos(n102, {}, {f(w(25,22))}, {
start_state(w(4,3)).
}).
#pos(n103, {}, {f(w(8,11))}, {
start_state(w(1,14)).
}).
#pos(n104, {}, {f(w(22,30))}, {
start_state(w(25,13)).
}).
#pos(n105, {}, {f(w(12,15))}, {
start_state(w(20,10)).
}).
#pos(n106, {}, {f(w(21,18))}, {
start_state(w(19,26)).
}).
#pos(n107, {}, {f(w(9,30))}, {
start_state(w(25,10)).
}).
#pos(n108, {}, {f(w(30,30))}, {
start_state(w(8,10)).
}).
#pos(n109, {}, {f(w(30,30))}, {
start_state(w(17,15)).
}).
#pos(n110, {}, {f(w(19,24))}, {
start_state(w(22,17)).
}).
#pos(n111, {}, {f(w(9,27))}, {
start_state(w(9,24)).
}).
#pos(n112, {}, {f(w(11,7))}, {
start_state(w(12,7)).
}).
#pos(n113, {}, {f(w(4,30))}, {
start_state(w(14,9)).
}).
#pos(n114, {}, {f(w(8,22))}, {
start_state(w(11,19)).
}).
#pos(n115, {}, {f(w(27,16))}, {
start_state(w(30,15)).
}).
#pos(n116, {}, {f(w(3,6))}, {
start_state(w(3,4)).
}).
#pos(n117, {}, {f(w(1,5))}, {
start_state(w(29,10)).
}).
#pos(n118, {}, {f(w(21,10))}, {
start_state(w(9,4)).
}).
#pos(n119, {}, {f(w(6,24))}, {
start_state(w(15,24)).
}).
#pos(n120, {}, {f(w(30,9))}, {
start_state(w(12,12)).
}).
#pos(n121, {}, {f(w(22,11))}, {
start_state(w(9,13)).
}).
#pos(n122, {}, {f(w(11,7))}, {
start_state(w(5,5)).
}).
#pos(n123, {}, {f(w(18,23))}, {
start_state(w(7,20)).
}).
#pos(n124, {}, {f(w(20,22))}, {
start_state(w(2,30)).
}).
#pos(n125, {}, {f(w(7,17))}, {
start_state(w(20,18)).
}).
#pos(n126, {}, {f(w(2,30))}, {
start_state(w(11,13)).
}).
#pos(n127, {}, {f(w(22,30))}, {
start_state(w(12,28)).
}).
#pos(n128, {}, {f(w(5,16))}, {
start_state(w(21,21)).
}).
#pos(n129, {}, {f(w(1,30))}, {
start_state(w(29,7)).
}).
#pos(n130, {}, {f(w(19,18))}, {
start_state(w(30,7)).
}).
#pos(n131, {}, {f(w(12,7))}, {
start_state(w(28,24)).
}).
#pos(n132, {}, {f(w(11,5))}, {
start_state(w(16,14)).
}).
#pos(n133, {}, {f(w(23,1))}, {
start_state(w(23,27)).
}).
#pos(n134, {}, {f(w(23,30))}, {
start_state(w(8,30)).
}).
#pos(n135, {}, {f(w(18,30))}, {
start_state(w(30,30)).
}).
#pos(n136, {}, {f(w(23,14))}, {
start_state(w(27,19)).
}).
#pos(n137, {}, {f(w(2,27))}, {
start_state(w(19,13)).
}).
#pos(n138, {}, {f(w(21,8))}, {
start_state(w(9,20)).
}).
#pos(n139, {}, {f(w(5,3))}, {
start_state(w(14,18)).
}).
#pos(n140, {}, {f(w(20,10))}, {
start_state(w(30,15)).
}).
#pos(n141, {}, {f(w(25,14))}, {
start_state(w(18,8)).
}).
#pos(n142, {}, {f(w(30,16))}, {
start_state(w(13,27)).
}).
#pos(n143, {}, {f(w(19,5))}, {
start_state(w(5,9)).
}).
#pos(n144, {}, {f(w(19,26))}, {
start_state(w(9,26)).
}).
#pos(n145, {}, {f(w(12,30))}, {
start_state(w(27,10)).
}).
#pos(n146, {}, {f(w(2,18))}, {
start_state(w(18,23)).
}).
#pos(n147, {}, {f(w(2,7))}, {
start_state(w(11,6)).
}).
#pos(n148, {}, {f(w(20,10))}, {
start_state(w(23,26)).
}).
#pos(n149, {}, {f(w(4,1))}, {
start_state(w(4,11)).
}).
#pos(n150, {}, {f(w(21,15))}, {
start_state(w(8,29)).
}).
#pos(n151, {}, {f(w(2,15))}, {
start_state(w(19,23)).
}).
#pos(n152, {}, {f(w(21,5))}, {
start_state(w(6,17)).
}).
#pos(n153, {}, {f(w(19,1))}, {
start_state(w(6,2)).
}).
#pos(n154, {}, {f(w(29,2))}, {
start_state(w(18,18)).
}).
#pos(n155, {}, {f(w(3,19))}, {
start_state(w(13,25)).
}).
#pos(n156, {}, {f(w(17,17))}, {
start_state(w(21,28)).
}).
#pos(n157, {}, {f(w(26,2))}, {
start_state(w(19,10)).
}).
#pos(n158, {}, {f(w(11,1))}, {
start_state(w(16,8)).
}).
#pos(n159, {}, {f(w(12,15))}, {
start_state(w(13,13)).
}).
#pos(n160, {}, {f(w(7,2))}, {
start_state(w(7,24)).
}).
#pos(n161, {}, {f(w(10,30))}, {
start_state(w(8,21)).
}).
#pos(n162, {}, {f(w(17,16))}, {
start_state(w(16,8)).
}).
#pos(n163, {}, {f(w(11,14))}, {
start_state(w(12,30)).
}).
#pos(n164, {}, {f(w(9,30))}, {
start_state(w(3,18)).
}).
#pos(n165, {}, {f(w(3,30))}, {
start_state(w(21,3)).
}).
#pos(n166, {}, {f(w(10,30))}, {
start_state(w(20,27)).
}).
#pos(n167, {}, {f(w(23,4))}, {
start_state(w(7,13)).
}).
#pos(n168, {}, {f(w(21,20))}, {
start_state(w(13,12)).
}).
#pos(n169, {}, {f(w(5,14))}, {
start_state(w(3,30)).
}).
#pos(n170, {}, {f(w(6,4))}, {
start_state(w(23,25)).
}).
#pos(n171, {}, {f(w(8,30))}, {
start_state(w(16,19)).
}).
#pos(n172, {}, {f(w(26,17))}, {
start_state(w(9,11)).
}).
#pos(n173, {}, {f(w(14,27))}, {
start_state(w(7,28)).
}).
#pos(n174, {}, {f(w(21,18))}, {
start_state(w(13,4)).
}).
#pos(n175, {}, {f(w(5,3))}, {
start_state(w(7,16)).
}).
#pos(n176, {}, {f(w(8,26))}, {
start_state(w(12,13)).
}).
#pos(n177, {}, {f(w(22,18))}, {
start_state(w(1,22)).
}).
#pos(n178, {}, {f(w(12,4))}, {
start_state(w(3,14)).
}).
#pos(n179, {}, {f(w(18,5))}, {
start_state(w(13,14)).
}).
#pos(n180, {}, {f(w(20,6))}, {
start_state(w(14,26)).
}).
#pos(n181, {}, {f(w(12,12))}, {
start_state(w(19,6)).
}).
#pos(n182, {}, {f(w(6,19))}, {
start_state(w(20,16)).
}).
#pos(n183, {}, {f(w(10,9))}, {
start_state(w(29,20)).
}).
#pos(n184, {}, {f(w(29,16))}, {
start_state(w(15,6)).
}).
#pos(n185, {}, {f(w(13,14))}, {
start_state(w(13,8)).
}).
#pos(n186, {}, {f(w(4,30))}, {
start_state(w(26,18)).
}).
#pos(n187, {}, {f(w(23,1))}, {
start_state(w(4,29)).
}).
#pos(n188, {}, {f(w(6,30))}, {
start_state(w(13,30)).
}).
#pos(n189, {}, {f(w(12,30))}, {
start_state(w(2,18)).
}).
#pos(n190, {}, {f(w(7,3))}, {
start_state(w(22,21)).
}).
#pos(n191, {}, {f(w(18,20))}, {
start_state(w(13,29)).
}).
#pos(n192, {}, {f(w(1,16))}, {
start_state(w(27,17)).
}).
#pos(n193, {}, {f(w(22,30))}, {
start_state(w(27,26)).
}).
#pos(n194, {}, {f(w(1,24))}, {
start_state(w(10,10)).
}).
#pos(n195, {}, {f(w(10,19))}, {
start_state(w(24,12)).
}).
#pos(n196, {}, {f(w(27,22))}, {
start_state(w(16,26)).
}).
#pos(n197, {}, {f(w(28,1))}, {
start_state(w(18,7)).
}).
#pos(n198, {}, {f(w(29,29))}, {
start_state(w(27,20)).
}).
#pos(n199, {}, {f(w(4,10))}, {
start_state(w(11,10)).
}).
#pos(n200, {}, {f(w(13,4))}, {
start_state(w(14,17)).
}).
#pos(n201, {}, {f(w(4,2))}, {
start_state(w(19,14)).
}).
#pos(n202, {}, {f(w(8,8))}, {
start_state(w(3,7)).
}).
#pos(n203, {}, {f(w(25,12))}, {
start_state(w(13,13)).
}).
#pos(n204, {}, {f(w(15,30))}, {
start_state(w(2,11)).
}).
#pos(n205, {}, {f(w(19,30))}, {
start_state(w(13,7)).
}).
#pos(n206, {}, {f(w(17,30))}, {
start_state(w(3,25)).
}).
#pos(n207, {}, {f(w(12,6))}, {
start_state(w(23,19)).
}).
#pos(n208, {}, {f(w(5,27))}, {
start_state(w(8,8)).
}).
#pos(n209, {}, {f(w(2,6))}, {
start_state(w(8,29)).
}).
#pos(n210, {}, {f(w(2,13))}, {
start_state(w(14,2)).
}).
#pos(n211, {}, {f(w(25,30))}, {
start_state(w(6,12)).
}).
#pos(n212, {}, {f(w(30,24))}, {
start_state(w(7,27)).
}).
#pos(n213, {}, {f(w(13,24))}, {
start_state(w(5,7)).
}).
#pos(n214, {}, {f(w(20,2))}, {
start_state(w(18,6)).
}).
#pos(n215, {}, {f(w(1,30))}, {
start_state(w(24,7)).
}).
#pos(n216, {}, {f(w(11,30))}, {
start_state(w(5,9)).
}).
#pos(n217, {}, {f(w(20,27))}, {
start_state(w(3,24)).
}).
#pos(n218, {}, {f(w(10,28))}, {
start_state(w(21,16)).
}).
#pos(n219, {}, {f(w(5,6))}, {
start_state(w(7,12)).
}).
#pos(n220, {}, {f(w(6,30))}, {
start_state(w(9,15)).
}).
#pos(n221, {}, {f(w(23,4))}, {
start_state(w(15,25)).
}).
#pos(n222, {}, {f(w(9,2))}, {
start_state(w(2,1)).
}).
#pos(n223, {}, {f(w(28,21))}, {
start_state(w(30,30)).
}).
#pos(n224, {}, {f(w(17,27))}, {
start_state(w(12,7)).
}).
#pos(n225, {}, {f(w(24,30))}, {
start_state(w(20,22)).
}).
#pos(n226, {}, {f(w(13,30))}, {
start_state(w(30,10)).
}).
#pos(n227, {}, {f(w(29,30))}, {
start_state(w(15,10)).
}).
#pos(n228, {}, {f(w(4,28))}, {
start_state(w(27,19)).
}).
#pos(n229, {}, {f(w(6,30))}, {
start_state(w(8,11)).
}).
#pos(n230, {}, {f(w(13,27))}, {
start_state(w(9,17)).
}).
#pos(n231, {}, {f(w(25,18))}, {
start_state(w(9,11)).
}).
#pos(n232, {}, {f(w(15,2))}, {
start_state(w(9,16)).
}).
#pos(n233, {}, {f(w(16,21))}, {
start_state(w(7,26)).
}).
#pos(n234, {}, {f(w(16,30))}, {
start_state(w(6,17)).
}).
#pos(n235, {}, {f(w(27,30))}, {
start_state(w(11,27)).
}).
#pos(n236, {}, {f(w(3,30))}, {
start_state(w(18,9)).
}).
#pos(n237, {}, {f(w(2,25))}, {
start_state(w(5,27)).
}).
#pos(n238, {}, {f(w(26,23))}, {
start_state(w(6,9)).
}).
#pos(n239, {}, {f(w(1,15))}, {
start_state(w(29,2)).
}).
#pos(n240, {}, {f(w(23,9))}, {
start_state(w(27,9)).
}).
#pos(n241, {}, {f(w(11,9))}, {
start_state(w(6,26)).
}).
#pos(n242, {}, {f(w(1,1))}, {
start_state(w(1,13)).
}).
#pos(n243, {}, {f(w(1,7))}, {
start_state(w(14,22)).
}).
#pos(n244, {}, {f(w(7,6))}, {
start_state(w(8,7)).
}).
#pos(n245, {}, {f(w(4,10))}, {
start_state(w(6,20)).
}).
#pos(n246, {}, {f(w(19,6))}, {
start_state(w(16,24)).
}).
#pos(n247, {}, {f(w(25,5))}, {
start_state(w(28,7)).
}).
#pos(n248, {}, {f(w(4,28))}, {
start_state(w(20,23)).
}).
#pos(n249, {}, {f(w(7,11))}, {
start_state(w(25,1)).
}).
#pos(n250, {}, {f(w(1,16))}, {
start_state(w(8,3)).
}).
#pos(n251, {}, {f(w(1,17))}, {
start_state(w(19,28)).
}).
#pos(n252, {}, {f(w(2,24))}, {
start_state(w(17,19)).
}).
#pos(n253, {}, {f(w(9,15))}, {
start_state(w(22,11)).
}).
#pos(n254, {}, {f(w(24,20))}, {
start_state(w(5,28)).
}).
#pos(n255, {}, {f(w(8,7))}, {
start_state(w(15,1)).
}).
#pos(n256, {}, {f(w(21,30))}, {
start_state(w(1,22)).
}).
#pos(n257, {}, {f(w(9,5))}, {
start_state(w(13,11)).
}).
#pos(n258, {}, {f(w(10,23))}, {
start_state(w(12,14)).
}).
#pos(n259, {}, {f(w(8,18))}, {
start_state(w(13,26)).
}).
#pos(n260, {}, {f(w(15,26))}, {
start_state(w(17,27)).
}).
#pos(n261, {}, {f(w(14,30))}, {
start_state(w(17,30)).
}).
#pos(n262, {}, {f(w(13,24))}, {
start_state(w(3,1)).
}).
#pos(n263, {}, {f(w(17,9))}, {
start_state(w(25,16)).
}).
#pos(n264, {}, {f(w(18,3))}, {
start_state(w(7,30)).
}).
#pos(n265, {}, {f(w(23,10))}, {
start_state(w(29,21)).
}).
#pos(n266, {}, {f(w(22,17))}, {
start_state(w(11,5)).
}).
#pos(n267, {}, {f(w(11,4))}, {
start_state(w(27,18)).
}).
#pos(n268, {}, {f(w(5,21))}, {
start_state(w(12,20)).
}).
#pos(n269, {}, {f(w(15,14))}, {
start_state(w(3,29)).
}).
#pos(n270, {}, {f(w(27,3))}, {
start_state(w(14,14)).
}).
#pos(n271, {}, {f(w(18,1))}, {
start_state(w(28,4)).
}).
#pos(n272, {}, {f(w(5,11))}, {
start_state(w(13,18)).
}).
#pos(n273, {}, {f(w(29,2))}, {
start_state(w(7,30)).
}).
#pos(n274, {}, {f(w(16,6))}, {
start_state(w(6,23)).
}).
#pos(n275, {}, {f(w(21,13))}, {
start_state(w(1,10)).
}).
#pos(n276, {}, {f(w(5,18))}, {
start_state(w(25,26)).
}).
#pos(n277, {}, {f(w(17,30))}, {
start_state(w(21,6)).
}).
#pos(n278, {}, {f(w(15,6))}, {
start_state(w(5,19)).
}).
#pos(n279, {}, {f(w(25,24))}, {
start_state(w(4,18)).
}).
#pos(n280, {}, {f(w(28,13))}, {
start_state(w(24,17)).
}).
#pos(n281, {}, {f(w(24,6))}, {
start_state(w(27,3)).
}).
#pos(n282, {}, {f(w(16,11))}, {
start_state(w(20,4)).
}).
#pos(n283, {}, {f(w(3,12))}, {
start_state(w(4,14)).
}).
#pos(n284, {}, {f(w(17,15))}, {
start_state(w(24,25)).
}).
#pos(n285, {}, {f(w(1,30))}, {
start_state(w(30,13)).
}).
#pos(n286, {}, {f(w(8,11))}, {
start_state(w(25,4)).
}).
#pos(n287, {}, {f(w(17,30))}, {
start_state(w(18,20)).
}).
#pos(n288, {}, {f(w(2,28))}, {
start_state(w(8,14)).
}).
#pos(n289, {}, {f(w(30,1))}, {
start_state(w(28,12)).
}).
#pos(n290, {}, {f(w(4,10))}, {
start_state(w(10,15)).
}).
#pos(n291, {}, {f(w(17,16))}, {
start_state(w(9,19)).
}).
#pos(n292, {}, {f(w(10,30))}, {
start_state(w(14,11)).
}).
#pos(n293, {}, {f(w(16,20))}, {
start_state(w(5,15)).
}).
#pos(n294, {}, {f(w(26,2))}, {
start_state(w(6,20)).
}).
#pos(n295, {}, {f(w(13,20))}, {
start_state(w(12,8)).
}).
#pos(n296, {}, {f(w(11,18))}, {
start_state(w(15,21)).
}).
#pos(n297, {}, {f(w(20,4))}, {
start_state(w(30,16)).
}).
#pos(n298, {}, {f(w(20,25))}, {
start_state(w(20,6)).
}).
#pos(n299, {}, {f(w(27,6))}, {
start_state(w(2,10)).
}).
#pos(n300, {}, {f(w(19,30))}, {
start_state(w(24,1)).
}).
#pos(n301, {}, {f(w(23,2))}, {
start_state(w(6,29)).
}).
#pos(n302, {}, {f(w(8,27))}, {
start_state(w(10,22)).
}).
#pos(n303, {}, {f(w(17,2))}, {
start_state(w(23,7)).
}).
#pos(n304, {}, {f(w(25,18))}, {
start_state(w(30,4)).
}).
#pos(n305, {}, {f(w(1,30))}, {
start_state(w(17,17)).
}).
#pos(n306, {}, {f(w(19,21))}, {
start_state(w(19,18)).
}).
#pos(n307, {}, {f(w(21,6))}, {
start_state(w(12,22)).
}).
#pos(n308, {}, {f(w(17,28))}, {
start_state(w(9,19)).
}).
#pos(n309, {}, {f(w(24,1))}, {
start_state(w(27,13)).
}).
#pos(n310, {}, {f(w(5,26))}, {
start_state(w(28,28)).
}).
#pos(n311, {}, {f(w(2,21))}, {
start_state(w(18,29)).
}).
#pos(n312, {}, {f(w(8,17))}, {
start_state(w(25,25)).
}).
#pos(n313, {}, {f(w(16,30))}, {
start_state(w(10,18)).
}).
#pos(n314, {}, {f(w(6,30))}, {
start_state(w(27,28)).
}).
#pos(n315, {}, {f(w(25,30))}, {
start_state(w(19,14)).
}).
#pos(n316, {}, {f(w(21,30))}, {
start_state(w(14,28)).
}).
#pos(n317, {}, {f(w(16,12))}, {
start_state(w(17,22)).
}).
#pos(n318, {}, {f(w(28,15))}, {
start_state(w(14,8)).
}).
#pos(n319, {}, {f(w(17,6))}, {
start_state(w(22,22)).
}).
#pos(n320, {}, {f(w(26,30))}, {
start_state(w(4,18)).
}).
#pos(n321, {}, {f(w(11,8))}, {
start_state(w(21,2)).
}).
#pos(n322, {}, {f(w(20,30))}, {
start_state(w(9,23)).
}).
#pos(n323, {}, {f(w(28,15))}, {
start_state(w(8,24)).
}).
#pos(n324, {}, {f(w(9,22))}, {
start_state(w(27,11)).
}).
#pos(n325, {}, {f(w(26,30))}, {
start_state(w(6,5)).
}).
#pos(n326, {}, {f(w(13,28))}, {
start_state(w(6,29)).
}).
#pos(n327, {}, {f(w(12,17))}, {
start_state(w(20,23)).
}).
#pos(n328, {}, {f(w(30,30))}, {
start_state(w(18,17)).
}).
#pos(n329, {}, {f(w(5,18))}, {
start_state(w(4,4)).
}).
#pos(n330, {}, {f(w(18,4))}, {
start_state(w(18,24)).
}).
#pos(n331, {}, {f(w(9,30))}, {
start_state(w(17,6)).
}).
#pos(n332, {}, {f(w(25,30))}, {
start_state(w(30,29)).
}).
#pos(n333, {}, {f(w(11,30))}, {
start_state(w(15,27)).
}).
#pos(n334, {}, {f(w(30,9))}, {
start_state(w(5,29)).
}).
#pos(n335, {}, {f(w(30,15))}, {
start_state(w(29,5)).
}).
#pos(n336, {}, {f(w(7,14))}, {
start_state(w(1,4)).
}).
#pos(n337, {}, {f(w(1,9))}, {
start_state(w(27,16)).
}).
#pos(n338, {}, {f(w(13,9))}, {
start_state(w(2,23)).
}).
#pos(n339, {}, {f(w(2,4))}, {
start_state(w(28,3)).
}).
#pos(n340, {}, {f(w(9,7))}, {
start_state(w(28,23)).
}).
#pos(n341, {}, {f(w(13,8))}, {
start_state(w(10,8)).
}).
#pos(n342, {}, {f(w(16,1))}, {
start_state(w(11,18)).
}).
#pos(n343, {}, {f(w(7,12))}, {
start_state(w(2,23)).
}).
#pos(n344, {}, {f(w(24,9))}, {
start_state(w(3,19)).
}).
#pos(n345, {}, {f(w(2,1))}, {
start_state(w(12,26)).
}).
#pos(n346, {}, {f(w(21,4))}, {
start_state(w(1,2)).
}).
#pos(n347, {}, {f(w(16,13))}, {
start_state(w(3,13)).
}).
#pos(n348, {}, {f(w(16,20))}, {
start_state(w(3,18)).
}).
#pos(n349, {}, {f(w(20,18))}, {
start_state(w(29,17)).
}).
#pos(n350, {}, {f(w(4,23))}, {
start_state(w(2,22)).
}).
#pos(n351, {}, {f(w(25,30))}, {
start_state(w(10,13)).
}).
#pos(n352, {}, {f(w(7,27))}, {
start_state(w(2,6)).
}).
#pos(n353, {}, {f(w(1,30))}, {
start_state(w(18,5)).
}).
#pos(n354, {}, {f(w(10,19))}, {
start_state(w(7,5)).
}).
#pos(n355, {}, {f(w(13,14))}, {
start_state(w(21,21)).
}).
#pos(n356, {}, {f(w(17,28))}, {
start_state(w(22,8)).
}).
#pos(n357, {}, {f(w(23,16))}, {
start_state(w(11,30)).
}).
#pos(n358, {}, {f(w(3,4))}, {
start_state(w(30,30)).
}).
#pos(n359, {}, {f(w(13,2))}, {
start_state(w(23,3)).
}).
#pos(n360, {}, {f(w(1,1))}, {
start_state(w(13,17)).
}).
#pos(n361, {}, {f(w(21,16))}, {
start_state(w(10,25)).
}).
#pos(n362, {}, {f(w(10,10))}, {
start_state(w(23,10)).
}).
#pos(n363, {}, {f(w(28,13))}, {
start_state(w(18,6)).
}).
#pos(n364, {}, {f(w(7,22))}, {
start_state(w(26,5)).
}).
#pos(n365, {}, {f(w(26,6))}, {
start_state(w(2,16)).
}).
#pos(n366, {}, {f(w(28,8))}, {
start_state(w(27,5)).
}).
#pos(n367, {}, {f(w(2,5))}, {
start_state(w(10,28)).
}).
#pos(n368, {}, {f(w(12,16))}, {
start_state(w(27,30)).
}).
#pos(n369, {}, {f(w(1,4))}, {
start_state(w(8,8)).
}).
#pos(n370, {}, {f(w(5,30))}, {
start_state(w(20,14)).
}).
#pos(n371, {}, {f(w(30,30))}, {
start_state(w(8,26)).
}).
#pos(n372, {}, {f(w(17,13))}, {
start_state(w(19,10)).
}).
#pos(n373, {}, {f(w(10,6))}, {
start_state(w(30,16)).
}).
#pos(n374, {}, {f(w(30,30))}, {
start_state(w(21,27)).
}).
#pos(n375, {}, {f(w(29,16))}, {
start_state(w(27,19)).
}).
#pos(n376, {}, {f(w(14,30))}, {
start_state(w(1,6)).
}).
#pos(n377, {}, {f(w(2,11))}, {
start_state(w(20,10)).
}).
#pos(n378, {}, {f(w(17,19))}, {
start_state(w(10,3)).
}).
#pos(n379, {}, {f(w(27,18))}, {
start_state(w(30,23)).
}).
#pos(n380, {}, {f(w(26,30))}, {
start_state(w(7,28)).
}).
#pos(n381, {}, {f(w(6,10))}, {
start_state(w(14,16)).
}).
#pos(n382, {}, {f(w(13,30))}, {
start_state(w(5,6)).
}).
#pos(n383, {}, {f(w(25,9))}, {
start_state(w(29,15)).
}).
#pos(n384, {}, {f(w(24,30))}, {
start_state(w(8,3)).
}).
#pos(n385, {}, {f(w(18,3))}, {
start_state(w(16,10)).
}).
#pos(n386, {}, {f(w(30,28))}, {
start_state(w(22,17)).
}).
#pos(n387, {}, {f(w(13,6))}, {
start_state(w(13,30)).
}).
#pos(n388, {}, {f(w(3,30))}, {
start_state(w(10,16)).
}).
#pos(n389, {}, {f(w(16,21))}, {
start_state(w(25,20)).
}).
#pos(n390, {}, {f(w(10,7))}, {
start_state(w(30,18)).
}).
#pos(n391, {}, {f(w(29,16))}, {
start_state(w(1,28)).
}).
#pos(n392, {}, {f(w(5,9))}, {
start_state(w(1,1)).
}).
#pos(n393, {}, {f(w(28,18))}, {
start_state(w(3,25)).
}).
#pos(n394, {}, {f(w(16,28))}, {
start_state(w(10,22)).
}).
#pos(n395, {}, {f(w(27,30))}, {
start_state(w(11,11)).
}).
#pos(n396, {}, {f(w(30,12))}, {
start_state(w(12,12)).
}).
#pos(n397, {}, {f(w(1,2))}, {
start_state(w(10,14)).
}).
#pos(n398, {}, {f(w(5,23))}, {
start_state(w(15,18)).
}).
#pos(n399, {}, {f(w(18,30))}, {
start_state(w(7,3)).
}).
#pos(n400, {}, {f(w(25,30))}, {
start_state(w(6,25)).
}).
#pos(n401, {}, {f(w(30,20))}, {
start_state(w(25,9)).
}).
#pos(n402, {}, {f(w(6,19))}, {
start_state(w(4,25)).
}).
#pos(n403, {}, {f(w(16,25))}, {
start_state(w(17,10)).
}).
#pos(n404, {}, {f(w(6,27))}, {
start_state(w(28,22)).
}).
#pos(n405, {}, {f(w(7,24))}, {
start_state(w(17,3)).
}).
#pos(n406, {}, {f(w(22,3))}, {
start_state(w(25,1)).
}).
#pos(n407, {}, {f(w(2,3))}, {
start_state(w(22,27)).
}).
#pos(n408, {}, {f(w(2,30))}, {
start_state(w(7,28)).
}).
#pos(n409, {}, {f(w(11,30))}, {
start_state(w(19,14)).
}).
#pos(n410, {}, {f(w(15,24))}, {
start_state(w(11,20)).
}).
#pos(n411, {}, {f(w(16,9))}, {
start_state(w(15,19)).
}).
#pos(n412, {}, {f(w(9,30))}, {
start_state(w(12,2)).
}).
#pos(n413, {}, {f(w(24,5))}, {
start_state(w(19,18)).
}).
#pos(n414, {}, {f(w(30,1))}, {
start_state(w(10,8)).
}).
#pos(n415, {}, {f(w(11,1))}, {
start_state(w(13,28)).
}).
#pos(n416, {}, {f(w(2,23))}, {
start_state(w(17,29)).
}).
#pos(n417, {}, {f(w(20,3))}, {
start_state(w(27,24)).
}).
#pos(n418, {}, {f(w(1,30))}, {
start_state(w(26,21)).
}).
#pos(n419, {}, {f(w(18,7))}, {
start_state(w(6,15)).
}).
#pos(n420, {}, {f(w(9,5))}, {
start_state(w(19,12)).
}).
#pos(n421, {}, {f(w(27,30))}, {
start_state(w(15,9)).
}).
#pos(n422, {}, {f(w(23,21))}, {
start_state(w(19,22)).
}).
#pos(n423, {}, {f(w(13,18))}, {
start_state(w(8,5)).
}).
#pos(n424, {}, {f(w(4,22))}, {
start_state(w(13,22)).
}).
#pos(n425, {}, {f(w(20,3))}, {
start_state(w(2,7)).
}).
#pos(n426, {}, {f(w(28,28))}, {
start_state(w(5,30)).
}).
#pos(n427, {}, {f(w(25,2))}, {
start_state(w(4,17)).
}).
#pos(n428, {}, {f(w(1,1))}, {
start_state(w(8,12)).
}).
#pos(n429, {}, {f(w(13,30))}, {
start_state(w(25,5)).
}).
#pos(n430, {}, {f(w(3,3))}, {
start_state(w(4,11)).
}).
#pos(n431, {}, {f(w(15,14))}, {
start_state(w(29,26)).
}).
#pos(n432, {}, {f(w(14,27))}, {
start_state(w(4,14)).
}).
#pos(n433, {}, {f(w(9,3))}, {
start_state(w(28,21)).
}).
#pos(n434, {}, {f(w(12,24))}, {
start_state(w(19,5)).
}).
#pos(n435, {}, {f(w(9,7))}, {
start_state(w(13,30)).
}).
#pos(n436, {}, {f(w(29,14))}, {
start_state(w(8,30)).
}).
#pos(n437, {}, {f(w(19,11))}, {
start_state(w(23,1)).
}).
#pos(n438, {}, {f(w(12,30))}, {
start_state(w(11,20)).
}).
#pos(n439, {}, {f(w(13,20))}, {
start_state(w(9,7)).
}).
#pos(n440, {}, {f(w(27,30))}, {
start_state(w(24,4)).
}).
#pos(n441, {}, {f(w(26,14))}, {
start_state(w(28,3)).
}).
#pos(n442, {}, {f(w(19,29))}, {
start_state(w(27,10)).
}).
#pos(n443, {}, {f(w(18,6))}, {
start_state(w(29,14)).
}).
#pos(n444, {}, {f(w(27,17))}, {
start_state(w(5,10)).
}).
#pos(n445, {}, {f(w(7,27))}, {
start_state(w(25,4)).
}).
#pos(n446, {}, {f(w(19,7))}, {
start_state(w(10,22)).
}).
#pos(n447, {}, {f(w(25,9))}, {
start_state(w(22,29)).
}).
#pos(n448, {}, {f(w(8,12))}, {
start_state(w(19,27)).
}).
#pos(n449, {}, {f(w(22,8))}, {
start_state(w(26,25)).
}).
#pos(n450, {}, {f(w(12,30))}, {
start_state(w(19,9)).
}).
#pos(n451, {}, {f(w(20,25))}, {
start_state(w(16,6)).
}).
#pos(n452, {}, {f(w(1,27))}, {
start_state(w(27,7)).
}).
#pos(n453, {}, {f(w(17,30))}, {
start_state(w(1,25)).
}).
#pos(n454, {}, {f(w(13,12))}, {
start_state(w(14,19)).
}).
#pos(n455, {}, {f(w(22,21))}, {
start_state(w(10,13)).
}).
#pos(n456, {}, {f(w(7,14))}, {
start_state(w(7,10)).
}).
#pos(n457, {}, {f(w(4,13))}, {
start_state(w(25,17)).
}).
#pos(n458, {}, {f(w(28,15))}, {
start_state(w(19,5)).
}).
#pos(n459, {}, {f(w(8,30))}, {
start_state(w(6,22)).
}).
#pos(n460, {}, {f(w(30,13))}, {
start_state(w(1,4)).
}).
#pos(n461, {}, {f(w(26,30))}, {
start_state(w(25,13)).
}).
#pos(n462, {}, {f(w(8,12))}, {
start_state(w(18,14)).
}).
#pos(n463, {}, {f(w(7,30))}, {
start_state(w(3,24)).
}).
#pos(n464, {}, {f(w(9,24))}, {
start_state(w(21,26)).
}).
#pos(n465, {}, {f(w(4,10))}, {
start_state(w(10,8)).
}).
#pos(n466, {}, {f(w(22,4))}, {
start_state(w(13,11)).
}).
#pos(n467, {}, {f(w(24,22))}, {
start_state(w(5,28)).
}).
#pos(n468, {}, {f(w(30,14))}, {
start_state(w(17,24)).
}).
#pos(n469, {}, {f(w(3,3))}, {
start_state(w(2,5)).
}).
#pos(n470, {}, {f(w(14,30))}, {
start_state(w(28,7)).
}).
#pos(n471, {}, {f(w(24,18))}, {
start_state(w(19,13)).
}).
#pos(n472, {}, {f(w(11,30))}, {
start_state(w(1,5)).
}).
#pos(n473, {}, {f(w(5,27))}, {
start_state(w(6,15)).
}).
#pos(n474, {}, {f(w(19,30))}, {
start_state(w(1,21)).
}).
#pos(n475, {}, {f(w(22,15))}, {
start_state(w(10,3)).
}).
#pos(n476, {}, {f(w(13,24))}, {
start_state(w(7,26)).
}).
#pos(n477, {}, {f(w(22,10))}, {
start_state(w(9,4)).
}).
#pos(n478, {}, {f(w(19,30))}, {
start_state(w(1,20)).
}).
#pos(n479, {}, {f(w(9,28))}, {
start_state(w(29,26)).
}).
#pos(n480, {}, {f(w(14,30))}, {
start_state(w(1,25)).
}).
#pos(n481, {}, {f(w(10,27))}, {
start_state(w(22,8)).
}).
#pos(n482, {}, {f(w(10,10))}, {
start_state(w(3,25)).
}).
#pos(n483, {}, {f(w(16,7))}, {
start_state(w(3,9)).
}).
#pos(n484, {}, {f(w(17,30))}, {
start_state(w(29,24)).
}).
#pos(n485, {}, {f(w(3,17))}, {
start_state(w(24,21)).
}).
#pos(n486, {}, {f(w(25,14))}, {
start_state(w(27,8)).
}).
#pos(n487, {}, {f(w(1,8))}, {
start_state(w(8,22)).
}).
#pos(n488, {}, {f(w(23,7))}, {
start_state(w(9,29)).
}).
#pos(n489, {}, {f(w(4,26))}, {
start_state(w(6,10)).
}).
#pos(n490, {}, {f(w(6,30))}, {
start_state(w(9,19)).
}).
#pos(n491, {}, {f(w(2,1))}, {
start_state(w(6,3)).
}).
#pos(n492, {}, {f(w(11,30))}, {
start_state(w(16,7)).
}).
#pos(n493, {}, {f(w(18,11))}, {
start_state(w(18,27)).
}).
#pos(n494, {}, {f(w(3,5))}, {
start_state(w(22,10)).
}).
#pos(n495, {}, {f(w(9,1))}, {
start_state(w(23,16)).
}).
#pos(n496, {}, {f(w(6,10))}, {
start_state(w(26,10)).
}).
#pos(n497, {}, {f(w(1,17))}, {
start_state(w(1,5)).
}).
#pos(n498, {}, {f(w(14,4))}, {
start_state(w(8,22)).
}).
#pos(n499, {}, {f(w(5,30))}, {
start_state(w(17,14)).
}).
