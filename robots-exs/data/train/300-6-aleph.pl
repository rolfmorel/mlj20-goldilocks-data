:- use_module(library(aleph)).
:- if(current_predicate(use_rendering/1)).
:- use_rendering(prolog).
:- endif.
:- aleph.
:- style_check(-discontiguous).

:- aleph_set(i,6).
:- aleph_set(clauselength,6).
:- aleph_set(nodes,50000).

:- modeh(*,f(+state,-state)).
:- modeb(*,move_up(+state,-state)).
:- modeb(*,move_down(+state,-state)).
:- modeb(*,move_left(+state,-state)).
:- modeb(*,move_right(+state,-state)).
:- modeb(*,at_top(+state)).
:- modeb(*,at_bottom(+state)).
:- modeb(*,at_left(+state)).
:- modeb(*,at_right(+state)).

:- determination(f/2,move_up/2).
:- determination(f/2,move_down/2).
:- determination(f/2,move_left/2).
:- determination(f/2,move_right/2).
:- determination(f/2,at_top/1).
:- determination(f/2,at_bottom/1).
:- determination(f/2,at_left/1).
:- determination(f/2,at_right/1).
:-begin_bg.
size(30).
:- use_module(library(clpfd)).

at_left(w(1,_)).

at_bottom(w(_,1)).

at_top(w(_,Y)):-
    size(Y).
at_right(w(X,_)):-
    size(X).

move_right(w(X1,Y),w(X2,Y)):-
    size(Size),
    X1 #< Size,
    X2 #= X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    X1 #> 1,
    X2 #= X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
    size(Size),
    Y1 #< Size,
    Y2 #= Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    Y1 #> 1,
    Y2 #= Y1 - 1.
:-end_bg.
:-begin_in_pos.
f(w(11,24),w(11,30)).
f(w(29,26),w(29,30)).
f(w(15,10),w(15,30)).
f(w(29,19),w(29,30)).
f(w(21,28),w(21,30)).
f(w(6,22),w(6,30)).
f(w(1,19),w(1,30)).
f(w(7,10),w(7,30)).
f(w(20,20),w(20,30)).
f(w(21,25),w(21,30)).
f(w(14,27),w(14,30)).
f(w(12,12),w(12,30)).
f(w(15,16),w(15,30)).
f(w(6,6),w(6,30)).
f(w(25,27),w(25,30)).
f(w(25,12),w(25,30)).
f(w(16,5),w(16,30)).
f(w(26,28),w(26,30)).
f(w(25,4),w(25,30)).
f(w(7,7),w(7,30)).
f(w(23,4),w(23,30)).
f(w(29,17),w(29,30)).
f(w(10,16),w(10,30)).
f(w(4,15),w(4,30)).
f(w(20,9),w(20,30)).
f(w(9,10),w(9,30)).
f(w(18,15),w(18,30)).
f(w(17,14),w(17,30)).
f(w(7,15),w(7,30)).
f(w(16,4),w(16,30)).
f(w(30,23),w(30,30)).
f(w(21,19),w(21,30)).
f(w(12,22),w(12,30)).
f(w(25,9),w(25,30)).
f(w(10,27),w(10,30)).
f(w(9,22),w(9,30)).
f(w(8,15),w(8,30)).
f(w(5,28),w(5,30)).
f(w(13,10),w(13,30)).
f(w(28,2),w(28,30)).
f(w(8,29),w(8,30)).
f(w(12,19),w(12,30)).
f(w(24,17),w(24,30)).
f(w(8,20),w(8,30)).
f(w(10,16),w(10,30)).
f(w(28,2),w(28,30)).
f(w(18,14),w(18,30)).
f(w(10,25),w(10,30)).
f(w(16,4),w(16,30)).
f(w(27,12),w(27,30)).
f(w(9,13),w(9,30)).
f(w(10,3),w(10,30)).
f(w(3,29),w(3,30)).
f(w(14,17),w(14,30)).
f(w(29,3),w(29,30)).
f(w(14,11),w(14,30)).
f(w(24,5),w(24,30)).
f(w(17,15),w(17,30)).
f(w(14,14),w(14,30)).
f(w(17,23),w(17,30)).
f(w(13,16),w(13,30)).
f(w(19,12),w(19,30)).
f(w(12,15),w(12,30)).
f(w(11,12),w(11,30)).
f(w(14,17),w(14,30)).
f(w(20,24),w(20,30)).
f(w(7,24),w(7,30)).
f(w(4,28),w(4,30)).
f(w(4,23),w(4,30)).
f(w(24,28),w(24,30)).
f(w(19,25),w(19,30)).
f(w(2,23),w(2,30)).
f(w(21,13),w(21,30)).
f(w(28,9),w(28,30)).
f(w(16,24),w(16,30)).
f(w(25,16),w(25,30)).
f(w(10,25),w(10,30)).
f(w(14,15),w(14,30)).
f(w(28,14),w(28,30)).
f(w(13,9),w(13,30)).
f(w(2,7),w(2,30)).
f(w(6,9),w(6,30)).
f(w(8,20),w(8,30)).
f(w(6,6),w(6,30)).
f(w(4,28),w(4,30)).
f(w(9,29),w(9,30)).
f(w(23,23),w(23,30)).
f(w(26,16),w(26,30)).
f(w(8,4),w(8,30)).
f(w(18,13),w(18,30)).
f(w(6,22),w(6,30)).
f(w(19,3),w(19,30)).
f(w(17,4),w(17,30)).
f(w(22,17),w(22,30)).
f(w(28,28),w(28,30)).
f(w(19,7),w(19,30)).
f(w(19,19),w(19,30)).
f(w(23,5),w(23,30)).
f(w(24,16),w(24,30)).
f(w(18,21),w(18,30)).
f(w(25,7),w(25,30)).
f(w(13,16),w(13,30)).
f(w(11,19),w(11,30)).
f(w(28,20),w(28,30)).
f(w(18,3),w(18,30)).
f(w(26,27),w(26,30)).
f(w(22,9),w(22,30)).
f(w(18,15),w(18,30)).
f(w(5,23),w(5,30)).
f(w(16,14),w(16,30)).
f(w(11,24),w(11,30)).
f(w(4,14),w(4,30)).
f(w(13,29),w(13,30)).
f(w(1,10),w(1,30)).
f(w(26,26),w(26,30)).
f(w(14,24),w(14,30)).
f(w(26,12),w(26,30)).
f(w(3,6),w(3,30)).
f(w(7,14),w(7,30)).
f(w(11,23),w(11,30)).
f(w(24,16),w(24,30)).
f(w(20,6),w(20,30)).
f(w(9,22),w(9,30)).
f(w(15,23),w(15,30)).
f(w(23,13),w(23,30)).
f(w(1,26),w(1,30)).
f(w(8,29),w(8,30)).
f(w(22,21),w(22,30)).
f(w(18,4),w(18,30)).
f(w(9,11),w(9,30)).
f(w(11,15),w(11,30)).
f(w(16,19),w(16,30)).
f(w(26,27),w(26,30)).
f(w(2,8),w(2,30)).
f(w(3,3),w(3,30)).
f(w(7,16),w(7,30)).
f(w(21,14),w(21,30)).
f(w(26,27),w(26,30)).
f(w(14,15),w(14,30)).
f(w(26,29),w(26,30)).
f(w(15,28),w(15,30)).
f(w(26,24),w(26,30)).
f(w(22,8),w(22,30)).
f(w(14,8),w(14,30)).
f(w(4,16),w(4,30)).
f(w(13,15),w(13,30)).
f(w(15,15),w(15,30)).
f(w(30,28),w(30,30)).
f(w(10,18),w(10,30)).
f(w(22,13),w(22,30)).
f(w(15,20),w(15,30)).
f(w(7,29),w(7,30)).
f(w(11,1),w(11,30)).
f(w(9,19),w(9,30)).
f(w(7,12),w(7,30)).
f(w(27,15),w(27,30)).
f(w(7,29),w(7,30)).
f(w(5,20),w(5,30)).
f(w(27,3),w(27,30)).
f(w(14,13),w(14,30)).
f(w(16,25),w(16,30)).
f(w(7,6),w(7,30)).
f(w(3,7),w(3,30)).
f(w(19,27),w(19,30)).
f(w(4,6),w(4,30)).
f(w(22,27),w(22,30)).
f(w(4,7),w(4,30)).
f(w(15,19),w(15,30)).
f(w(24,8),w(24,30)).
f(w(11,29),w(11,30)).
f(w(17,8),w(17,30)).
f(w(15,19),w(15,30)).
f(w(3,2),w(3,30)).
f(w(19,16),w(19,30)).
f(w(29,21),w(29,30)).
f(w(1,12),w(1,30)).
f(w(22,6),w(22,30)).
f(w(21,7),w(21,30)).
f(w(7,8),w(7,30)).
f(w(30,1),w(30,30)).
f(w(27,25),w(27,30)).
f(w(15,10),w(15,30)).
f(w(30,2),w(30,30)).
f(w(6,10),w(6,30)).
f(w(10,26),w(10,30)).
f(w(6,11),w(6,30)).
f(w(13,10),w(13,30)).
f(w(15,29),w(15,30)).
f(w(15,10),w(15,30)).
f(w(21,22),w(21,30)).
f(w(7,2),w(7,30)).
f(w(25,26),w(25,30)).
f(w(5,19),w(5,30)).
f(w(8,10),w(8,30)).
f(w(16,27),w(16,30)).
f(w(28,10),w(28,30)).
f(w(1,9),w(1,30)).
f(w(19,13),w(19,30)).
f(w(26,9),w(26,30)).
f(w(25,1),w(25,30)).
f(w(14,5),w(14,30)).
f(w(13,23),w(13,30)).
f(w(4,16),w(4,30)).
f(w(7,25),w(7,30)).
f(w(24,5),w(24,30)).
f(w(18,18),w(18,30)).
f(w(9,22),w(9,30)).
f(w(5,14),w(5,30)).
f(w(21,6),w(21,30)).
f(w(1,5),w(1,30)).
f(w(16,6),w(16,30)).
f(w(30,16),w(30,30)).
f(w(29,3),w(29,30)).
f(w(21,28),w(21,30)).
f(w(7,4),w(7,30)).
f(w(15,16),w(15,30)).
f(w(30,15),w(30,30)).
f(w(5,6),w(5,30)).
f(w(13,17),w(13,30)).
f(w(2,27),w(2,30)).
f(w(1,25),w(1,30)).
f(w(27,9),w(27,30)).
f(w(25,28),w(25,30)).
f(w(6,27),w(6,30)).
f(w(15,22),w(15,30)).
f(w(29,25),w(29,30)).
f(w(24,14),w(24,30)).
f(w(26,9),w(26,30)).
f(w(1,16),w(1,30)).
f(w(6,29),w(6,30)).
f(w(14,15),w(14,30)).
f(w(26,18),w(26,30)).
f(w(20,17),w(20,30)).
f(w(20,4),w(20,30)).
f(w(1,10),w(1,30)).
f(w(10,22),w(10,30)).
f(w(2,6),w(2,30)).
f(w(17,21),w(17,30)).
f(w(13,29),w(13,30)).
f(w(27,10),w(27,30)).
f(w(7,7),w(7,30)).
f(w(3,26),w(3,30)).
f(w(12,2),w(12,30)).
f(w(16,22),w(16,30)).
f(w(19,2),w(19,30)).
f(w(19,6),w(19,30)).
f(w(27,10),w(27,30)).
f(w(27,6),w(27,30)).
f(w(2,26),w(2,30)).
f(w(14,29),w(14,30)).
f(w(20,22),w(20,30)).
f(w(10,23),w(10,30)).
f(w(10,2),w(10,30)).
f(w(20,24),w(20,30)).
f(w(16,27),w(16,30)).
f(w(28,25),w(28,30)).
f(w(28,12),w(28,30)).
f(w(20,27),w(20,30)).
f(w(8,14),w(8,30)).
f(w(11,2),w(11,30)).
f(w(13,10),w(13,30)).
f(w(16,20),w(16,30)).
f(w(17,29),w(17,30)).
f(w(4,11),w(4,30)).
f(w(12,12),w(12,30)).
f(w(16,25),w(16,30)).
f(w(30,20),w(30,30)).
f(w(27,22),w(27,30)).
f(w(11,4),w(11,30)).
f(w(5,19),w(5,30)).
f(w(29,29),w(29,30)).
f(w(30,9),w(30,30)).
f(w(4,15),w(4,30)).
f(w(4,24),w(4,30)).
f(w(19,16),w(19,30)).
f(w(29,27),w(29,30)).
f(w(17,21),w(17,30)).
f(w(14,11),w(14,30)).
f(w(10,8),w(10,30)).
f(w(22,24),w(22,30)).
f(w(9,7),w(9,30)).
f(w(24,1),w(24,30)).
f(w(1,20),w(1,30)).
f(w(15,19),w(15,30)).
f(w(13,4),w(13,30)).
f(w(16,15),w(16,30)).
f(w(18,27),w(18,30)).
f(w(21,8),w(21,30)).
f(w(5,14),w(5,30)).
f(w(24,4),w(24,30)).
f(w(16,18),w(16,30)).
f(w(1,10),w(1,30)).
f(w(24,29),w(24,30)).
f(w(20,17),w(20,30)).
f(w(20,20),w(20,30)).
f(w(9,26),w(9,30)).
f(w(6,23),w(6,30)).
f(w(2,20),w(2,30)).
f(w(12,14),w(12,30)).
f(w(19,7),w(19,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(22,2),w(28,30)).
f(w(22,3),w(16,30)).
f(w(10,25),w(17,10)).
f(w(7,22),w(8,2)).
f(w(8,5),w(27,30)).
f(w(23,19),w(17,18)).
f(w(19,30),w(11,28)).
f(w(7,8),w(27,18)).
f(w(16,23),w(27,30)).
f(w(10,23),w(20,12)).
f(w(13,8),w(9,30)).
f(w(12,24),w(26,30)).
f(w(27,28),w(1,30)).
f(w(29,12),w(11,15)).
f(w(15,7),w(6,7)).
f(w(10,8),w(21,26)).
f(w(15,7),w(17,29)).
f(w(9,11),w(25,22)).
f(w(3,18),w(12,30)).
f(w(17,7),w(18,21)).
f(w(25,25),w(26,6)).
f(w(23,29),w(7,6)).
f(w(2,17),w(6,7)).
f(w(29,17),w(10,25)).
f(w(11,18),w(29,30)).
f(w(29,20),w(23,13)).
f(w(23,15),w(21,20)).
f(w(4,24),w(6,8)).
f(w(3,13),w(10,29)).
f(w(11,10),w(30,23)).
f(w(16,1),w(30,30)).
f(w(12,4),w(6,8)).
f(w(20,12),w(20,6)).
f(w(17,24),w(28,14)).
f(w(13,21),w(11,19)).
f(w(26,9),w(21,30)).
f(w(20,10),w(1,1)).
f(w(18,14),w(13,30)).
f(w(20,16),w(3,8)).
f(w(23,12),w(13,14)).
f(w(15,21),w(10,30)).
f(w(30,15),w(25,30)).
f(w(22,29),w(25,30)).
f(w(30,29),w(9,30)).
f(w(22,1),w(21,30)).
f(w(1,17),w(18,30)).
f(w(8,3),w(1,30)).
f(w(13,7),w(6,24)).
f(w(19,3),w(7,8)).
f(w(9,24),w(24,7)).
f(w(21,14),w(21,10)).
f(w(26,9),w(13,18)).
f(w(5,2),w(16,27)).
f(w(27,2),w(12,9)).
f(w(15,2),w(30,30)).
f(w(8,14),w(19,1)).
f(w(14,14),w(20,13)).
f(w(11,22),w(27,28)).
f(w(14,20),w(22,19)).
f(w(2,18),w(9,30)).
f(w(30,24),w(30,7)).
f(w(12,23),w(27,16)).
f(w(5,13),w(23,2)).
f(w(30,25),w(19,19)).
f(w(20,25),w(21,30)).
f(w(27,3),w(1,12)).
f(w(20,8),w(7,8)).
f(w(21,27),w(17,8)).
f(w(21,5),w(20,30)).
f(w(13,4),w(6,15)).
f(w(20,16),w(10,22)).
f(w(14,21),w(22,30)).
f(w(5,12),w(20,20)).
f(w(11,20),w(28,30)).
f(w(10,18),w(28,30)).
f(w(24,26),w(12,30)).
f(w(21,19),w(29,27)).
f(w(29,26),w(20,6)).
f(w(25,11),w(21,20)).
f(w(29,30),w(24,30)).
f(w(24,21),w(22,19)).
f(w(3,8),w(9,6)).
f(w(10,22),w(14,17)).
f(w(15,15),w(5,15)).
f(w(20,28),w(15,7)).
f(w(16,25),w(15,2)).
f(w(12,27),w(27,16)).
f(w(25,15),w(28,30)).
f(w(19,25),w(26,26)).
f(w(27,9),w(3,30)).
f(w(29,2),w(17,30)).
f(w(16,8),w(24,22)).
f(w(1,13),w(4,14)).
f(w(27,21),w(7,30)).
f(w(6,13),w(29,21)).
f(w(2,6),w(30,30)).
f(w(16,26),w(12,30)).
f(w(20,12),w(3,3)).
f(w(27,2),w(27,5)).
f(w(10,4),w(14,30)).
f(w(2,3),w(15,1)).
f(w(6,10),w(27,30)).
f(w(22,3),w(27,21)).
f(w(28,15),w(25,5)).
f(w(27,11),w(6,30)).
f(w(25,9),w(16,30)).
f(w(20,7),w(23,2)).
f(w(4,11),w(24,26)).
f(w(28,23),w(19,30)).
f(w(8,5),w(5,23)).
f(w(24,4),w(11,30)).
f(w(22,12),w(5,18)).
f(w(8,28),w(11,4)).
f(w(8,19),w(19,30)).
f(w(23,15),w(19,15)).
f(w(27,18),w(14,19)).
f(w(20,10),w(7,30)).
f(w(29,15),w(25,15)).
f(w(21,14),w(23,30)).
f(w(26,11),w(16,22)).
f(w(2,12),w(5,17)).
f(w(3,1),w(1,10)).
f(w(26,13),w(11,15)).
f(w(7,5),w(6,30)).
f(w(25,25),w(2,9)).
f(w(9,18),w(11,20)).
f(w(20,18),w(25,1)).
f(w(7,19),w(18,14)).
f(w(21,2),w(7,9)).
f(w(5,20),w(1,19)).
f(w(4,14),w(18,30)).
f(w(8,9),w(18,3)).
f(w(18,26),w(27,17)).
f(w(1,30),w(12,30)).
f(w(13,25),w(21,14)).
f(w(7,4),w(30,19)).
f(w(19,29),w(8,7)).
f(w(8,14),w(6,27)).
f(w(18,28),w(25,30)).
f(w(17,7),w(17,21)).
f(w(4,24),w(19,2)).
f(w(18,11),w(28,23)).
f(w(14,28),w(3,7)).
f(w(4,10),w(12,30)).
f(w(8,1),w(29,28)).
f(w(20,25),w(22,30)).
f(w(21,28),w(10,26)).
f(w(19,11),w(1,9)).
f(w(10,30),w(3,30)).
f(w(27,17),w(20,5)).
f(w(27,7),w(3,10)).
f(w(1,4),w(13,30)).
f(w(26,16),w(7,26)).
f(w(30,18),w(27,9)).
f(w(17,1),w(14,30)).
f(w(21,8),w(26,18)).
f(w(7,19),w(26,29)).
f(w(6,18),w(7,30)).
f(w(21,3),w(13,20)).
f(w(18,29),w(28,25)).
f(w(5,22),w(20,13)).
f(w(28,13),w(1,8)).
f(w(9,18),w(22,24)).
f(w(22,22),w(23,9)).
f(w(26,3),w(29,13)).
f(w(12,14),w(13,30)).
f(w(27,10),w(28,30)).
f(w(30,3),w(11,30)).
f(w(7,29),w(25,22)).
f(w(18,19),w(5,30)).
f(w(28,4),w(4,19)).
f(w(8,4),w(19,1)).
f(w(19,29),w(1,7)).
f(w(25,23),w(13,12)).
f(w(9,24),w(27,5)).
f(w(1,6),w(26,1)).
f(w(12,29),w(18,30)).
f(w(20,26),w(25,25)).
f(w(2,16),w(28,7)).
f(w(8,4),w(7,30)).
f(w(25,15),w(6,23)).
f(w(10,25),w(1,30)).
f(w(2,29),w(1,30)).
f(w(17,17),w(11,11)).
f(w(19,26),w(4,19)).
f(w(8,11),w(24,30)).
f(w(10,24),w(29,8)).
f(w(10,6),w(3,27)).
f(w(2,2),w(21,5)).
f(w(26,15),w(19,8)).
f(w(17,23),w(16,15)).
f(w(6,22),w(24,4)).
f(w(1,13),w(7,27)).
f(w(12,8),w(6,30)).
f(w(24,12),w(6,30)).
f(w(10,28),w(22,27)).
f(w(14,12),w(5,23)).
f(w(13,30),w(17,8)).
f(w(13,24),w(18,28)).
f(w(24,22),w(15,17)).
f(w(17,28),w(8,30)).
f(w(5,16),w(14,27)).
f(w(5,28),w(4,30)).
f(w(3,21),w(25,30)).
f(w(4,11),w(24,30)).
f(w(10,10),w(12,30)).
f(w(15,6),w(2,30)).
f(w(5,25),w(19,30)).
f(w(16,1),w(16,15)).
f(w(18,29),w(23,30)).
f(w(19,30),w(30,30)).
f(w(18,21),w(1,30)).
f(w(23,16),w(27,13)).
f(w(21,26),w(26,5)).
f(w(10,23),w(4,10)).
f(w(7,12),w(3,30)).
f(w(8,1),w(12,30)).
f(w(5,3),w(7,12)).
f(w(11,10),w(6,29)).
f(w(1,19),w(4,5)).
f(w(21,17),w(18,30)).
f(w(15,13),w(12,4)).
f(w(13,12),w(14,30)).
f(w(4,26),w(4,27)).
f(w(2,11),w(19,30)).
f(w(12,8),w(22,28)).
f(w(6,24),w(6,29)).
f(w(13,28),w(2,8)).
f(w(22,11),w(22,19)).
f(w(16,7),w(11,30)).
f(w(6,6),w(1,30)).
f(w(29,6),w(9,30)).
f(w(3,23),w(19,17)).
f(w(18,29),w(15,15)).
f(w(22,2),w(29,6)).
f(w(30,20),w(2,30)).
f(w(2,24),w(5,30)).
f(w(5,1),w(5,21)).
f(w(24,27),w(28,30)).
f(w(14,15),w(10,1)).
f(w(17,14),w(15,18)).
f(w(5,7),w(17,30)).
f(w(25,15),w(27,23)).
f(w(19,3),w(25,3)).
f(w(5,5),w(29,25)).
f(w(21,6),w(4,9)).
f(w(21,18),w(26,11)).
f(w(1,15),w(21,25)).
f(w(10,22),w(29,18)).
f(w(22,24),w(3,21)).
f(w(18,18),w(2,30)).
f(w(5,28),w(18,9)).
f(w(25,29),w(7,29)).
f(w(26,27),w(25,4)).
f(w(24,7),w(4,30)).
f(w(7,30),w(3,10)).
f(w(3,3),w(16,30)).
f(w(28,18),w(12,30)).
f(w(24,20),w(26,30)).
f(w(6,3),w(2,5)).
f(w(6,25),w(24,30)).
f(w(24,5),w(19,10)).
f(w(1,27),w(22,30)).
f(w(7,1),w(30,30)).
f(w(16,13),w(15,28)).
f(w(15,15),w(8,30)).
f(w(5,14),w(24,4)).
f(w(7,18),w(2,25)).
f(w(8,10),w(6,17)).
f(w(6,3),w(14,16)).
f(w(15,26),w(1,15)).
f(w(5,14),w(19,17)).
f(w(20,19),w(19,15)).
f(w(26,22),w(22,9)).
f(w(20,1),w(20,21)).
f(w(20,12),w(8,23)).
f(w(7,18),w(11,30)).
f(w(2,16),w(23,24)).
f(w(10,27),w(25,30)).
f(w(19,6),w(24,25)).
f(w(18,25),w(3,22)).
f(w(12,3),w(1,21)).
f(w(5,9),w(3,11)).
f(w(4,15),w(18,14)).
f(w(16,25),w(19,11)).
f(w(24,20),w(9,15)).
f(w(6,28),w(3,16)).
f(w(13,13),w(7,30)).
f(w(17,3),w(22,30)).
f(w(9,21),w(6,29)).
f(w(6,26),w(9,7)).
f(w(8,22),w(29,30)).
f(w(17,27),w(28,21)).
f(w(2,9),w(13,30)).
f(w(3,16),w(13,30)).
f(w(19,9),w(11,30)).
f(w(21,19),w(30,8)).
f(w(7,30),w(23,16)).
f(w(25,15),w(27,30)).
f(w(10,23),w(19,14)).
:-end_in_neg.