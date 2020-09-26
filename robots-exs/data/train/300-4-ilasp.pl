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

#pos(p0, {f(w(16,30))}, {}, {
start_state(w(16,22)).
}).
#pos(p1, {f(w(28,30))}, {}, {
start_state(w(28,24)).
}).
#pos(p2, {f(w(16,30))}, {}, {
start_state(w(16,2)).
}).
#pos(p3, {f(w(6,30))}, {}, {
start_state(w(6,15)).
}).
#pos(p4, {f(w(16,30))}, {}, {
start_state(w(16,3)).
}).
#pos(p5, {f(w(18,30))}, {}, {
start_state(w(18,9)).
}).
#pos(p6, {f(w(20,30))}, {}, {
start_state(w(20,29)).
}).
#pos(p7, {f(w(19,30))}, {}, {
start_state(w(19,21)).
}).
#pos(p8, {f(w(22,30))}, {}, {
start_state(w(22,24)).
}).
#pos(p9, {f(w(3,30))}, {}, {
start_state(w(3,24)).
}).
#pos(p10, {f(w(14,30))}, {}, {
start_state(w(14,27)).
}).
#pos(p11, {f(w(29,30))}, {}, {
start_state(w(29,28)).
}).
#pos(p12, {f(w(17,30))}, {}, {
start_state(w(17,19)).
}).
#pos(p13, {f(w(27,30))}, {}, {
start_state(w(27,18)).
}).
#pos(p14, {f(w(2,30))}, {}, {
start_state(w(2,22)).
}).
#pos(p15, {f(w(12,30))}, {}, {
start_state(w(12,19)).
}).
#pos(p16, {f(w(16,30))}, {}, {
start_state(w(16,11)).
}).
#pos(p17, {f(w(12,30))}, {}, {
start_state(w(12,12)).
}).
#pos(p18, {f(w(17,30))}, {}, {
start_state(w(17,13)).
}).
#pos(p19, {f(w(4,30))}, {}, {
start_state(w(4,5)).
}).
#pos(p20, {f(w(9,30))}, {}, {
start_state(w(9,17)).
}).
#pos(p21, {f(w(18,30))}, {}, {
start_state(w(18,26)).
}).
#pos(p22, {f(w(2,30))}, {}, {
start_state(w(2,11)).
}).
#pos(p23, {f(w(28,30))}, {}, {
start_state(w(28,2)).
}).
#pos(p24, {f(w(13,30))}, {}, {
start_state(w(13,29)).
}).
#pos(p25, {f(w(29,30))}, {}, {
start_state(w(29,3)).
}).
#pos(p26, {f(w(18,30))}, {}, {
start_state(w(18,1)).
}).
#pos(p27, {f(w(3,30))}, {}, {
start_state(w(3,9)).
}).
#pos(p28, {f(w(15,30))}, {}, {
start_state(w(15,4)).
}).
#pos(p29, {f(w(4,30))}, {}, {
start_state(w(4,26)).
}).
#pos(p30, {f(w(30,30))}, {}, {
start_state(w(30,28)).
}).
#pos(p31, {f(w(23,30))}, {}, {
start_state(w(23,21)).
}).
#pos(p32, {f(w(7,30))}, {}, {
start_state(w(7,9)).
}).
#pos(p33, {f(w(10,30))}, {}, {
start_state(w(10,3)).
}).
#pos(p34, {f(w(16,30))}, {}, {
start_state(w(16,29)).
}).
#pos(p35, {f(w(21,30))}, {}, {
start_state(w(21,9)).
}).
#pos(p36, {f(w(19,30))}, {}, {
start_state(w(19,12)).
}).
#pos(p37, {f(w(27,30))}, {}, {
start_state(w(27,26)).
}).
#pos(p38, {f(w(30,30))}, {}, {
start_state(w(30,29)).
}).
#pos(p39, {f(w(14,30))}, {}, {
start_state(w(14,12)).
}).
#pos(p40, {f(w(16,30))}, {}, {
start_state(w(16,16)).
}).
#pos(p41, {f(w(4,30))}, {}, {
start_state(w(4,2)).
}).
#pos(p42, {f(w(1,30))}, {}, {
start_state(w(1,3)).
}).
#pos(p43, {f(w(15,30))}, {}, {
start_state(w(15,2)).
}).
#pos(p44, {f(w(14,30))}, {}, {
start_state(w(14,8)).
}).
#pos(p45, {f(w(10,30))}, {}, {
start_state(w(10,24)).
}).
#pos(p46, {f(w(7,30))}, {}, {
start_state(w(7,7)).
}).
#pos(p47, {f(w(4,30))}, {}, {
start_state(w(4,10)).
}).
#pos(p48, {f(w(5,30))}, {}, {
start_state(w(5,21)).
}).
#pos(p49, {f(w(8,30))}, {}, {
start_state(w(8,26)).
}).
#pos(p50, {f(w(28,30))}, {}, {
start_state(w(28,21)).
}).
#pos(p51, {f(w(26,30))}, {}, {
start_state(w(26,29)).
}).
#pos(p52, {f(w(8,30))}, {}, {
start_state(w(8,17)).
}).
#pos(p53, {f(w(27,30))}, {}, {
start_state(w(27,2)).
}).
#pos(p54, {f(w(2,30))}, {}, {
start_state(w(2,11)).
}).
#pos(p55, {f(w(19,30))}, {}, {
start_state(w(19,15)).
}).
#pos(p56, {f(w(2,30))}, {}, {
start_state(w(2,24)).
}).
#pos(p57, {f(w(14,30))}, {}, {
start_state(w(14,29)).
}).
#pos(p58, {f(w(10,30))}, {}, {
start_state(w(10,2)).
}).
#pos(p59, {f(w(8,30))}, {}, {
start_state(w(8,29)).
}).
#pos(p60, {f(w(6,30))}, {}, {
start_state(w(6,16)).
}).
#pos(p61, {f(w(23,30))}, {}, {
start_state(w(23,8)).
}).
#pos(p62, {f(w(17,30))}, {}, {
start_state(w(17,16)).
}).
#pos(p63, {f(w(27,30))}, {}, {
start_state(w(27,14)).
}).
#pos(p64, {f(w(29,30))}, {}, {
start_state(w(29,28)).
}).
#pos(p65, {f(w(3,30))}, {}, {
start_state(w(3,7)).
}).
#pos(p66, {f(w(4,30))}, {}, {
start_state(w(4,29)).
}).
#pos(p67, {f(w(30,30))}, {}, {
start_state(w(30,18)).
}).
#pos(p68, {f(w(27,30))}, {}, {
start_state(w(27,29)).
}).
#pos(p69, {f(w(27,30))}, {}, {
start_state(w(27,10)).
}).
#pos(p70, {f(w(28,30))}, {}, {
start_state(w(28,17)).
}).
#pos(p71, {f(w(6,30))}, {}, {
start_state(w(6,23)).
}).
#pos(p72, {f(w(20,30))}, {}, {
start_state(w(20,13)).
}).
#pos(p73, {f(w(6,30))}, {}, {
start_state(w(6,2)).
}).
#pos(p74, {f(w(25,30))}, {}, {
start_state(w(25,8)).
}).
#pos(p75, {f(w(13,30))}, {}, {
start_state(w(13,20)).
}).
#pos(p76, {f(w(6,30))}, {}, {
start_state(w(6,9)).
}).
#pos(p77, {f(w(13,30))}, {}, {
start_state(w(13,10)).
}).
#pos(p78, {f(w(28,30))}, {}, {
start_state(w(28,7)).
}).
#pos(p79, {f(w(7,30))}, {}, {
start_state(w(7,5)).
}).
#pos(p80, {f(w(14,30))}, {}, {
start_state(w(14,7)).
}).
#pos(p81, {f(w(22,30))}, {}, {
start_state(w(22,7)).
}).
#pos(p82, {f(w(13,30))}, {}, {
start_state(w(13,7)).
}).
#pos(p83, {f(w(9,30))}, {}, {
start_state(w(9,8)).
}).
#pos(p84, {f(w(4,30))}, {}, {
start_state(w(4,24)).
}).
#pos(p85, {f(w(6,30))}, {}, {
start_state(w(6,18)).
}).
#pos(p86, {f(w(18,30))}, {}, {
start_state(w(18,21)).
}).
#pos(p87, {f(w(15,30))}, {}, {
start_state(w(15,4)).
}).
#pos(p88, {f(w(16,30))}, {}, {
start_state(w(16,16)).
}).
#pos(p89, {f(w(24,30))}, {}, {
start_state(w(24,20)).
}).
#pos(p90, {f(w(23,30))}, {}, {
start_state(w(23,11)).
}).
#pos(p91, {f(w(30,30))}, {}, {
start_state(w(30,22)).
}).
#pos(p92, {f(w(12,30))}, {}, {
start_state(w(12,10)).
}).
#pos(p93, {f(w(14,30))}, {}, {
start_state(w(14,29)).
}).
#pos(p94, {f(w(28,30))}, {}, {
start_state(w(28,29)).
}).
#pos(p95, {f(w(29,30))}, {}, {
start_state(w(29,8)).
}).
#pos(p96, {f(w(14,30))}, {}, {
start_state(w(14,13)).
}).
#pos(p97, {f(w(7,30))}, {}, {
start_state(w(7,16)).
}).
#pos(p98, {f(w(4,30))}, {}, {
start_state(w(4,26)).
}).
#pos(p99, {f(w(19,30))}, {}, {
start_state(w(19,3)).
}).
#pos(p100, {f(w(12,30))}, {}, {
start_state(w(12,11)).
}).
#pos(p101, {f(w(3,30))}, {}, {
start_state(w(3,29)).
}).
#pos(p102, {f(w(25,30))}, {}, {
start_state(w(25,14)).
}).
#pos(p103, {f(w(23,30))}, {}, {
start_state(w(23,12)).
}).
#pos(p104, {f(w(27,30))}, {}, {
start_state(w(27,23)).
}).
#pos(p105, {f(w(24,30))}, {}, {
start_state(w(24,25)).
}).
#pos(p106, {f(w(27,30))}, {}, {
start_state(w(27,23)).
}).
#pos(p107, {f(w(7,30))}, {}, {
start_state(w(7,10)).
}).
#pos(p108, {f(w(13,30))}, {}, {
start_state(w(13,9)).
}).
#pos(p109, {f(w(15,30))}, {}, {
start_state(w(15,18)).
}).
#pos(p110, {f(w(10,30))}, {}, {
start_state(w(10,19)).
}).
#pos(p111, {f(w(22,30))}, {}, {
start_state(w(22,25)).
}).
#pos(p112, {f(w(17,30))}, {}, {
start_state(w(17,7)).
}).
#pos(p113, {f(w(24,30))}, {}, {
start_state(w(24,28)).
}).
#pos(p114, {f(w(8,30))}, {}, {
start_state(w(8,17)).
}).
#pos(p115, {f(w(3,30))}, {}, {
start_state(w(3,25)).
}).
#pos(p116, {f(w(30,30))}, {}, {
start_state(w(30,16)).
}).
#pos(p117, {f(w(10,30))}, {}, {
start_state(w(10,22)).
}).
#pos(p118, {f(w(5,30))}, {}, {
start_state(w(5,18)).
}).
#pos(p119, {f(w(11,30))}, {}, {
start_state(w(11,12)).
}).
#pos(p120, {f(w(13,30))}, {}, {
start_state(w(13,24)).
}).
#pos(p121, {f(w(29,30))}, {}, {
start_state(w(29,28)).
}).
#pos(p122, {f(w(27,30))}, {}, {
start_state(w(27,7)).
}).
#pos(p123, {f(w(3,30))}, {}, {
start_state(w(3,24)).
}).
#pos(p124, {f(w(25,30))}, {}, {
start_state(w(25,27)).
}).
#pos(p125, {f(w(27,30))}, {}, {
start_state(w(27,17)).
}).
#pos(p126, {f(w(13,30))}, {}, {
start_state(w(13,24)).
}).
#pos(p127, {f(w(18,30))}, {}, {
start_state(w(18,8)).
}).
#pos(p128, {f(w(13,30))}, {}, {
start_state(w(13,1)).
}).
#pos(p129, {f(w(5,30))}, {}, {
start_state(w(5,27)).
}).
#pos(p130, {f(w(3,30))}, {}, {
start_state(w(3,9)).
}).
#pos(p131, {f(w(8,30))}, {}, {
start_state(w(8,28)).
}).
#pos(p132, {f(w(16,30))}, {}, {
start_state(w(16,6)).
}).
#pos(p133, {f(w(28,30))}, {}, {
start_state(w(28,2)).
}).
#pos(p134, {f(w(13,30))}, {}, {
start_state(w(13,1)).
}).
#pos(p135, {f(w(28,30))}, {}, {
start_state(w(28,19)).
}).
#pos(p136, {f(w(9,30))}, {}, {
start_state(w(9,29)).
}).
#pos(p137, {f(w(6,30))}, {}, {
start_state(w(6,22)).
}).
#pos(p138, {f(w(1,30))}, {}, {
start_state(w(1,17)).
}).
#pos(p139, {f(w(25,30))}, {}, {
start_state(w(25,27)).
}).
#pos(p140, {f(w(9,30))}, {}, {
start_state(w(9,14)).
}).
#pos(p141, {f(w(19,30))}, {}, {
start_state(w(19,14)).
}).
#pos(p142, {f(w(26,30))}, {}, {
start_state(w(26,15)).
}).
#pos(p143, {f(w(2,30))}, {}, {
start_state(w(2,21)).
}).
#pos(p144, {f(w(3,30))}, {}, {
start_state(w(3,3)).
}).
#pos(p145, {f(w(2,30))}, {}, {
start_state(w(2,4)).
}).
#pos(p146, {f(w(17,30))}, {}, {
start_state(w(17,21)).
}).
#pos(p147, {f(w(9,30))}, {}, {
start_state(w(9,27)).
}).
#pos(p148, {f(w(16,30))}, {}, {
start_state(w(16,25)).
}).
#pos(p149, {f(w(6,30))}, {}, {
start_state(w(6,1)).
}).
#pos(p150, {f(w(30,30))}, {}, {
start_state(w(30,19)).
}).
#pos(p151, {f(w(1,30))}, {}, {
start_state(w(1,24)).
}).
#pos(p152, {f(w(5,30))}, {}, {
start_state(w(5,10)).
}).
#pos(p153, {f(w(20,30))}, {}, {
start_state(w(20,15)).
}).
#pos(p154, {f(w(30,30))}, {}, {
start_state(w(30,17)).
}).
#pos(p155, {f(w(26,30))}, {}, {
start_state(w(26,23)).
}).
#pos(p156, {f(w(22,30))}, {}, {
start_state(w(22,29)).
}).
#pos(p157, {f(w(18,30))}, {}, {
start_state(w(18,26)).
}).
#pos(p158, {f(w(7,30))}, {}, {
start_state(w(7,21)).
}).
#pos(p159, {f(w(26,30))}, {}, {
start_state(w(26,20)).
}).
#pos(p160, {f(w(19,30))}, {}, {
start_state(w(19,10)).
}).
#pos(p161, {f(w(10,30))}, {}, {
start_state(w(10,27)).
}).
#pos(p162, {f(w(16,30))}, {}, {
start_state(w(16,9)).
}).
#pos(p163, {f(w(19,30))}, {}, {
start_state(w(19,18)).
}).
#pos(p164, {f(w(21,30))}, {}, {
start_state(w(21,29)).
}).
#pos(p165, {f(w(3,30))}, {}, {
start_state(w(3,5)).
}).
#pos(p166, {f(w(6,30))}, {}, {
start_state(w(6,6)).
}).
#pos(p167, {f(w(19,30))}, {}, {
start_state(w(19,25)).
}).
#pos(p168, {f(w(24,30))}, {}, {
start_state(w(24,29)).
}).
#pos(p169, {f(w(13,30))}, {}, {
start_state(w(13,28)).
}).
#pos(p170, {f(w(25,30))}, {}, {
start_state(w(25,24)).
}).
#pos(p171, {f(w(19,30))}, {}, {
start_state(w(19,11)).
}).
#pos(p172, {f(w(26,30))}, {}, {
start_state(w(26,22)).
}).
#pos(p173, {f(w(4,30))}, {}, {
start_state(w(4,7)).
}).
#pos(p174, {f(w(8,30))}, {}, {
start_state(w(8,24)).
}).
#pos(p175, {f(w(18,30))}, {}, {
start_state(w(18,9)).
}).
#pos(p176, {f(w(7,30))}, {}, {
start_state(w(7,12)).
}).
#pos(p177, {f(w(23,30))}, {}, {
start_state(w(23,26)).
}).
#pos(p178, {f(w(19,30))}, {}, {
start_state(w(19,15)).
}).
#pos(p179, {f(w(14,30))}, {}, {
start_state(w(14,6)).
}).
#pos(p180, {f(w(16,30))}, {}, {
start_state(w(16,29)).
}).
#pos(p181, {f(w(19,30))}, {}, {
start_state(w(19,25)).
}).
#pos(p182, {f(w(1,30))}, {}, {
start_state(w(1,25)).
}).
#pos(p183, {f(w(21,30))}, {}, {
start_state(w(21,14)).
}).
#pos(p184, {f(w(19,30))}, {}, {
start_state(w(19,14)).
}).
#pos(p185, {f(w(21,30))}, {}, {
start_state(w(21,8)).
}).
#pos(p186, {f(w(22,30))}, {}, {
start_state(w(22,17)).
}).
#pos(p187, {f(w(28,30))}, {}, {
start_state(w(28,23)).
}).
#pos(p188, {f(w(6,30))}, {}, {
start_state(w(6,8)).
}).
#pos(p189, {f(w(30,30))}, {}, {
start_state(w(30,13)).
}).
#pos(p190, {f(w(14,30))}, {}, {
start_state(w(14,23)).
}).
#pos(p191, {f(w(20,30))}, {}, {
start_state(w(20,19)).
}).
#pos(p192, {f(w(5,30))}, {}, {
start_state(w(5,22)).
}).
#pos(p193, {f(w(22,30))}, {}, {
start_state(w(22,14)).
}).
#pos(p194, {f(w(14,30))}, {}, {
start_state(w(14,3)).
}).
#pos(p195, {f(w(8,30))}, {}, {
start_state(w(8,18)).
}).
#pos(p196, {f(w(19,30))}, {}, {
start_state(w(19,12)).
}).
#pos(p197, {f(w(23,30))}, {}, {
start_state(w(23,19)).
}).
#pos(p198, {f(w(15,30))}, {}, {
start_state(w(15,5)).
}).
#pos(p199, {f(w(28,30))}, {}, {
start_state(w(28,14)).
}).
#pos(p200, {f(w(13,30))}, {}, {
start_state(w(13,28)).
}).
#pos(p201, {f(w(10,30))}, {}, {
start_state(w(10,9)).
}).
#pos(p202, {f(w(1,30))}, {}, {
start_state(w(1,27)).
}).
#pos(p203, {f(w(5,30))}, {}, {
start_state(w(5,6)).
}).
#pos(p204, {f(w(25,30))}, {}, {
start_state(w(25,10)).
}).
#pos(p205, {f(w(22,30))}, {}, {
start_state(w(22,29)).
}).
#pos(p206, {f(w(10,30))}, {}, {
start_state(w(10,12)).
}).
#pos(p207, {f(w(23,30))}, {}, {
start_state(w(23,6)).
}).
#pos(p208, {f(w(18,30))}, {}, {
start_state(w(18,11)).
}).
#pos(p209, {f(w(21,30))}, {}, {
start_state(w(21,3)).
}).
#pos(p210, {f(w(23,30))}, {}, {
start_state(w(23,27)).
}).
#pos(p211, {f(w(11,30))}, {}, {
start_state(w(11,14)).
}).
#pos(p212, {f(w(30,30))}, {}, {
start_state(w(30,7)).
}).
#pos(p213, {f(w(11,30))}, {}, {
start_state(w(11,14)).
}).
#pos(p214, {f(w(15,30))}, {}, {
start_state(w(15,1)).
}).
#pos(p215, {f(w(17,30))}, {}, {
start_state(w(17,5)).
}).
#pos(p216, {f(w(25,30))}, {}, {
start_state(w(25,10)).
}).
#pos(p217, {f(w(26,30))}, {}, {
start_state(w(26,13)).
}).
#pos(p218, {f(w(21,30))}, {}, {
start_state(w(21,4)).
}).
#pos(p219, {f(w(12,30))}, {}, {
start_state(w(12,6)).
}).
#pos(p220, {f(w(17,30))}, {}, {
start_state(w(17,9)).
}).
#pos(p221, {f(w(4,30))}, {}, {
start_state(w(4,4)).
}).
#pos(p222, {f(w(4,30))}, {}, {
start_state(w(4,14)).
}).
#pos(p223, {f(w(18,30))}, {}, {
start_state(w(18,29)).
}).
#pos(p224, {f(w(22,30))}, {}, {
start_state(w(22,5)).
}).
#pos(p225, {f(w(3,30))}, {}, {
start_state(w(3,15)).
}).
#pos(p226, {f(w(3,30))}, {}, {
start_state(w(3,24)).
}).
#pos(p227, {f(w(30,30))}, {}, {
start_state(w(30,17)).
}).
#pos(p228, {f(w(17,30))}, {}, {
start_state(w(17,5)).
}).
#pos(p229, {f(w(11,30))}, {}, {
start_state(w(11,9)).
}).
#pos(p230, {f(w(19,30))}, {}, {
start_state(w(19,19)).
}).
#pos(p231, {f(w(20,30))}, {}, {
start_state(w(20,22)).
}).
#pos(p232, {f(w(13,30))}, {}, {
start_state(w(13,22)).
}).
#pos(p233, {f(w(4,30))}, {}, {
start_state(w(4,9)).
}).
#pos(p234, {f(w(9,30))}, {}, {
start_state(w(9,24)).
}).
#pos(p235, {f(w(17,30))}, {}, {
start_state(w(17,25)).
}).
#pos(p236, {f(w(6,30))}, {}, {
start_state(w(6,6)).
}).
#pos(p237, {f(w(8,30))}, {}, {
start_state(w(8,18)).
}).
#pos(p238, {f(w(23,30))}, {}, {
start_state(w(23,4)).
}).
#pos(p239, {f(w(7,30))}, {}, {
start_state(w(7,28)).
}).
#pos(p240, {f(w(14,30))}, {}, {
start_state(w(14,13)).
}).
#pos(p241, {f(w(26,30))}, {}, {
start_state(w(26,4)).
}).
#pos(p242, {f(w(25,30))}, {}, {
start_state(w(25,23)).
}).
#pos(p243, {f(w(4,30))}, {}, {
start_state(w(4,29)).
}).
#pos(p244, {f(w(17,30))}, {}, {
start_state(w(17,19)).
}).
#pos(p245, {f(w(9,30))}, {}, {
start_state(w(9,9)).
}).
#pos(p246, {f(w(8,30))}, {}, {
start_state(w(8,15)).
}).
#pos(p247, {f(w(23,30))}, {}, {
start_state(w(23,24)).
}).
#pos(p248, {f(w(6,30))}, {}, {
start_state(w(6,3)).
}).
#pos(p249, {f(w(14,30))}, {}, {
start_state(w(14,17)).
}).
#pos(p250, {f(w(10,30))}, {}, {
start_state(w(10,6)).
}).
#pos(p251, {f(w(4,30))}, {}, {
start_state(w(4,25)).
}).
#pos(p252, {f(w(19,30))}, {}, {
start_state(w(19,5)).
}).
#pos(p253, {f(w(18,30))}, {}, {
start_state(w(18,3)).
}).
#pos(p254, {f(w(18,30))}, {}, {
start_state(w(18,28)).
}).
#pos(p255, {f(w(8,30))}, {}, {
start_state(w(8,25)).
}).
#pos(p256, {f(w(15,30))}, {}, {
start_state(w(15,4)).
}).
#pos(p257, {f(w(4,30))}, {}, {
start_state(w(4,18)).
}).
#pos(p258, {f(w(5,30))}, {}, {
start_state(w(5,29)).
}).
#pos(p259, {f(w(8,30))}, {}, {
start_state(w(8,27)).
}).
#pos(p260, {f(w(11,30))}, {}, {
start_state(w(11,8)).
}).
#pos(p261, {f(w(17,30))}, {}, {
start_state(w(17,18)).
}).
#pos(p262, {f(w(11,30))}, {}, {
start_state(w(11,1)).
}).
#pos(p263, {f(w(23,30))}, {}, {
start_state(w(23,5)).
}).
#pos(p264, {f(w(14,30))}, {}, {
start_state(w(14,24)).
}).
#pos(p265, {f(w(14,30))}, {}, {
start_state(w(14,4)).
}).
#pos(p266, {f(w(19,30))}, {}, {
start_state(w(19,10)).
}).
#pos(p267, {f(w(27,30))}, {}, {
start_state(w(27,10)).
}).
#pos(p268, {f(w(2,30))}, {}, {
start_state(w(2,21)).
}).
#pos(p269, {f(w(3,30))}, {}, {
start_state(w(3,28)).
}).
#pos(p270, {f(w(21,30))}, {}, {
start_state(w(21,6)).
}).
#pos(p271, {f(w(30,30))}, {}, {
start_state(w(30,24)).
}).
#pos(p272, {f(w(16,30))}, {}, {
start_state(w(16,11)).
}).
#pos(p273, {f(w(13,30))}, {}, {
start_state(w(13,15)).
}).
#pos(p274, {f(w(22,30))}, {}, {
start_state(w(22,12)).
}).
#pos(p275, {f(w(29,30))}, {}, {
start_state(w(29,28)).
}).
#pos(p276, {f(w(28,30))}, {}, {
start_state(w(28,18)).
}).
#pos(p277, {f(w(12,30))}, {}, {
start_state(w(12,7)).
}).
#pos(p278, {f(w(10,30))}, {}, {
start_state(w(10,6)).
}).
#pos(p279, {f(w(8,30))}, {}, {
start_state(w(8,23)).
}).
#pos(p280, {f(w(3,30))}, {}, {
start_state(w(3,17)).
}).
#pos(p281, {f(w(26,30))}, {}, {
start_state(w(26,8)).
}).
#pos(p282, {f(w(1,30))}, {}, {
start_state(w(1,21)).
}).
#pos(p283, {f(w(5,30))}, {}, {
start_state(w(5,1)).
}).
#pos(p284, {f(w(3,30))}, {}, {
start_state(w(3,4)).
}).
#pos(p285, {f(w(29,30))}, {}, {
start_state(w(29,15)).
}).
#pos(p286, {f(w(3,30))}, {}, {
start_state(w(3,1)).
}).
#pos(p287, {f(w(1,30))}, {}, {
start_state(w(1,1)).
}).
#pos(p288, {f(w(5,30))}, {}, {
start_state(w(5,27)).
}).
#pos(p289, {f(w(12,30))}, {}, {
start_state(w(12,14)).
}).
#pos(p290, {f(w(15,30))}, {}, {
start_state(w(15,4)).
}).
#pos(p291, {f(w(24,30))}, {}, {
start_state(w(24,24)).
}).
#pos(p292, {f(w(20,30))}, {}, {
start_state(w(20,5)).
}).
#pos(p293, {f(w(21,30))}, {}, {
start_state(w(21,3)).
}).
#pos(p294, {f(w(22,30))}, {}, {
start_state(w(22,13)).
}).
#pos(p295, {f(w(16,30))}, {}, {
start_state(w(16,28)).
}).
#pos(p296, {f(w(7,30))}, {}, {
start_state(w(7,26)).
}).
#pos(p297, {f(w(16,30))}, {}, {
start_state(w(16,25)).
}).
#pos(p298, {f(w(2,30))}, {}, {
start_state(w(2,17)).
}).
#pos(p299, {f(w(12,30))}, {}, {
start_state(w(12,25)).
}).
#pos(n0, {}, {f(w(5,13))}, {
start_state(w(21,4)).
}).
#pos(n1, {}, {f(w(26,19))}, {
start_state(w(7,15)).
}).
#pos(n2, {}, {f(w(22,5))}, {
start_state(w(15,22)).
}).
#pos(n3, {}, {f(w(30,26))}, {
start_state(w(3,24)).
}).
#pos(n4, {}, {f(w(7,20))}, {
start_state(w(4,16)).
}).
#pos(n5, {}, {f(w(23,30))}, {
start_state(w(5,7)).
}).
#pos(n6, {}, {f(w(25,6))}, {
start_state(w(2,6)).
}).
#pos(n7, {}, {f(w(23,10))}, {
start_state(w(23,2)).
}).
#pos(n8, {}, {f(w(17,17))}, {
start_state(w(20,23)).
}).
#pos(n9, {}, {f(w(23,15))}, {
start_state(w(9,11)).
}).
#pos(n10, {}, {f(w(27,12))}, {
start_state(w(2,1)).
}).
#pos(n11, {}, {f(w(14,10))}, {
start_state(w(9,3)).
}).
#pos(n12, {}, {f(w(11,30))}, {
start_state(w(3,28)).
}).
#pos(n13, {}, {f(w(16,9))}, {
start_state(w(21,13)).
}).
#pos(n14, {}, {f(w(11,30))}, {
start_state(w(21,24)).
}).
#pos(n15, {}, {f(w(26,3))}, {
start_state(w(10,3)).
}).
#pos(n16, {}, {f(w(10,5))}, {
start_state(w(25,9)).
}).
#pos(n17, {}, {f(w(14,30))}, {
start_state(w(23,17)).
}).
#pos(n18, {}, {f(w(12,30))}, {
start_state(w(5,25)).
}).
#pos(n19, {}, {f(w(17,30))}, {
start_state(w(18,30)).
}).
#pos(n20, {}, {f(w(8,20))}, {
start_state(w(17,24)).
}).
#pos(n21, {}, {f(w(20,15))}, {
start_state(w(22,25)).
}).
#pos(n22, {}, {f(w(8,28))}, {
start_state(w(24,18)).
}).
#pos(n23, {}, {f(w(29,16))}, {
start_state(w(17,27)).
}).
#pos(n24, {}, {f(w(1,11))}, {
start_state(w(29,15)).
}).
#pos(n25, {}, {f(w(5,30))}, {
start_state(w(6,25)).
}).
#pos(n26, {}, {f(w(7,30))}, {
start_state(w(2,27)).
}).
#pos(n27, {}, {f(w(8,30))}, {
start_state(w(5,7)).
}).
#pos(n28, {}, {f(w(1,30))}, {
start_state(w(6,11)).
}).
#pos(n29, {}, {f(w(23,7))}, {
start_state(w(8,3)).
}).
#pos(n30, {}, {f(w(20,11))}, {
start_state(w(4,21)).
}).
#pos(n31, {}, {f(w(15,6))}, {
start_state(w(8,24)).
}).
#pos(n32, {}, {f(w(25,9))}, {
start_state(w(29,15)).
}).
#pos(n33, {}, {f(w(28,17))}, {
start_state(w(4,24)).
}).
#pos(n34, {}, {f(w(2,30))}, {
start_state(w(11,30)).
}).
#pos(n35, {}, {f(w(14,30))}, {
start_state(w(22,10)).
}).
#pos(n36, {}, {f(w(16,6))}, {
start_state(w(14,5)).
}).
#pos(n37, {}, {f(w(17,1))}, {
start_state(w(17,11)).
}).
#pos(n38, {}, {f(w(26,20))}, {
start_state(w(27,8)).
}).
#pos(n39, {}, {f(w(3,30))}, {
start_state(w(22,29)).
}).
#pos(n40, {}, {f(w(12,9))}, {
start_state(w(6,23)).
}).
#pos(n41, {}, {f(w(14,10))}, {
start_state(w(23,27)).
}).
#pos(n42, {}, {f(w(26,23))}, {
start_state(w(17,1)).
}).
#pos(n43, {}, {f(w(17,11))}, {
start_state(w(15,5)).
}).
#pos(n44, {}, {f(w(7,27))}, {
start_state(w(25,16)).
}).
#pos(n45, {}, {f(w(29,10))}, {
start_state(w(20,18)).
}).
#pos(n46, {}, {f(w(27,17))}, {
start_state(w(4,21)).
}).
#pos(n47, {}, {f(w(4,23))}, {
start_state(w(18,18)).
}).
#pos(n48, {}, {f(w(11,8))}, {
start_state(w(22,3)).
}).
#pos(n49, {}, {f(w(18,21))}, {
start_state(w(5,6)).
}).
#pos(n50, {}, {f(w(15,14))}, {
start_state(w(25,2)).
}).
#pos(n51, {}, {f(w(13,24))}, {
start_state(w(27,9)).
}).
#pos(n52, {}, {f(w(1,1))}, {
start_state(w(24,12)).
}).
#pos(n53, {}, {f(w(27,20))}, {
start_state(w(3,27)).
}).
#pos(n54, {}, {f(w(6,5))}, {
start_state(w(21,18)).
}).
#pos(n55, {}, {f(w(24,21))}, {
start_state(w(19,16)).
}).
#pos(n56, {}, {f(w(5,15))}, {
start_state(w(26,8)).
}).
#pos(n57, {}, {f(w(4,22))}, {
start_state(w(22,7)).
}).
#pos(n58, {}, {f(w(29,30))}, {
start_state(w(22,7)).
}).
#pos(n59, {}, {f(w(20,25))}, {
start_state(w(3,6)).
}).
#pos(n60, {}, {f(w(7,23))}, {
start_state(w(9,15)).
}).
#pos(n61, {}, {f(w(20,30))}, {
start_state(w(23,16)).
}).
#pos(n62, {}, {f(w(21,30))}, {
start_state(w(13,21)).
}).
#pos(n63, {}, {f(w(22,3))}, {
start_state(w(28,10)).
}).
#pos(n64, {}, {f(w(7,7))}, {
start_state(w(4,16)).
}).
#pos(n65, {}, {f(w(30,5))}, {
start_state(w(17,2)).
}).
#pos(n66, {}, {f(w(5,30))}, {
start_state(w(16,4)).
}).
#pos(n67, {}, {f(w(6,30))}, {
start_state(w(8,23)).
}).
#pos(n68, {}, {f(w(1,1))}, {
start_state(w(21,27)).
}).
#pos(n69, {}, {f(w(3,4))}, {
start_state(w(15,27)).
}).
#pos(n70, {}, {f(w(25,4))}, {
start_state(w(26,14)).
}).
#pos(n71, {}, {f(w(10,30))}, {
start_state(w(15,19)).
}).
#pos(n72, {}, {f(w(1,4))}, {
start_state(w(8,27)).
}).
#pos(n73, {}, {f(w(20,8))}, {
start_state(w(13,7)).
}).
#pos(n74, {}, {f(w(22,28))}, {
start_state(w(20,7)).
}).
#pos(n75, {}, {f(w(8,13))}, {
start_state(w(3,22)).
}).
#pos(n76, {}, {f(w(9,6))}, {
start_state(w(20,16)).
}).
#pos(n77, {}, {f(w(4,4))}, {
start_state(w(27,22)).
}).
#pos(n78, {}, {f(w(9,13))}, {
start_state(w(7,24)).
}).
#pos(n79, {}, {f(w(2,13))}, {
start_state(w(20,22)).
}).
#pos(n80, {}, {f(w(30,24))}, {
start_state(w(16,24)).
}).
#pos(n81, {}, {f(w(23,29))}, {
start_state(w(24,7)).
}).
#pos(n82, {}, {f(w(22,2))}, {
start_state(w(8,8)).
}).
#pos(n83, {}, {f(w(20,30))}, {
start_state(w(13,25)).
}).
#pos(n84, {}, {f(w(17,30))}, {
start_state(w(6,12)).
}).
#pos(n85, {}, {f(w(18,22))}, {
start_state(w(27,5)).
}).
#pos(n86, {}, {f(w(12,25))}, {
start_state(w(27,30)).
}).
#pos(n87, {}, {f(w(22,30))}, {
start_state(w(7,10)).
}).
#pos(n88, {}, {f(w(30,12))}, {
start_state(w(10,29)).
}).
#pos(n89, {}, {f(w(2,23))}, {
start_state(w(5,9)).
}).
#pos(n90, {}, {f(w(29,9))}, {
start_state(w(29,7)).
}).
#pos(n91, {}, {f(w(9,30))}, {
start_state(w(14,9)).
}).
#pos(n92, {}, {f(w(21,19))}, {
start_state(w(30,18)).
}).
#pos(n93, {}, {f(w(13,27))}, {
start_state(w(4,11)).
}).
#pos(n94, {}, {f(w(12,30))}, {
start_state(w(22,18)).
}).
#pos(n95, {}, {f(w(25,30))}, {
start_state(w(27,18)).
}).
#pos(n96, {}, {f(w(8,25))}, {
start_state(w(16,26)).
}).
#pos(n97, {}, {f(w(17,30))}, {
start_state(w(13,3)).
}).
#pos(n98, {}, {f(w(25,29))}, {
start_state(w(14,30)).
}).
#pos(n99, {}, {f(w(2,17))}, {
start_state(w(23,25)).
}).
#pos(n100, {}, {f(w(9,3))}, {
start_state(w(4,6)).
}).
#pos(n101, {}, {f(w(13,30))}, {
start_state(w(7,17)).
}).
#pos(n102, {}, {f(w(4,24))}, {
start_state(w(11,19)).
}).
#pos(n103, {}, {f(w(4,1))}, {
start_state(w(18,24)).
}).
#pos(n104, {}, {f(w(14,28))}, {
start_state(w(10,22)).
}).
#pos(n105, {}, {f(w(9,11))}, {
start_state(w(19,5)).
}).
#pos(n106, {}, {f(w(3,14))}, {
start_state(w(12,15)).
}).
#pos(n107, {}, {f(w(25,2))}, {
start_state(w(28,15)).
}).
#pos(n108, {}, {f(w(22,30))}, {
start_state(w(14,6)).
}).
#pos(n109, {}, {f(w(3,23))}, {
start_state(w(7,27)).
}).
#pos(n110, {}, {f(w(25,13))}, {
start_state(w(6,7)).
}).
#pos(n111, {}, {f(w(14,8))}, {
start_state(w(9,24)).
}).
#pos(n112, {}, {f(w(3,15))}, {
start_state(w(17,23)).
}).
#pos(n113, {}, {f(w(15,29))}, {
start_state(w(18,18)).
}).
#pos(n114, {}, {f(w(21,20))}, {
start_state(w(1,8)).
}).
#pos(n115, {}, {f(w(29,1))}, {
start_state(w(1,26)).
}).
#pos(n116, {}, {f(w(15,30))}, {
start_state(w(11,11)).
}).
#pos(n117, {}, {f(w(30,13))}, {
start_state(w(18,11)).
}).
#pos(n118, {}, {f(w(22,27))}, {
start_state(w(4,5)).
}).
#pos(n119, {}, {f(w(19,11))}, {
start_state(w(20,17)).
}).
#pos(n120, {}, {f(w(5,30))}, {
start_state(w(1,8)).
}).
#pos(n121, {}, {f(w(29,27))}, {
start_state(w(20,18)).
}).
#pos(n122, {}, {f(w(15,12))}, {
start_state(w(27,26)).
}).
#pos(n123, {}, {f(w(28,24))}, {
start_state(w(16,11)).
}).
#pos(n124, {}, {f(w(4,21))}, {
start_state(w(27,30)).
}).
#pos(n125, {}, {f(w(18,20))}, {
start_state(w(19,10)).
}).
#pos(n126, {}, {f(w(14,13))}, {
start_state(w(5,14)).
}).
#pos(n127, {}, {f(w(21,16))}, {
start_state(w(11,2)).
}).
#pos(n128, {}, {f(w(22,20))}, {
start_state(w(7,11)).
}).
#pos(n129, {}, {f(w(15,12))}, {
start_state(w(6,28)).
}).
#pos(n130, {}, {f(w(3,4))}, {
start_state(w(23,5)).
}).
#pos(n131, {}, {f(w(1,1))}, {
start_state(w(5,20)).
}).
#pos(n132, {}, {f(w(29,2))}, {
start_state(w(17,25)).
}).
#pos(n133, {}, {f(w(9,12))}, {
start_state(w(3,30)).
}).
#pos(n134, {}, {f(w(15,25))}, {
start_state(w(27,8)).
}).
#pos(n135, {}, {f(w(7,12))}, {
start_state(w(14,11)).
}).
#pos(n136, {}, {f(w(16,30))}, {
start_state(w(10,6)).
}).
#pos(n137, {}, {f(w(20,24))}, {
start_state(w(21,14)).
}).
#pos(n138, {}, {f(w(22,26))}, {
start_state(w(5,30)).
}).
#pos(n139, {}, {f(w(27,25))}, {
start_state(w(4,18)).
}).
#pos(n140, {}, {f(w(6,15))}, {
start_state(w(15,3)).
}).
#pos(n141, {}, {f(w(3,9))}, {
start_state(w(11,15)).
}).
#pos(n142, {}, {f(w(15,14))}, {
start_state(w(11,12)).
}).
#pos(n143, {}, {f(w(7,15))}, {
start_state(w(11,2)).
}).
#pos(n144, {}, {f(w(6,28))}, {
start_state(w(4,3)).
}).
#pos(n145, {}, {f(w(3,20))}, {
start_state(w(23,30)).
}).
#pos(n146, {}, {f(w(20,18))}, {
start_state(w(4,15)).
}).
#pos(n147, {}, {f(w(24,14))}, {
start_state(w(23,6)).
}).
#pos(n148, {}, {f(w(27,26))}, {
start_state(w(23,5)).
}).
#pos(n149, {}, {f(w(14,8))}, {
start_state(w(26,13)).
}).
#pos(n150, {}, {f(w(5,30))}, {
start_state(w(19,22)).
}).
#pos(n151, {}, {f(w(27,5))}, {
start_state(w(30,19)).
}).
#pos(n152, {}, {f(w(10,30))}, {
start_state(w(14,18)).
}).
#pos(n153, {}, {f(w(9,28))}, {
start_state(w(22,29)).
}).
#pos(n154, {}, {f(w(30,30))}, {
start_state(w(21,24)).
}).
#pos(n155, {}, {f(w(15,13))}, {
start_state(w(11,24)).
}).
#pos(n156, {}, {f(w(17,15))}, {
start_state(w(23,21)).
}).
#pos(n157, {}, {f(w(20,12))}, {
start_state(w(23,14)).
}).
#pos(n158, {}, {f(w(27,18))}, {
start_state(w(26,17)).
}).
#pos(n159, {}, {f(w(24,18))}, {
start_state(w(22,22)).
}).
#pos(n160, {}, {f(w(6,7))}, {
start_state(w(26,10)).
}).
#pos(n161, {}, {f(w(24,30))}, {
start_state(w(27,16)).
}).
#pos(n162, {}, {f(w(28,13))}, {
start_state(w(27,4)).
}).
#pos(n163, {}, {f(w(12,30))}, {
start_state(w(18,12)).
}).
#pos(n164, {}, {f(w(16,23))}, {
start_state(w(17,24)).
}).
#pos(n165, {}, {f(w(17,30))}, {
start_state(w(18,29)).
}).
#pos(n166, {}, {f(w(18,25))}, {
start_state(w(20,1)).
}).
#pos(n167, {}, {f(w(23,28))}, {
start_state(w(5,15)).
}).
#pos(n168, {}, {f(w(23,7))}, {
start_state(w(13,21)).
}).
#pos(n169, {}, {f(w(22,22))}, {
start_state(w(11,14)).
}).
#pos(n170, {}, {f(w(29,30))}, {
start_state(w(22,19)).
}).
#pos(n171, {}, {f(w(8,16))}, {
start_state(w(30,2)).
}).
#pos(n172, {}, {f(w(24,30))}, {
start_state(w(15,20)).
}).
#pos(n173, {}, {f(w(13,17))}, {
start_state(w(27,19)).
}).
#pos(n174, {}, {f(w(1,25))}, {
start_state(w(5,20)).
}).
#pos(n175, {}, {f(w(12,26))}, {
start_state(w(17,6)).
}).
#pos(n176, {}, {f(w(10,30))}, {
start_state(w(1,26)).
}).
#pos(n177, {}, {f(w(20,12))}, {
start_state(w(1,26)).
}).
#pos(n178, {}, {f(w(22,10))}, {
start_state(w(6,23)).
}).
#pos(n179, {}, {f(w(5,30))}, {
start_state(w(7,8)).
}).
#pos(n180, {}, {f(w(12,11))}, {
start_state(w(25,16)).
}).
#pos(n181, {}, {f(w(2,4))}, {
start_state(w(23,1)).
}).
#pos(n182, {}, {f(w(21,22))}, {
start_state(w(30,28)).
}).
#pos(n183, {}, {f(w(23,30))}, {
start_state(w(2,2)).
}).
#pos(n184, {}, {f(w(19,30))}, {
start_state(w(20,3)).
}).
#pos(n185, {}, {f(w(19,30))}, {
start_state(w(26,2)).
}).
#pos(n186, {}, {f(w(19,29))}, {
start_state(w(9,19)).
}).
#pos(n187, {}, {f(w(19,4))}, {
start_state(w(11,21)).
}).
#pos(n188, {}, {f(w(26,9))}, {
start_state(w(10,30)).
}).
#pos(n189, {}, {f(w(24,15))}, {
start_state(w(16,21)).
}).
#pos(n190, {}, {f(w(13,30))}, {
start_state(w(10,2)).
}).
#pos(n191, {}, {f(w(21,13))}, {
start_state(w(1,30)).
}).
#pos(n192, {}, {f(w(13,30))}, {
start_state(w(20,4)).
}).
#pos(n193, {}, {f(w(6,30))}, {
start_state(w(23,8)).
}).
#pos(n194, {}, {f(w(13,12))}, {
start_state(w(2,4)).
}).
#pos(n195, {}, {f(w(5,7))}, {
start_state(w(10,14)).
}).
#pos(n196, {}, {f(w(4,3))}, {
start_state(w(12,9)).
}).
#pos(n197, {}, {f(w(19,20))}, {
start_state(w(30,24)).
}).
#pos(n198, {}, {f(w(28,11))}, {
start_state(w(13,23)).
}).
#pos(n199, {}, {f(w(25,30))}, {
start_state(w(2,6)).
}).
#pos(n200, {}, {f(w(7,4))}, {
start_state(w(3,8)).
}).
#pos(n201, {}, {f(w(3,8))}, {
start_state(w(11,10)).
}).
#pos(n202, {}, {f(w(6,2))}, {
start_state(w(8,28)).
}).
#pos(n203, {}, {f(w(29,16))}, {
start_state(w(30,16)).
}).
#pos(n204, {}, {f(w(30,26))}, {
start_state(w(22,5)).
}).
#pos(n205, {}, {f(w(8,2))}, {
start_state(w(16,19)).
}).
#pos(n206, {}, {f(w(7,10))}, {
start_state(w(2,1)).
}).
#pos(n207, {}, {f(w(9,21))}, {
start_state(w(13,2)).
}).
#pos(n208, {}, {f(w(29,27))}, {
start_state(w(2,23)).
}).
#pos(n209, {}, {f(w(25,7))}, {
start_state(w(5,13)).
}).
#pos(n210, {}, {f(w(22,30))}, {
start_state(w(29,26)).
}).
#pos(n211, {}, {f(w(27,30))}, {
start_state(w(3,14)).
}).
#pos(n212, {}, {f(w(5,9))}, {
start_state(w(30,3)).
}).
#pos(n213, {}, {f(w(14,27))}, {
start_state(w(11,18)).
}).
#pos(n214, {}, {f(w(28,8))}, {
start_state(w(22,26)).
}).
#pos(n215, {}, {f(w(19,30))}, {
start_state(w(7,10)).
}).
#pos(n216, {}, {f(w(25,5))}, {
start_state(w(1,10)).
}).
#pos(n217, {}, {f(w(3,11))}, {
start_state(w(16,7)).
}).
#pos(n218, {}, {f(w(14,30))}, {
start_state(w(18,11)).
}).
#pos(n219, {}, {f(w(1,16))}, {
start_state(w(10,26)).
}).
#pos(n220, {}, {f(w(3,30))}, {
start_state(w(23,30)).
}).
#pos(n221, {}, {f(w(24,29))}, {
start_state(w(6,5)).
}).
#pos(n222, {}, {f(w(7,30))}, {
start_state(w(20,9)).
}).
#pos(n223, {}, {f(w(11,9))}, {
start_state(w(26,18)).
}).
#pos(n224, {}, {f(w(7,30))}, {
start_state(w(30,26)).
}).
#pos(n225, {}, {f(w(27,28))}, {
start_state(w(28,19)).
}).
#pos(n226, {}, {f(w(21,16))}, {
start_state(w(25,30)).
}).
#pos(n227, {}, {f(w(26,30))}, {
start_state(w(3,3)).
}).
#pos(n228, {}, {f(w(20,9))}, {
start_state(w(3,16)).
}).
#pos(n229, {}, {f(w(5,19))}, {
start_state(w(17,2)).
}).
#pos(n230, {}, {f(w(14,30))}, {
start_state(w(24,13)).
}).
#pos(n231, {}, {f(w(28,12))}, {
start_state(w(30,9)).
}).
#pos(n232, {}, {f(w(17,4))}, {
start_state(w(17,29)).
}).
#pos(n233, {}, {f(w(18,20))}, {
start_state(w(18,6)).
}).
#pos(n234, {}, {f(w(2,17))}, {
start_state(w(6,4)).
}).
#pos(n235, {}, {f(w(5,30))}, {
start_state(w(20,8)).
}).
#pos(n236, {}, {f(w(7,4))}, {
start_state(w(4,3)).
}).
#pos(n237, {}, {f(w(2,27))}, {
start_state(w(4,17)).
}).
#pos(n238, {}, {f(w(21,30))}, {
start_state(w(18,19)).
}).
#pos(n239, {}, {f(w(13,27))}, {
start_state(w(21,23)).
}).
#pos(n240, {}, {f(w(15,17))}, {
start_state(w(10,15)).
}).
#pos(n241, {}, {f(w(26,30))}, {
start_state(w(3,29)).
}).
#pos(n242, {}, {f(w(17,7))}, {
start_state(w(11,26)).
}).
#pos(n243, {}, {f(w(7,30))}, {
start_state(w(19,1)).
}).
#pos(n244, {}, {f(w(27,21))}, {
start_state(w(19,24)).
}).
#pos(n245, {}, {f(w(20,27))}, {
start_state(w(18,13)).
}).
#pos(n246, {}, {f(w(1,17))}, {
start_state(w(8,10)).
}).
#pos(n247, {}, {f(w(7,26))}, {
start_state(w(30,25)).
}).
#pos(n248, {}, {f(w(24,10))}, {
start_state(w(16,9)).
}).
#pos(n249, {}, {f(w(2,24))}, {
start_state(w(4,9)).
}).
#pos(n250, {}, {f(w(4,27))}, {
start_state(w(19,8)).
}).
#pos(n251, {}, {f(w(13,21))}, {
start_state(w(16,20)).
}).
#pos(n252, {}, {f(w(26,12))}, {
start_state(w(23,21)).
}).
#pos(n253, {}, {f(w(27,30))}, {
start_state(w(9,30)).
}).
#pos(n254, {}, {f(w(29,30))}, {
start_state(w(8,9)).
}).
#pos(n255, {}, {f(w(2,20))}, {
start_state(w(3,26)).
}).
#pos(n256, {}, {f(w(26,30))}, {
start_state(w(9,15)).
}).
#pos(n257, {}, {f(w(30,11))}, {
start_state(w(29,27)).
}).
#pos(n258, {}, {f(w(16,28))}, {
start_state(w(23,23)).
}).
#pos(n259, {}, {f(w(5,14))}, {
start_state(w(30,25)).
}).
#pos(n260, {}, {f(w(20,30))}, {
start_state(w(23,28)).
}).
#pos(n261, {}, {f(w(27,8))}, {
start_state(w(6,14)).
}).
#pos(n262, {}, {f(w(3,7))}, {
start_state(w(21,11)).
}).
#pos(n263, {}, {f(w(26,26))}, {
start_state(w(28,6)).
}).
#pos(n264, {}, {f(w(3,12))}, {
start_state(w(8,29)).
}).
#pos(n265, {}, {f(w(30,25))}, {
start_state(w(27,14)).
}).
#pos(n266, {}, {f(w(24,8))}, {
start_state(w(9,25)).
}).
#pos(n267, {}, {f(w(20,21))}, {
start_state(w(10,14)).
}).
#pos(n268, {}, {f(w(7,30))}, {
start_state(w(20,20)).
}).
#pos(n269, {}, {f(w(17,16))}, {
start_state(w(13,6)).
}).
#pos(n270, {}, {f(w(3,28))}, {
start_state(w(30,12)).
}).
#pos(n271, {}, {f(w(21,15))}, {
start_state(w(21,19)).
}).
#pos(n272, {}, {f(w(1,12))}, {
start_state(w(9,25)).
}).
#pos(n273, {}, {f(w(25,30))}, {
start_state(w(23,22)).
}).
#pos(n274, {}, {f(w(15,10))}, {
start_state(w(24,4)).
}).
#pos(n275, {}, {f(w(17,14))}, {
start_state(w(26,2)).
}).
#pos(n276, {}, {f(w(27,26))}, {
start_state(w(2,28)).
}).
#pos(n277, {}, {f(w(25,22))}, {
start_state(w(23,20)).
}).
#pos(n278, {}, {f(w(25,30))}, {
start_state(w(7,23)).
}).
#pos(n279, {}, {f(w(23,26))}, {
start_state(w(25,8)).
}).
#pos(n280, {}, {f(w(24,25))}, {
start_state(w(11,12)).
}).
#pos(n281, {}, {f(w(28,6))}, {
start_state(w(7,23)).
}).
#pos(n282, {}, {f(w(25,30))}, {
start_state(w(9,6)).
}).
#pos(n283, {}, {f(w(8,30))}, {
start_state(w(30,18)).
}).
#pos(n284, {}, {f(w(1,18))}, {
start_state(w(15,26)).
}).
#pos(n285, {}, {f(w(26,30))}, {
start_state(w(1,23)).
}).
#pos(n286, {}, {f(w(5,27))}, {
start_state(w(12,8)).
}).
#pos(n287, {}, {f(w(15,30))}, {
start_state(w(16,23)).
}).
#pos(n288, {}, {f(w(10,6))}, {
start_state(w(4,1)).
}).
#pos(n289, {}, {f(w(27,18))}, {
start_state(w(5,14)).
}).
#pos(n290, {}, {f(w(23,29))}, {
start_state(w(15,13)).
}).
#pos(n291, {}, {f(w(8,12))}, {
start_state(w(4,26)).
}).
#pos(n292, {}, {f(w(23,22))}, {
start_state(w(27,15)).
}).
#pos(n293, {}, {f(w(9,30))}, {
start_state(w(5,3)).
}).
#pos(n294, {}, {f(w(24,15))}, {
start_state(w(30,8)).
}).
#pos(n295, {}, {f(w(28,12))}, {
start_state(w(28,7)).
}).
#pos(n296, {}, {f(w(26,30))}, {
start_state(w(17,8)).
}).
#pos(n297, {}, {f(w(13,19))}, {
start_state(w(4,4)).
}).
#pos(n298, {}, {f(w(13,15))}, {
start_state(w(29,12)).
}).
#pos(n299, {}, {f(w(26,30))}, {
start_state(w(28,18)).
}).
