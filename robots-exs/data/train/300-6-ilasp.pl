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
start_state(w(11,24)).
}).
#pos(p1, {f(w(29,30))}, {}, {
start_state(w(29,26)).
}).
#pos(p2, {f(w(15,30))}, {}, {
start_state(w(15,10)).
}).
#pos(p3, {f(w(29,30))}, {}, {
start_state(w(29,19)).
}).
#pos(p4, {f(w(21,30))}, {}, {
start_state(w(21,28)).
}).
#pos(p5, {f(w(6,30))}, {}, {
start_state(w(6,22)).
}).
#pos(p6, {f(w(1,30))}, {}, {
start_state(w(1,19)).
}).
#pos(p7, {f(w(7,30))}, {}, {
start_state(w(7,10)).
}).
#pos(p8, {f(w(20,30))}, {}, {
start_state(w(20,20)).
}).
#pos(p9, {f(w(21,30))}, {}, {
start_state(w(21,25)).
}).
#pos(p10, {f(w(14,30))}, {}, {
start_state(w(14,27)).
}).
#pos(p11, {f(w(12,30))}, {}, {
start_state(w(12,12)).
}).
#pos(p12, {f(w(15,30))}, {}, {
start_state(w(15,16)).
}).
#pos(p13, {f(w(6,30))}, {}, {
start_state(w(6,6)).
}).
#pos(p14, {f(w(25,30))}, {}, {
start_state(w(25,27)).
}).
#pos(p15, {f(w(25,30))}, {}, {
start_state(w(25,12)).
}).
#pos(p16, {f(w(16,30))}, {}, {
start_state(w(16,5)).
}).
#pos(p17, {f(w(26,30))}, {}, {
start_state(w(26,28)).
}).
#pos(p18, {f(w(25,30))}, {}, {
start_state(w(25,4)).
}).
#pos(p19, {f(w(7,30))}, {}, {
start_state(w(7,7)).
}).
#pos(p20, {f(w(23,30))}, {}, {
start_state(w(23,4)).
}).
#pos(p21, {f(w(29,30))}, {}, {
start_state(w(29,17)).
}).
#pos(p22, {f(w(10,30))}, {}, {
start_state(w(10,16)).
}).
#pos(p23, {f(w(4,30))}, {}, {
start_state(w(4,15)).
}).
#pos(p24, {f(w(20,30))}, {}, {
start_state(w(20,9)).
}).
#pos(p25, {f(w(9,30))}, {}, {
start_state(w(9,10)).
}).
#pos(p26, {f(w(18,30))}, {}, {
start_state(w(18,15)).
}).
#pos(p27, {f(w(17,30))}, {}, {
start_state(w(17,14)).
}).
#pos(p28, {f(w(7,30))}, {}, {
start_state(w(7,15)).
}).
#pos(p29, {f(w(16,30))}, {}, {
start_state(w(16,4)).
}).
#pos(p30, {f(w(30,30))}, {}, {
start_state(w(30,23)).
}).
#pos(p31, {f(w(21,30))}, {}, {
start_state(w(21,19)).
}).
#pos(p32, {f(w(12,30))}, {}, {
start_state(w(12,22)).
}).
#pos(p33, {f(w(25,30))}, {}, {
start_state(w(25,9)).
}).
#pos(p34, {f(w(10,30))}, {}, {
start_state(w(10,27)).
}).
#pos(p35, {f(w(9,30))}, {}, {
start_state(w(9,22)).
}).
#pos(p36, {f(w(8,30))}, {}, {
start_state(w(8,15)).
}).
#pos(p37, {f(w(5,30))}, {}, {
start_state(w(5,28)).
}).
#pos(p38, {f(w(13,30))}, {}, {
start_state(w(13,10)).
}).
#pos(p39, {f(w(28,30))}, {}, {
start_state(w(28,2)).
}).
#pos(p40, {f(w(8,30))}, {}, {
start_state(w(8,29)).
}).
#pos(p41, {f(w(12,30))}, {}, {
start_state(w(12,19)).
}).
#pos(p42, {f(w(24,30))}, {}, {
start_state(w(24,17)).
}).
#pos(p43, {f(w(8,30))}, {}, {
start_state(w(8,20)).
}).
#pos(p44, {f(w(10,30))}, {}, {
start_state(w(10,16)).
}).
#pos(p45, {f(w(28,30))}, {}, {
start_state(w(28,2)).
}).
#pos(p46, {f(w(18,30))}, {}, {
start_state(w(18,14)).
}).
#pos(p47, {f(w(10,30))}, {}, {
start_state(w(10,25)).
}).
#pos(p48, {f(w(16,30))}, {}, {
start_state(w(16,4)).
}).
#pos(p49, {f(w(27,30))}, {}, {
start_state(w(27,12)).
}).
#pos(p50, {f(w(9,30))}, {}, {
start_state(w(9,13)).
}).
#pos(p51, {f(w(10,30))}, {}, {
start_state(w(10,3)).
}).
#pos(p52, {f(w(3,30))}, {}, {
start_state(w(3,29)).
}).
#pos(p53, {f(w(14,30))}, {}, {
start_state(w(14,17)).
}).
#pos(p54, {f(w(29,30))}, {}, {
start_state(w(29,3)).
}).
#pos(p55, {f(w(14,30))}, {}, {
start_state(w(14,11)).
}).
#pos(p56, {f(w(24,30))}, {}, {
start_state(w(24,5)).
}).
#pos(p57, {f(w(17,30))}, {}, {
start_state(w(17,15)).
}).
#pos(p58, {f(w(14,30))}, {}, {
start_state(w(14,14)).
}).
#pos(p59, {f(w(17,30))}, {}, {
start_state(w(17,23)).
}).
#pos(p60, {f(w(13,30))}, {}, {
start_state(w(13,16)).
}).
#pos(p61, {f(w(19,30))}, {}, {
start_state(w(19,12)).
}).
#pos(p62, {f(w(12,30))}, {}, {
start_state(w(12,15)).
}).
#pos(p63, {f(w(11,30))}, {}, {
start_state(w(11,12)).
}).
#pos(p64, {f(w(14,30))}, {}, {
start_state(w(14,17)).
}).
#pos(p65, {f(w(20,30))}, {}, {
start_state(w(20,24)).
}).
#pos(p66, {f(w(7,30))}, {}, {
start_state(w(7,24)).
}).
#pos(p67, {f(w(4,30))}, {}, {
start_state(w(4,28)).
}).
#pos(p68, {f(w(4,30))}, {}, {
start_state(w(4,23)).
}).
#pos(p69, {f(w(24,30))}, {}, {
start_state(w(24,28)).
}).
#pos(p70, {f(w(19,30))}, {}, {
start_state(w(19,25)).
}).
#pos(p71, {f(w(2,30))}, {}, {
start_state(w(2,23)).
}).
#pos(p72, {f(w(21,30))}, {}, {
start_state(w(21,13)).
}).
#pos(p73, {f(w(28,30))}, {}, {
start_state(w(28,9)).
}).
#pos(p74, {f(w(16,30))}, {}, {
start_state(w(16,24)).
}).
#pos(p75, {f(w(25,30))}, {}, {
start_state(w(25,16)).
}).
#pos(p76, {f(w(10,30))}, {}, {
start_state(w(10,25)).
}).
#pos(p77, {f(w(14,30))}, {}, {
start_state(w(14,15)).
}).
#pos(p78, {f(w(28,30))}, {}, {
start_state(w(28,14)).
}).
#pos(p79, {f(w(13,30))}, {}, {
start_state(w(13,9)).
}).
#pos(p80, {f(w(2,30))}, {}, {
start_state(w(2,7)).
}).
#pos(p81, {f(w(6,30))}, {}, {
start_state(w(6,9)).
}).
#pos(p82, {f(w(8,30))}, {}, {
start_state(w(8,20)).
}).
#pos(p83, {f(w(6,30))}, {}, {
start_state(w(6,6)).
}).
#pos(p84, {f(w(4,30))}, {}, {
start_state(w(4,28)).
}).
#pos(p85, {f(w(9,30))}, {}, {
start_state(w(9,29)).
}).
#pos(p86, {f(w(23,30))}, {}, {
start_state(w(23,23)).
}).
#pos(p87, {f(w(26,30))}, {}, {
start_state(w(26,16)).
}).
#pos(p88, {f(w(8,30))}, {}, {
start_state(w(8,4)).
}).
#pos(p89, {f(w(18,30))}, {}, {
start_state(w(18,13)).
}).
#pos(p90, {f(w(6,30))}, {}, {
start_state(w(6,22)).
}).
#pos(p91, {f(w(19,30))}, {}, {
start_state(w(19,3)).
}).
#pos(p92, {f(w(17,30))}, {}, {
start_state(w(17,4)).
}).
#pos(p93, {f(w(22,30))}, {}, {
start_state(w(22,17)).
}).
#pos(p94, {f(w(28,30))}, {}, {
start_state(w(28,28)).
}).
#pos(p95, {f(w(19,30))}, {}, {
start_state(w(19,7)).
}).
#pos(p96, {f(w(19,30))}, {}, {
start_state(w(19,19)).
}).
#pos(p97, {f(w(23,30))}, {}, {
start_state(w(23,5)).
}).
#pos(p98, {f(w(24,30))}, {}, {
start_state(w(24,16)).
}).
#pos(p99, {f(w(18,30))}, {}, {
start_state(w(18,21)).
}).
#pos(p100, {f(w(25,30))}, {}, {
start_state(w(25,7)).
}).
#pos(p101, {f(w(13,30))}, {}, {
start_state(w(13,16)).
}).
#pos(p102, {f(w(11,30))}, {}, {
start_state(w(11,19)).
}).
#pos(p103, {f(w(28,30))}, {}, {
start_state(w(28,20)).
}).
#pos(p104, {f(w(18,30))}, {}, {
start_state(w(18,3)).
}).
#pos(p105, {f(w(26,30))}, {}, {
start_state(w(26,27)).
}).
#pos(p106, {f(w(22,30))}, {}, {
start_state(w(22,9)).
}).
#pos(p107, {f(w(18,30))}, {}, {
start_state(w(18,15)).
}).
#pos(p108, {f(w(5,30))}, {}, {
start_state(w(5,23)).
}).
#pos(p109, {f(w(16,30))}, {}, {
start_state(w(16,14)).
}).
#pos(p110, {f(w(11,30))}, {}, {
start_state(w(11,24)).
}).
#pos(p111, {f(w(4,30))}, {}, {
start_state(w(4,14)).
}).
#pos(p112, {f(w(13,30))}, {}, {
start_state(w(13,29)).
}).
#pos(p113, {f(w(1,30))}, {}, {
start_state(w(1,10)).
}).
#pos(p114, {f(w(26,30))}, {}, {
start_state(w(26,26)).
}).
#pos(p115, {f(w(14,30))}, {}, {
start_state(w(14,24)).
}).
#pos(p116, {f(w(26,30))}, {}, {
start_state(w(26,12)).
}).
#pos(p117, {f(w(3,30))}, {}, {
start_state(w(3,6)).
}).
#pos(p118, {f(w(7,30))}, {}, {
start_state(w(7,14)).
}).
#pos(p119, {f(w(11,30))}, {}, {
start_state(w(11,23)).
}).
#pos(p120, {f(w(24,30))}, {}, {
start_state(w(24,16)).
}).
#pos(p121, {f(w(20,30))}, {}, {
start_state(w(20,6)).
}).
#pos(p122, {f(w(9,30))}, {}, {
start_state(w(9,22)).
}).
#pos(p123, {f(w(15,30))}, {}, {
start_state(w(15,23)).
}).
#pos(p124, {f(w(23,30))}, {}, {
start_state(w(23,13)).
}).
#pos(p125, {f(w(1,30))}, {}, {
start_state(w(1,26)).
}).
#pos(p126, {f(w(8,30))}, {}, {
start_state(w(8,29)).
}).
#pos(p127, {f(w(22,30))}, {}, {
start_state(w(22,21)).
}).
#pos(p128, {f(w(18,30))}, {}, {
start_state(w(18,4)).
}).
#pos(p129, {f(w(9,30))}, {}, {
start_state(w(9,11)).
}).
#pos(p130, {f(w(11,30))}, {}, {
start_state(w(11,15)).
}).
#pos(p131, {f(w(16,30))}, {}, {
start_state(w(16,19)).
}).
#pos(p132, {f(w(26,30))}, {}, {
start_state(w(26,27)).
}).
#pos(p133, {f(w(2,30))}, {}, {
start_state(w(2,8)).
}).
#pos(p134, {f(w(3,30))}, {}, {
start_state(w(3,3)).
}).
#pos(p135, {f(w(7,30))}, {}, {
start_state(w(7,16)).
}).
#pos(p136, {f(w(21,30))}, {}, {
start_state(w(21,14)).
}).
#pos(p137, {f(w(26,30))}, {}, {
start_state(w(26,27)).
}).
#pos(p138, {f(w(14,30))}, {}, {
start_state(w(14,15)).
}).
#pos(p139, {f(w(26,30))}, {}, {
start_state(w(26,29)).
}).
#pos(p140, {f(w(15,30))}, {}, {
start_state(w(15,28)).
}).
#pos(p141, {f(w(26,30))}, {}, {
start_state(w(26,24)).
}).
#pos(p142, {f(w(22,30))}, {}, {
start_state(w(22,8)).
}).
#pos(p143, {f(w(14,30))}, {}, {
start_state(w(14,8)).
}).
#pos(p144, {f(w(4,30))}, {}, {
start_state(w(4,16)).
}).
#pos(p145, {f(w(13,30))}, {}, {
start_state(w(13,15)).
}).
#pos(p146, {f(w(15,30))}, {}, {
start_state(w(15,15)).
}).
#pos(p147, {f(w(30,30))}, {}, {
start_state(w(30,28)).
}).
#pos(p148, {f(w(10,30))}, {}, {
start_state(w(10,18)).
}).
#pos(p149, {f(w(22,30))}, {}, {
start_state(w(22,13)).
}).
#pos(p150, {f(w(15,30))}, {}, {
start_state(w(15,20)).
}).
#pos(p151, {f(w(7,30))}, {}, {
start_state(w(7,29)).
}).
#pos(p152, {f(w(11,30))}, {}, {
start_state(w(11,1)).
}).
#pos(p153, {f(w(9,30))}, {}, {
start_state(w(9,19)).
}).
#pos(p154, {f(w(7,30))}, {}, {
start_state(w(7,12)).
}).
#pos(p155, {f(w(27,30))}, {}, {
start_state(w(27,15)).
}).
#pos(p156, {f(w(7,30))}, {}, {
start_state(w(7,29)).
}).
#pos(p157, {f(w(5,30))}, {}, {
start_state(w(5,20)).
}).
#pos(p158, {f(w(27,30))}, {}, {
start_state(w(27,3)).
}).
#pos(p159, {f(w(14,30))}, {}, {
start_state(w(14,13)).
}).
#pos(p160, {f(w(16,30))}, {}, {
start_state(w(16,25)).
}).
#pos(p161, {f(w(7,30))}, {}, {
start_state(w(7,6)).
}).
#pos(p162, {f(w(3,30))}, {}, {
start_state(w(3,7)).
}).
#pos(p163, {f(w(19,30))}, {}, {
start_state(w(19,27)).
}).
#pos(p164, {f(w(4,30))}, {}, {
start_state(w(4,6)).
}).
#pos(p165, {f(w(22,30))}, {}, {
start_state(w(22,27)).
}).
#pos(p166, {f(w(4,30))}, {}, {
start_state(w(4,7)).
}).
#pos(p167, {f(w(15,30))}, {}, {
start_state(w(15,19)).
}).
#pos(p168, {f(w(24,30))}, {}, {
start_state(w(24,8)).
}).
#pos(p169, {f(w(11,30))}, {}, {
start_state(w(11,29)).
}).
#pos(p170, {f(w(17,30))}, {}, {
start_state(w(17,8)).
}).
#pos(p171, {f(w(15,30))}, {}, {
start_state(w(15,19)).
}).
#pos(p172, {f(w(3,30))}, {}, {
start_state(w(3,2)).
}).
#pos(p173, {f(w(19,30))}, {}, {
start_state(w(19,16)).
}).
#pos(p174, {f(w(29,30))}, {}, {
start_state(w(29,21)).
}).
#pos(p175, {f(w(1,30))}, {}, {
start_state(w(1,12)).
}).
#pos(p176, {f(w(22,30))}, {}, {
start_state(w(22,6)).
}).
#pos(p177, {f(w(21,30))}, {}, {
start_state(w(21,7)).
}).
#pos(p178, {f(w(7,30))}, {}, {
start_state(w(7,8)).
}).
#pos(p179, {f(w(30,30))}, {}, {
start_state(w(30,1)).
}).
#pos(p180, {f(w(27,30))}, {}, {
start_state(w(27,25)).
}).
#pos(p181, {f(w(15,30))}, {}, {
start_state(w(15,10)).
}).
#pos(p182, {f(w(30,30))}, {}, {
start_state(w(30,2)).
}).
#pos(p183, {f(w(6,30))}, {}, {
start_state(w(6,10)).
}).
#pos(p184, {f(w(10,30))}, {}, {
start_state(w(10,26)).
}).
#pos(p185, {f(w(6,30))}, {}, {
start_state(w(6,11)).
}).
#pos(p186, {f(w(13,30))}, {}, {
start_state(w(13,10)).
}).
#pos(p187, {f(w(15,30))}, {}, {
start_state(w(15,29)).
}).
#pos(p188, {f(w(15,30))}, {}, {
start_state(w(15,10)).
}).
#pos(p189, {f(w(21,30))}, {}, {
start_state(w(21,22)).
}).
#pos(p190, {f(w(7,30))}, {}, {
start_state(w(7,2)).
}).
#pos(p191, {f(w(25,30))}, {}, {
start_state(w(25,26)).
}).
#pos(p192, {f(w(5,30))}, {}, {
start_state(w(5,19)).
}).
#pos(p193, {f(w(8,30))}, {}, {
start_state(w(8,10)).
}).
#pos(p194, {f(w(16,30))}, {}, {
start_state(w(16,27)).
}).
#pos(p195, {f(w(28,30))}, {}, {
start_state(w(28,10)).
}).
#pos(p196, {f(w(1,30))}, {}, {
start_state(w(1,9)).
}).
#pos(p197, {f(w(19,30))}, {}, {
start_state(w(19,13)).
}).
#pos(p198, {f(w(26,30))}, {}, {
start_state(w(26,9)).
}).
#pos(p199, {f(w(25,30))}, {}, {
start_state(w(25,1)).
}).
#pos(p200, {f(w(14,30))}, {}, {
start_state(w(14,5)).
}).
#pos(p201, {f(w(13,30))}, {}, {
start_state(w(13,23)).
}).
#pos(p202, {f(w(4,30))}, {}, {
start_state(w(4,16)).
}).
#pos(p203, {f(w(7,30))}, {}, {
start_state(w(7,25)).
}).
#pos(p204, {f(w(24,30))}, {}, {
start_state(w(24,5)).
}).
#pos(p205, {f(w(18,30))}, {}, {
start_state(w(18,18)).
}).
#pos(p206, {f(w(9,30))}, {}, {
start_state(w(9,22)).
}).
#pos(p207, {f(w(5,30))}, {}, {
start_state(w(5,14)).
}).
#pos(p208, {f(w(21,30))}, {}, {
start_state(w(21,6)).
}).
#pos(p209, {f(w(1,30))}, {}, {
start_state(w(1,5)).
}).
#pos(p210, {f(w(16,30))}, {}, {
start_state(w(16,6)).
}).
#pos(p211, {f(w(30,30))}, {}, {
start_state(w(30,16)).
}).
#pos(p212, {f(w(29,30))}, {}, {
start_state(w(29,3)).
}).
#pos(p213, {f(w(21,30))}, {}, {
start_state(w(21,28)).
}).
#pos(p214, {f(w(7,30))}, {}, {
start_state(w(7,4)).
}).
#pos(p215, {f(w(15,30))}, {}, {
start_state(w(15,16)).
}).
#pos(p216, {f(w(30,30))}, {}, {
start_state(w(30,15)).
}).
#pos(p217, {f(w(5,30))}, {}, {
start_state(w(5,6)).
}).
#pos(p218, {f(w(13,30))}, {}, {
start_state(w(13,17)).
}).
#pos(p219, {f(w(2,30))}, {}, {
start_state(w(2,27)).
}).
#pos(p220, {f(w(1,30))}, {}, {
start_state(w(1,25)).
}).
#pos(p221, {f(w(27,30))}, {}, {
start_state(w(27,9)).
}).
#pos(p222, {f(w(25,30))}, {}, {
start_state(w(25,28)).
}).
#pos(p223, {f(w(6,30))}, {}, {
start_state(w(6,27)).
}).
#pos(p224, {f(w(15,30))}, {}, {
start_state(w(15,22)).
}).
#pos(p225, {f(w(29,30))}, {}, {
start_state(w(29,25)).
}).
#pos(p226, {f(w(24,30))}, {}, {
start_state(w(24,14)).
}).
#pos(p227, {f(w(26,30))}, {}, {
start_state(w(26,9)).
}).
#pos(p228, {f(w(1,30))}, {}, {
start_state(w(1,16)).
}).
#pos(p229, {f(w(6,30))}, {}, {
start_state(w(6,29)).
}).
#pos(p230, {f(w(14,30))}, {}, {
start_state(w(14,15)).
}).
#pos(p231, {f(w(26,30))}, {}, {
start_state(w(26,18)).
}).
#pos(p232, {f(w(20,30))}, {}, {
start_state(w(20,17)).
}).
#pos(p233, {f(w(20,30))}, {}, {
start_state(w(20,4)).
}).
#pos(p234, {f(w(1,30))}, {}, {
start_state(w(1,10)).
}).
#pos(p235, {f(w(10,30))}, {}, {
start_state(w(10,22)).
}).
#pos(p236, {f(w(2,30))}, {}, {
start_state(w(2,6)).
}).
#pos(p237, {f(w(17,30))}, {}, {
start_state(w(17,21)).
}).
#pos(p238, {f(w(13,30))}, {}, {
start_state(w(13,29)).
}).
#pos(p239, {f(w(27,30))}, {}, {
start_state(w(27,10)).
}).
#pos(p240, {f(w(7,30))}, {}, {
start_state(w(7,7)).
}).
#pos(p241, {f(w(3,30))}, {}, {
start_state(w(3,26)).
}).
#pos(p242, {f(w(12,30))}, {}, {
start_state(w(12,2)).
}).
#pos(p243, {f(w(16,30))}, {}, {
start_state(w(16,22)).
}).
#pos(p244, {f(w(19,30))}, {}, {
start_state(w(19,2)).
}).
#pos(p245, {f(w(19,30))}, {}, {
start_state(w(19,6)).
}).
#pos(p246, {f(w(27,30))}, {}, {
start_state(w(27,10)).
}).
#pos(p247, {f(w(27,30))}, {}, {
start_state(w(27,6)).
}).
#pos(p248, {f(w(2,30))}, {}, {
start_state(w(2,26)).
}).
#pos(p249, {f(w(14,30))}, {}, {
start_state(w(14,29)).
}).
#pos(p250, {f(w(20,30))}, {}, {
start_state(w(20,22)).
}).
#pos(p251, {f(w(10,30))}, {}, {
start_state(w(10,23)).
}).
#pos(p252, {f(w(10,30))}, {}, {
start_state(w(10,2)).
}).
#pos(p253, {f(w(20,30))}, {}, {
start_state(w(20,24)).
}).
#pos(p254, {f(w(16,30))}, {}, {
start_state(w(16,27)).
}).
#pos(p255, {f(w(28,30))}, {}, {
start_state(w(28,25)).
}).
#pos(p256, {f(w(28,30))}, {}, {
start_state(w(28,12)).
}).
#pos(p257, {f(w(20,30))}, {}, {
start_state(w(20,27)).
}).
#pos(p258, {f(w(8,30))}, {}, {
start_state(w(8,14)).
}).
#pos(p259, {f(w(11,30))}, {}, {
start_state(w(11,2)).
}).
#pos(p260, {f(w(13,30))}, {}, {
start_state(w(13,10)).
}).
#pos(p261, {f(w(16,30))}, {}, {
start_state(w(16,20)).
}).
#pos(p262, {f(w(17,30))}, {}, {
start_state(w(17,29)).
}).
#pos(p263, {f(w(4,30))}, {}, {
start_state(w(4,11)).
}).
#pos(p264, {f(w(12,30))}, {}, {
start_state(w(12,12)).
}).
#pos(p265, {f(w(16,30))}, {}, {
start_state(w(16,25)).
}).
#pos(p266, {f(w(30,30))}, {}, {
start_state(w(30,20)).
}).
#pos(p267, {f(w(27,30))}, {}, {
start_state(w(27,22)).
}).
#pos(p268, {f(w(11,30))}, {}, {
start_state(w(11,4)).
}).
#pos(p269, {f(w(5,30))}, {}, {
start_state(w(5,19)).
}).
#pos(p270, {f(w(29,30))}, {}, {
start_state(w(29,29)).
}).
#pos(p271, {f(w(30,30))}, {}, {
start_state(w(30,9)).
}).
#pos(p272, {f(w(4,30))}, {}, {
start_state(w(4,15)).
}).
#pos(p273, {f(w(4,30))}, {}, {
start_state(w(4,24)).
}).
#pos(p274, {f(w(19,30))}, {}, {
start_state(w(19,16)).
}).
#pos(p275, {f(w(29,30))}, {}, {
start_state(w(29,27)).
}).
#pos(p276, {f(w(17,30))}, {}, {
start_state(w(17,21)).
}).
#pos(p277, {f(w(14,30))}, {}, {
start_state(w(14,11)).
}).
#pos(p278, {f(w(10,30))}, {}, {
start_state(w(10,8)).
}).
#pos(p279, {f(w(22,30))}, {}, {
start_state(w(22,24)).
}).
#pos(p280, {f(w(9,30))}, {}, {
start_state(w(9,7)).
}).
#pos(p281, {f(w(24,30))}, {}, {
start_state(w(24,1)).
}).
#pos(p282, {f(w(1,30))}, {}, {
start_state(w(1,20)).
}).
#pos(p283, {f(w(15,30))}, {}, {
start_state(w(15,19)).
}).
#pos(p284, {f(w(13,30))}, {}, {
start_state(w(13,4)).
}).
#pos(p285, {f(w(16,30))}, {}, {
start_state(w(16,15)).
}).
#pos(p286, {f(w(18,30))}, {}, {
start_state(w(18,27)).
}).
#pos(p287, {f(w(21,30))}, {}, {
start_state(w(21,8)).
}).
#pos(p288, {f(w(5,30))}, {}, {
start_state(w(5,14)).
}).
#pos(p289, {f(w(24,30))}, {}, {
start_state(w(24,4)).
}).
#pos(p290, {f(w(16,30))}, {}, {
start_state(w(16,18)).
}).
#pos(p291, {f(w(1,30))}, {}, {
start_state(w(1,10)).
}).
#pos(p292, {f(w(24,30))}, {}, {
start_state(w(24,29)).
}).
#pos(p293, {f(w(20,30))}, {}, {
start_state(w(20,17)).
}).
#pos(p294, {f(w(20,30))}, {}, {
start_state(w(20,20)).
}).
#pos(p295, {f(w(9,30))}, {}, {
start_state(w(9,26)).
}).
#pos(p296, {f(w(6,30))}, {}, {
start_state(w(6,23)).
}).
#pos(p297, {f(w(2,30))}, {}, {
start_state(w(2,20)).
}).
#pos(p298, {f(w(12,30))}, {}, {
start_state(w(12,14)).
}).
#pos(p299, {f(w(19,30))}, {}, {
start_state(w(19,7)).
}).
#pos(n0, {}, {f(w(28,30))}, {
start_state(w(22,2)).
}).
#pos(n1, {}, {f(w(16,30))}, {
start_state(w(22,3)).
}).
#pos(n2, {}, {f(w(17,10))}, {
start_state(w(10,25)).
}).
#pos(n3, {}, {f(w(8,2))}, {
start_state(w(7,22)).
}).
#pos(n4, {}, {f(w(27,30))}, {
start_state(w(8,5)).
}).
#pos(n5, {}, {f(w(17,18))}, {
start_state(w(23,19)).
}).
#pos(n6, {}, {f(w(11,28))}, {
start_state(w(19,30)).
}).
#pos(n7, {}, {f(w(27,18))}, {
start_state(w(7,8)).
}).
#pos(n8, {}, {f(w(27,30))}, {
start_state(w(16,23)).
}).
#pos(n9, {}, {f(w(20,12))}, {
start_state(w(10,23)).
}).
#pos(n10, {}, {f(w(9,30))}, {
start_state(w(13,8)).
}).
#pos(n11, {}, {f(w(26,30))}, {
start_state(w(12,24)).
}).
#pos(n12, {}, {f(w(1,30))}, {
start_state(w(27,28)).
}).
#pos(n13, {}, {f(w(11,15))}, {
start_state(w(29,12)).
}).
#pos(n14, {}, {f(w(6,7))}, {
start_state(w(15,7)).
}).
#pos(n15, {}, {f(w(21,26))}, {
start_state(w(10,8)).
}).
#pos(n16, {}, {f(w(17,29))}, {
start_state(w(15,7)).
}).
#pos(n17, {}, {f(w(25,22))}, {
start_state(w(9,11)).
}).
#pos(n18, {}, {f(w(12,30))}, {
start_state(w(3,18)).
}).
#pos(n19, {}, {f(w(18,21))}, {
start_state(w(17,7)).
}).
#pos(n20, {}, {f(w(26,6))}, {
start_state(w(25,25)).
}).
#pos(n21, {}, {f(w(7,6))}, {
start_state(w(23,29)).
}).
#pos(n22, {}, {f(w(6,7))}, {
start_state(w(2,17)).
}).
#pos(n23, {}, {f(w(10,25))}, {
start_state(w(29,17)).
}).
#pos(n24, {}, {f(w(29,30))}, {
start_state(w(11,18)).
}).
#pos(n25, {}, {f(w(23,13))}, {
start_state(w(29,20)).
}).
#pos(n26, {}, {f(w(21,20))}, {
start_state(w(23,15)).
}).
#pos(n27, {}, {f(w(6,8))}, {
start_state(w(4,24)).
}).
#pos(n28, {}, {f(w(10,29))}, {
start_state(w(3,13)).
}).
#pos(n29, {}, {f(w(30,23))}, {
start_state(w(11,10)).
}).
#pos(n30, {}, {f(w(30,30))}, {
start_state(w(16,1)).
}).
#pos(n31, {}, {f(w(6,8))}, {
start_state(w(12,4)).
}).
#pos(n32, {}, {f(w(20,6))}, {
start_state(w(20,12)).
}).
#pos(n33, {}, {f(w(28,14))}, {
start_state(w(17,24)).
}).
#pos(n34, {}, {f(w(11,19))}, {
start_state(w(13,21)).
}).
#pos(n35, {}, {f(w(21,30))}, {
start_state(w(26,9)).
}).
#pos(n36, {}, {f(w(1,1))}, {
start_state(w(20,10)).
}).
#pos(n37, {}, {f(w(13,30))}, {
start_state(w(18,14)).
}).
#pos(n38, {}, {f(w(3,8))}, {
start_state(w(20,16)).
}).
#pos(n39, {}, {f(w(13,14))}, {
start_state(w(23,12)).
}).
#pos(n40, {}, {f(w(10,30))}, {
start_state(w(15,21)).
}).
#pos(n41, {}, {f(w(25,30))}, {
start_state(w(30,15)).
}).
#pos(n42, {}, {f(w(25,30))}, {
start_state(w(22,29)).
}).
#pos(n43, {}, {f(w(9,30))}, {
start_state(w(30,29)).
}).
#pos(n44, {}, {f(w(21,30))}, {
start_state(w(22,1)).
}).
#pos(n45, {}, {f(w(18,30))}, {
start_state(w(1,17)).
}).
#pos(n46, {}, {f(w(1,30))}, {
start_state(w(8,3)).
}).
#pos(n47, {}, {f(w(6,24))}, {
start_state(w(13,7)).
}).
#pos(n48, {}, {f(w(7,8))}, {
start_state(w(19,3)).
}).
#pos(n49, {}, {f(w(24,7))}, {
start_state(w(9,24)).
}).
#pos(n50, {}, {f(w(21,10))}, {
start_state(w(21,14)).
}).
#pos(n51, {}, {f(w(13,18))}, {
start_state(w(26,9)).
}).
#pos(n52, {}, {f(w(16,27))}, {
start_state(w(5,2)).
}).
#pos(n53, {}, {f(w(12,9))}, {
start_state(w(27,2)).
}).
#pos(n54, {}, {f(w(30,30))}, {
start_state(w(15,2)).
}).
#pos(n55, {}, {f(w(19,1))}, {
start_state(w(8,14)).
}).
#pos(n56, {}, {f(w(20,13))}, {
start_state(w(14,14)).
}).
#pos(n57, {}, {f(w(27,28))}, {
start_state(w(11,22)).
}).
#pos(n58, {}, {f(w(22,19))}, {
start_state(w(14,20)).
}).
#pos(n59, {}, {f(w(9,30))}, {
start_state(w(2,18)).
}).
#pos(n60, {}, {f(w(30,7))}, {
start_state(w(30,24)).
}).
#pos(n61, {}, {f(w(27,16))}, {
start_state(w(12,23)).
}).
#pos(n62, {}, {f(w(23,2))}, {
start_state(w(5,13)).
}).
#pos(n63, {}, {f(w(19,19))}, {
start_state(w(30,25)).
}).
#pos(n64, {}, {f(w(21,30))}, {
start_state(w(20,25)).
}).
#pos(n65, {}, {f(w(1,12))}, {
start_state(w(27,3)).
}).
#pos(n66, {}, {f(w(7,8))}, {
start_state(w(20,8)).
}).
#pos(n67, {}, {f(w(17,8))}, {
start_state(w(21,27)).
}).
#pos(n68, {}, {f(w(20,30))}, {
start_state(w(21,5)).
}).
#pos(n69, {}, {f(w(6,15))}, {
start_state(w(13,4)).
}).
#pos(n70, {}, {f(w(10,22))}, {
start_state(w(20,16)).
}).
#pos(n71, {}, {f(w(22,30))}, {
start_state(w(14,21)).
}).
#pos(n72, {}, {f(w(20,20))}, {
start_state(w(5,12)).
}).
#pos(n73, {}, {f(w(28,30))}, {
start_state(w(11,20)).
}).
#pos(n74, {}, {f(w(28,30))}, {
start_state(w(10,18)).
}).
#pos(n75, {}, {f(w(12,30))}, {
start_state(w(24,26)).
}).
#pos(n76, {}, {f(w(29,27))}, {
start_state(w(21,19)).
}).
#pos(n77, {}, {f(w(20,6))}, {
start_state(w(29,26)).
}).
#pos(n78, {}, {f(w(21,20))}, {
start_state(w(25,11)).
}).
#pos(n79, {}, {f(w(24,30))}, {
start_state(w(29,30)).
}).
#pos(n80, {}, {f(w(22,19))}, {
start_state(w(24,21)).
}).
#pos(n81, {}, {f(w(9,6))}, {
start_state(w(3,8)).
}).
#pos(n82, {}, {f(w(14,17))}, {
start_state(w(10,22)).
}).
#pos(n83, {}, {f(w(5,15))}, {
start_state(w(15,15)).
}).
#pos(n84, {}, {f(w(15,7))}, {
start_state(w(20,28)).
}).
#pos(n85, {}, {f(w(15,2))}, {
start_state(w(16,25)).
}).
#pos(n86, {}, {f(w(27,16))}, {
start_state(w(12,27)).
}).
#pos(n87, {}, {f(w(28,30))}, {
start_state(w(25,15)).
}).
#pos(n88, {}, {f(w(26,26))}, {
start_state(w(19,25)).
}).
#pos(n89, {}, {f(w(3,30))}, {
start_state(w(27,9)).
}).
#pos(n90, {}, {f(w(17,30))}, {
start_state(w(29,2)).
}).
#pos(n91, {}, {f(w(24,22))}, {
start_state(w(16,8)).
}).
#pos(n92, {}, {f(w(4,14))}, {
start_state(w(1,13)).
}).
#pos(n93, {}, {f(w(7,30))}, {
start_state(w(27,21)).
}).
#pos(n94, {}, {f(w(29,21))}, {
start_state(w(6,13)).
}).
#pos(n95, {}, {f(w(30,30))}, {
start_state(w(2,6)).
}).
#pos(n96, {}, {f(w(12,30))}, {
start_state(w(16,26)).
}).
#pos(n97, {}, {f(w(3,3))}, {
start_state(w(20,12)).
}).
#pos(n98, {}, {f(w(27,5))}, {
start_state(w(27,2)).
}).
#pos(n99, {}, {f(w(14,30))}, {
start_state(w(10,4)).
}).
#pos(n100, {}, {f(w(15,1))}, {
start_state(w(2,3)).
}).
#pos(n101, {}, {f(w(27,30))}, {
start_state(w(6,10)).
}).
#pos(n102, {}, {f(w(27,21))}, {
start_state(w(22,3)).
}).
#pos(n103, {}, {f(w(25,5))}, {
start_state(w(28,15)).
}).
#pos(n104, {}, {f(w(6,30))}, {
start_state(w(27,11)).
}).
#pos(n105, {}, {f(w(16,30))}, {
start_state(w(25,9)).
}).
#pos(n106, {}, {f(w(23,2))}, {
start_state(w(20,7)).
}).
#pos(n107, {}, {f(w(24,26))}, {
start_state(w(4,11)).
}).
#pos(n108, {}, {f(w(19,30))}, {
start_state(w(28,23)).
}).
#pos(n109, {}, {f(w(5,23))}, {
start_state(w(8,5)).
}).
#pos(n110, {}, {f(w(11,30))}, {
start_state(w(24,4)).
}).
#pos(n111, {}, {f(w(5,18))}, {
start_state(w(22,12)).
}).
#pos(n112, {}, {f(w(11,4))}, {
start_state(w(8,28)).
}).
#pos(n113, {}, {f(w(19,30))}, {
start_state(w(8,19)).
}).
#pos(n114, {}, {f(w(19,15))}, {
start_state(w(23,15)).
}).
#pos(n115, {}, {f(w(14,19))}, {
start_state(w(27,18)).
}).
#pos(n116, {}, {f(w(7,30))}, {
start_state(w(20,10)).
}).
#pos(n117, {}, {f(w(25,15))}, {
start_state(w(29,15)).
}).
#pos(n118, {}, {f(w(23,30))}, {
start_state(w(21,14)).
}).
#pos(n119, {}, {f(w(16,22))}, {
start_state(w(26,11)).
}).
#pos(n120, {}, {f(w(5,17))}, {
start_state(w(2,12)).
}).
#pos(n121, {}, {f(w(1,10))}, {
start_state(w(3,1)).
}).
#pos(n122, {}, {f(w(11,15))}, {
start_state(w(26,13)).
}).
#pos(n123, {}, {f(w(6,30))}, {
start_state(w(7,5)).
}).
#pos(n124, {}, {f(w(2,9))}, {
start_state(w(25,25)).
}).
#pos(n125, {}, {f(w(11,20))}, {
start_state(w(9,18)).
}).
#pos(n126, {}, {f(w(25,1))}, {
start_state(w(20,18)).
}).
#pos(n127, {}, {f(w(18,14))}, {
start_state(w(7,19)).
}).
#pos(n128, {}, {f(w(7,9))}, {
start_state(w(21,2)).
}).
#pos(n129, {}, {f(w(1,19))}, {
start_state(w(5,20)).
}).
#pos(n130, {}, {f(w(18,30))}, {
start_state(w(4,14)).
}).
#pos(n131, {}, {f(w(18,3))}, {
start_state(w(8,9)).
}).
#pos(n132, {}, {f(w(27,17))}, {
start_state(w(18,26)).
}).
#pos(n133, {}, {f(w(12,30))}, {
start_state(w(1,30)).
}).
#pos(n134, {}, {f(w(21,14))}, {
start_state(w(13,25)).
}).
#pos(n135, {}, {f(w(30,19))}, {
start_state(w(7,4)).
}).
#pos(n136, {}, {f(w(8,7))}, {
start_state(w(19,29)).
}).
#pos(n137, {}, {f(w(6,27))}, {
start_state(w(8,14)).
}).
#pos(n138, {}, {f(w(25,30))}, {
start_state(w(18,28)).
}).
#pos(n139, {}, {f(w(17,21))}, {
start_state(w(17,7)).
}).
#pos(n140, {}, {f(w(19,2))}, {
start_state(w(4,24)).
}).
#pos(n141, {}, {f(w(28,23))}, {
start_state(w(18,11)).
}).
#pos(n142, {}, {f(w(3,7))}, {
start_state(w(14,28)).
}).
#pos(n143, {}, {f(w(12,30))}, {
start_state(w(4,10)).
}).
#pos(n144, {}, {f(w(29,28))}, {
start_state(w(8,1)).
}).
#pos(n145, {}, {f(w(22,30))}, {
start_state(w(20,25)).
}).
#pos(n146, {}, {f(w(10,26))}, {
start_state(w(21,28)).
}).
#pos(n147, {}, {f(w(1,9))}, {
start_state(w(19,11)).
}).
#pos(n148, {}, {f(w(3,30))}, {
start_state(w(10,30)).
}).
#pos(n149, {}, {f(w(20,5))}, {
start_state(w(27,17)).
}).
#pos(n150, {}, {f(w(3,10))}, {
start_state(w(27,7)).
}).
#pos(n151, {}, {f(w(13,30))}, {
start_state(w(1,4)).
}).
#pos(n152, {}, {f(w(7,26))}, {
start_state(w(26,16)).
}).
#pos(n153, {}, {f(w(27,9))}, {
start_state(w(30,18)).
}).
#pos(n154, {}, {f(w(14,30))}, {
start_state(w(17,1)).
}).
#pos(n155, {}, {f(w(26,18))}, {
start_state(w(21,8)).
}).
#pos(n156, {}, {f(w(26,29))}, {
start_state(w(7,19)).
}).
#pos(n157, {}, {f(w(7,30))}, {
start_state(w(6,18)).
}).
#pos(n158, {}, {f(w(13,20))}, {
start_state(w(21,3)).
}).
#pos(n159, {}, {f(w(28,25))}, {
start_state(w(18,29)).
}).
#pos(n160, {}, {f(w(20,13))}, {
start_state(w(5,22)).
}).
#pos(n161, {}, {f(w(1,8))}, {
start_state(w(28,13)).
}).
#pos(n162, {}, {f(w(22,24))}, {
start_state(w(9,18)).
}).
#pos(n163, {}, {f(w(23,9))}, {
start_state(w(22,22)).
}).
#pos(n164, {}, {f(w(29,13))}, {
start_state(w(26,3)).
}).
#pos(n165, {}, {f(w(13,30))}, {
start_state(w(12,14)).
}).
#pos(n166, {}, {f(w(28,30))}, {
start_state(w(27,10)).
}).
#pos(n167, {}, {f(w(11,30))}, {
start_state(w(30,3)).
}).
#pos(n168, {}, {f(w(25,22))}, {
start_state(w(7,29)).
}).
#pos(n169, {}, {f(w(5,30))}, {
start_state(w(18,19)).
}).
#pos(n170, {}, {f(w(4,19))}, {
start_state(w(28,4)).
}).
#pos(n171, {}, {f(w(19,1))}, {
start_state(w(8,4)).
}).
#pos(n172, {}, {f(w(1,7))}, {
start_state(w(19,29)).
}).
#pos(n173, {}, {f(w(13,12))}, {
start_state(w(25,23)).
}).
#pos(n174, {}, {f(w(27,5))}, {
start_state(w(9,24)).
}).
#pos(n175, {}, {f(w(26,1))}, {
start_state(w(1,6)).
}).
#pos(n176, {}, {f(w(18,30))}, {
start_state(w(12,29)).
}).
#pos(n177, {}, {f(w(25,25))}, {
start_state(w(20,26)).
}).
#pos(n178, {}, {f(w(28,7))}, {
start_state(w(2,16)).
}).
#pos(n179, {}, {f(w(7,30))}, {
start_state(w(8,4)).
}).
#pos(n180, {}, {f(w(6,23))}, {
start_state(w(25,15)).
}).
#pos(n181, {}, {f(w(1,30))}, {
start_state(w(10,25)).
}).
#pos(n182, {}, {f(w(1,30))}, {
start_state(w(2,29)).
}).
#pos(n183, {}, {f(w(11,11))}, {
start_state(w(17,17)).
}).
#pos(n184, {}, {f(w(4,19))}, {
start_state(w(19,26)).
}).
#pos(n185, {}, {f(w(24,30))}, {
start_state(w(8,11)).
}).
#pos(n186, {}, {f(w(29,8))}, {
start_state(w(10,24)).
}).
#pos(n187, {}, {f(w(3,27))}, {
start_state(w(10,6)).
}).
#pos(n188, {}, {f(w(21,5))}, {
start_state(w(2,2)).
}).
#pos(n189, {}, {f(w(19,8))}, {
start_state(w(26,15)).
}).
#pos(n190, {}, {f(w(16,15))}, {
start_state(w(17,23)).
}).
#pos(n191, {}, {f(w(24,4))}, {
start_state(w(6,22)).
}).
#pos(n192, {}, {f(w(7,27))}, {
start_state(w(1,13)).
}).
#pos(n193, {}, {f(w(6,30))}, {
start_state(w(12,8)).
}).
#pos(n194, {}, {f(w(6,30))}, {
start_state(w(24,12)).
}).
#pos(n195, {}, {f(w(22,27))}, {
start_state(w(10,28)).
}).
#pos(n196, {}, {f(w(5,23))}, {
start_state(w(14,12)).
}).
#pos(n197, {}, {f(w(17,8))}, {
start_state(w(13,30)).
}).
#pos(n198, {}, {f(w(18,28))}, {
start_state(w(13,24)).
}).
#pos(n199, {}, {f(w(15,17))}, {
start_state(w(24,22)).
}).
#pos(n200, {}, {f(w(8,30))}, {
start_state(w(17,28)).
}).
#pos(n201, {}, {f(w(14,27))}, {
start_state(w(5,16)).
}).
#pos(n202, {}, {f(w(4,30))}, {
start_state(w(5,28)).
}).
#pos(n203, {}, {f(w(25,30))}, {
start_state(w(3,21)).
}).
#pos(n204, {}, {f(w(24,30))}, {
start_state(w(4,11)).
}).
#pos(n205, {}, {f(w(12,30))}, {
start_state(w(10,10)).
}).
#pos(n206, {}, {f(w(2,30))}, {
start_state(w(15,6)).
}).
#pos(n207, {}, {f(w(19,30))}, {
start_state(w(5,25)).
}).
#pos(n208, {}, {f(w(16,15))}, {
start_state(w(16,1)).
}).
#pos(n209, {}, {f(w(23,30))}, {
start_state(w(18,29)).
}).
#pos(n210, {}, {f(w(30,30))}, {
start_state(w(19,30)).
}).
#pos(n211, {}, {f(w(1,30))}, {
start_state(w(18,21)).
}).
#pos(n212, {}, {f(w(27,13))}, {
start_state(w(23,16)).
}).
#pos(n213, {}, {f(w(26,5))}, {
start_state(w(21,26)).
}).
#pos(n214, {}, {f(w(4,10))}, {
start_state(w(10,23)).
}).
#pos(n215, {}, {f(w(3,30))}, {
start_state(w(7,12)).
}).
#pos(n216, {}, {f(w(12,30))}, {
start_state(w(8,1)).
}).
#pos(n217, {}, {f(w(7,12))}, {
start_state(w(5,3)).
}).
#pos(n218, {}, {f(w(6,29))}, {
start_state(w(11,10)).
}).
#pos(n219, {}, {f(w(4,5))}, {
start_state(w(1,19)).
}).
#pos(n220, {}, {f(w(18,30))}, {
start_state(w(21,17)).
}).
#pos(n221, {}, {f(w(12,4))}, {
start_state(w(15,13)).
}).
#pos(n222, {}, {f(w(14,30))}, {
start_state(w(13,12)).
}).
#pos(n223, {}, {f(w(4,27))}, {
start_state(w(4,26)).
}).
#pos(n224, {}, {f(w(19,30))}, {
start_state(w(2,11)).
}).
#pos(n225, {}, {f(w(22,28))}, {
start_state(w(12,8)).
}).
#pos(n226, {}, {f(w(6,29))}, {
start_state(w(6,24)).
}).
#pos(n227, {}, {f(w(2,8))}, {
start_state(w(13,28)).
}).
#pos(n228, {}, {f(w(22,19))}, {
start_state(w(22,11)).
}).
#pos(n229, {}, {f(w(11,30))}, {
start_state(w(16,7)).
}).
#pos(n230, {}, {f(w(1,30))}, {
start_state(w(6,6)).
}).
#pos(n231, {}, {f(w(9,30))}, {
start_state(w(29,6)).
}).
#pos(n232, {}, {f(w(19,17))}, {
start_state(w(3,23)).
}).
#pos(n233, {}, {f(w(15,15))}, {
start_state(w(18,29)).
}).
#pos(n234, {}, {f(w(29,6))}, {
start_state(w(22,2)).
}).
#pos(n235, {}, {f(w(2,30))}, {
start_state(w(30,20)).
}).
#pos(n236, {}, {f(w(5,30))}, {
start_state(w(2,24)).
}).
#pos(n237, {}, {f(w(5,21))}, {
start_state(w(5,1)).
}).
#pos(n238, {}, {f(w(28,30))}, {
start_state(w(24,27)).
}).
#pos(n239, {}, {f(w(10,1))}, {
start_state(w(14,15)).
}).
#pos(n240, {}, {f(w(15,18))}, {
start_state(w(17,14)).
}).
#pos(n241, {}, {f(w(17,30))}, {
start_state(w(5,7)).
}).
#pos(n242, {}, {f(w(27,23))}, {
start_state(w(25,15)).
}).
#pos(n243, {}, {f(w(25,3))}, {
start_state(w(19,3)).
}).
#pos(n244, {}, {f(w(29,25))}, {
start_state(w(5,5)).
}).
#pos(n245, {}, {f(w(4,9))}, {
start_state(w(21,6)).
}).
#pos(n246, {}, {f(w(26,11))}, {
start_state(w(21,18)).
}).
#pos(n247, {}, {f(w(21,25))}, {
start_state(w(1,15)).
}).
#pos(n248, {}, {f(w(29,18))}, {
start_state(w(10,22)).
}).
#pos(n249, {}, {f(w(3,21))}, {
start_state(w(22,24)).
}).
#pos(n250, {}, {f(w(2,30))}, {
start_state(w(18,18)).
}).
#pos(n251, {}, {f(w(18,9))}, {
start_state(w(5,28)).
}).
#pos(n252, {}, {f(w(7,29))}, {
start_state(w(25,29)).
}).
#pos(n253, {}, {f(w(25,4))}, {
start_state(w(26,27)).
}).
#pos(n254, {}, {f(w(4,30))}, {
start_state(w(24,7)).
}).
#pos(n255, {}, {f(w(3,10))}, {
start_state(w(7,30)).
}).
#pos(n256, {}, {f(w(16,30))}, {
start_state(w(3,3)).
}).
#pos(n257, {}, {f(w(12,30))}, {
start_state(w(28,18)).
}).
#pos(n258, {}, {f(w(26,30))}, {
start_state(w(24,20)).
}).
#pos(n259, {}, {f(w(2,5))}, {
start_state(w(6,3)).
}).
#pos(n260, {}, {f(w(24,30))}, {
start_state(w(6,25)).
}).
#pos(n261, {}, {f(w(19,10))}, {
start_state(w(24,5)).
}).
#pos(n262, {}, {f(w(22,30))}, {
start_state(w(1,27)).
}).
#pos(n263, {}, {f(w(30,30))}, {
start_state(w(7,1)).
}).
#pos(n264, {}, {f(w(15,28))}, {
start_state(w(16,13)).
}).
#pos(n265, {}, {f(w(8,30))}, {
start_state(w(15,15)).
}).
#pos(n266, {}, {f(w(24,4))}, {
start_state(w(5,14)).
}).
#pos(n267, {}, {f(w(2,25))}, {
start_state(w(7,18)).
}).
#pos(n268, {}, {f(w(6,17))}, {
start_state(w(8,10)).
}).
#pos(n269, {}, {f(w(14,16))}, {
start_state(w(6,3)).
}).
#pos(n270, {}, {f(w(1,15))}, {
start_state(w(15,26)).
}).
#pos(n271, {}, {f(w(19,17))}, {
start_state(w(5,14)).
}).
#pos(n272, {}, {f(w(19,15))}, {
start_state(w(20,19)).
}).
#pos(n273, {}, {f(w(22,9))}, {
start_state(w(26,22)).
}).
#pos(n274, {}, {f(w(20,21))}, {
start_state(w(20,1)).
}).
#pos(n275, {}, {f(w(8,23))}, {
start_state(w(20,12)).
}).
#pos(n276, {}, {f(w(11,30))}, {
start_state(w(7,18)).
}).
#pos(n277, {}, {f(w(23,24))}, {
start_state(w(2,16)).
}).
#pos(n278, {}, {f(w(25,30))}, {
start_state(w(10,27)).
}).
#pos(n279, {}, {f(w(24,25))}, {
start_state(w(19,6)).
}).
#pos(n280, {}, {f(w(3,22))}, {
start_state(w(18,25)).
}).
#pos(n281, {}, {f(w(1,21))}, {
start_state(w(12,3)).
}).
#pos(n282, {}, {f(w(3,11))}, {
start_state(w(5,9)).
}).
#pos(n283, {}, {f(w(18,14))}, {
start_state(w(4,15)).
}).
#pos(n284, {}, {f(w(19,11))}, {
start_state(w(16,25)).
}).
#pos(n285, {}, {f(w(9,15))}, {
start_state(w(24,20)).
}).
#pos(n286, {}, {f(w(3,16))}, {
start_state(w(6,28)).
}).
#pos(n287, {}, {f(w(7,30))}, {
start_state(w(13,13)).
}).
#pos(n288, {}, {f(w(22,30))}, {
start_state(w(17,3)).
}).
#pos(n289, {}, {f(w(6,29))}, {
start_state(w(9,21)).
}).
#pos(n290, {}, {f(w(9,7))}, {
start_state(w(6,26)).
}).
#pos(n291, {}, {f(w(29,30))}, {
start_state(w(8,22)).
}).
#pos(n292, {}, {f(w(28,21))}, {
start_state(w(17,27)).
}).
#pos(n293, {}, {f(w(13,30))}, {
start_state(w(2,9)).
}).
#pos(n294, {}, {f(w(13,30))}, {
start_state(w(3,16)).
}).
#pos(n295, {}, {f(w(11,30))}, {
start_state(w(19,9)).
}).
#pos(n296, {}, {f(w(30,8))}, {
start_state(w(21,19)).
}).
#pos(n297, {}, {f(w(23,16))}, {
start_state(w(7,30)).
}).
#pos(n298, {}, {f(w(27,30))}, {
start_state(w(25,15)).
}).
#pos(n299, {}, {f(w(19,14))}, {
start_state(w(10,23)).
}).
