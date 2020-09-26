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
f(w(6,8),w(6,30)).
f(w(2,26),w(2,30)).
f(w(20,2),w(20,30)).
f(w(2,15),w(2,30)).
f(w(19,27),w(19,30)).
f(w(12,28),w(12,30)).
f(w(5,3),w(5,30)).
f(w(19,13),w(19,30)).
f(w(14,20),w(14,30)).
f(w(17,18),w(17,30)).
f(w(28,27),w(28,30)).
f(w(25,21),w(25,30)).
f(w(29,21),w(29,30)).
f(w(19,2),w(19,30)).
f(w(1,29),w(1,30)).
f(w(2,15),w(2,30)).
f(w(18,28),w(18,30)).
f(w(11,10),w(11,30)).
f(w(12,5),w(12,30)).
f(w(18,20),w(18,30)).
f(w(21,5),w(21,30)).
f(w(6,1),w(6,30)).
f(w(28,4),w(28,30)).
f(w(24,22),w(24,30)).
f(w(12,5),w(12,30)).
f(w(15,15),w(15,30)).
f(w(24,29),w(24,30)).
f(w(17,12),w(17,30)).
f(w(23,22),w(23,30)).
f(w(14,29),w(14,30)).
f(w(11,17),w(11,30)).
f(w(14,15),w(14,30)).
f(w(24,24),w(24,30)).
f(w(16,18),w(16,30)).
f(w(10,2),w(10,30)).
f(w(23,4),w(23,30)).
f(w(29,1),w(29,30)).
f(w(24,17),w(24,30)).
f(w(25,22),w(25,30)).
f(w(11,25),w(11,30)).
f(w(9,28),w(9,30)).
f(w(19,18),w(19,30)).
f(w(6,21),w(6,30)).
f(w(9,13),w(9,30)).
f(w(26,17),w(26,30)).
f(w(2,18),w(2,30)).
f(w(24,25),w(24,30)).
f(w(9,9),w(9,30)).
f(w(16,2),w(16,30)).
f(w(13,2),w(13,30)).
f(w(1,17),w(1,30)).
f(w(11,29),w(11,30)).
f(w(6,25),w(6,30)).
f(w(22,29),w(22,30)).
f(w(24,8),w(24,30)).
f(w(16,23),w(16,30)).
f(w(5,9),w(5,30)).
f(w(22,6),w(22,30)).
f(w(17,22),w(17,30)).
f(w(25,25),w(25,30)).
f(w(8,21),w(8,30)).
f(w(28,26),w(28,30)).
f(w(2,3),w(2,30)).
f(w(15,18),w(15,30)).
f(w(21,29),w(21,30)).
f(w(3,7),w(3,30)).
f(w(29,21),w(29,30)).
f(w(14,19),w(14,30)).
f(w(4,26),w(4,30)).
f(w(8,22),w(8,30)).
f(w(9,14),w(9,30)).
f(w(19,21),w(19,30)).
f(w(26,16),w(26,30)).
f(w(6,17),w(6,30)).
f(w(21,14),w(21,30)).
f(w(2,2),w(2,30)).
f(w(11,5),w(11,30)).
f(w(25,9),w(25,30)).
f(w(8,14),w(8,30)).
f(w(22,5),w(22,30)).
f(w(1,25),w(1,30)).
f(w(13,2),w(13,30)).
f(w(21,28),w(21,30)).
f(w(7,10),w(7,30)).
f(w(5,10),w(5,30)).
f(w(27,18),w(27,30)).
f(w(15,11),w(15,30)).
f(w(19,12),w(19,30)).
f(w(20,6),w(20,30)).
f(w(13,16),w(13,30)).
f(w(10,7),w(10,30)).
f(w(6,15),w(6,30)).
f(w(19,18),w(19,30)).
f(w(4,6),w(4,30)).
f(w(23,28),w(23,30)).
f(w(17,7),w(17,30)).
f(w(15,17),w(15,30)).
f(w(19,3),w(19,30)).
f(w(5,16),w(5,30)).
f(w(17,27),w(17,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(18,30),w(21,28)).
f(w(30,12),w(18,12)).
f(w(27,19),w(11,27)).
f(w(12,24),w(15,13)).
f(w(13,10),w(3,7)).
f(w(2,14),w(23,30)).
f(w(21,1),w(27,30)).
f(w(20,10),w(17,17)).
f(w(5,3),w(18,2)).
f(w(23,29),w(26,24)).
f(w(7,22),w(26,28)).
f(w(7,24),w(14,15)).
f(w(5,25),w(18,7)).
f(w(23,3),w(15,16)).
f(w(13,26),w(29,28)).
f(w(21,29),w(30,30)).
f(w(12,15),w(12,25)).
f(w(27,21),w(28,9)).
f(w(29,26),w(16,30)).
f(w(30,25),w(16,30)).
f(w(28,28),w(22,1)).
f(w(1,23),w(27,30)).
f(w(27,9),w(27,14)).
f(w(6,15),w(7,5)).
f(w(1,30),w(22,27)).
f(w(12,6),w(4,30)).
f(w(20,28),w(19,6)).
f(w(17,9),w(4,30)).
f(w(16,22),w(27,30)).
f(w(8,29),w(27,20)).
f(w(29,1),w(25,16)).
f(w(18,1),w(26,22)).
f(w(29,29),w(4,20)).
f(w(14,22),w(2,7)).
f(w(20,17),w(24,15)).
f(w(1,3),w(13,3)).
f(w(20,20),w(18,19)).
f(w(22,20),w(17,9)).
f(w(7,22),w(1,11)).
f(w(2,21),w(9,18)).
f(w(8,17),w(3,1)).
f(w(3,6),w(11,25)).
f(w(17,1),w(16,13)).
f(w(23,20),w(15,21)).
f(w(13,3),w(11,2)).
f(w(30,24),w(12,30)).
f(w(18,21),w(7,30)).
f(w(26,28),w(14,30)).
f(w(28,22),w(23,14)).
f(w(12,22),w(7,10)).
f(w(22,28),w(9,17)).
f(w(3,26),w(24,19)).
f(w(9,22),w(2,14)).
f(w(18,3),w(1,30)).
f(w(18,29),w(10,30)).
f(w(9,2),w(18,30)).
f(w(27,23),w(26,21)).
f(w(7,5),w(29,30)).
f(w(7,24),w(2,30)).
f(w(4,29),w(21,5)).
f(w(23,6),w(4,13)).
f(w(23,30),w(20,30)).
f(w(27,29),w(4,30)).
f(w(9,6),w(4,9)).
f(w(2,30),w(14,9)).
f(w(17,30),w(26,22)).
f(w(4,19),w(7,7)).
f(w(17,27),w(11,30)).
f(w(20,7),w(11,30)).
f(w(10,5),w(25,6)).
f(w(2,26),w(25,28)).
f(w(27,26),w(9,30)).
f(w(3,25),w(1,6)).
f(w(7,12),w(12,30)).
f(w(20,19),w(17,4)).
f(w(12,6),w(18,27)).
f(w(4,26),w(9,28)).
f(w(16,15),w(4,30)).
f(w(28,27),w(24,30)).
f(w(3,25),w(11,7)).
f(w(2,27),w(7,3)).
f(w(7,16),w(6,5)).
f(w(2,3),w(9,4)).
f(w(25,20),w(16,9)).
f(w(13,12),w(4,6)).
f(w(1,9),w(16,26)).
f(w(15,18),w(20,17)).
f(w(21,25),w(2,25)).
f(w(26,30),w(28,30)).
f(w(16,10),w(11,4)).
f(w(26,1),w(28,30)).
f(w(16,15),w(5,30)).
f(w(29,4),w(25,1)).
f(w(30,19),w(18,26)).
f(w(17,22),w(14,4)).
f(w(9,9),w(10,25)).
f(w(23,27),w(27,17)).
f(w(25,28),w(17,30)).
f(w(7,9),w(12,30)).
f(w(4,25),w(27,30)).
:-end_in_neg.