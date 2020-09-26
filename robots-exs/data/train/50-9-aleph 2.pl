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
f(w(28,14),w(28,30)).
f(w(3,12),w(3,30)).
f(w(11,29),w(11,30)).
f(w(14,13),w(14,30)).
f(w(1,21),w(1,30)).
f(w(25,3),w(25,30)).
f(w(22,26),w(22,30)).
f(w(23,3),w(23,30)).
f(w(13,28),w(13,30)).
f(w(25,18),w(25,30)).
f(w(20,13),w(20,30)).
f(w(26,15),w(26,30)).
f(w(13,28),w(13,30)).
f(w(14,2),w(14,30)).
f(w(25,14),w(25,30)).
f(w(29,10),w(29,30)).
f(w(10,19),w(10,30)).
f(w(21,2),w(21,30)).
f(w(9,27),w(9,30)).
f(w(11,29),w(11,30)).
f(w(18,1),w(18,30)).
f(w(2,27),w(2,30)).
f(w(11,8),w(11,30)).
f(w(21,22),w(21,30)).
f(w(28,14),w(28,30)).
f(w(29,6),w(29,30)).
f(w(6,28),w(6,30)).
f(w(15,16),w(15,30)).
f(w(21,19),w(21,30)).
f(w(8,5),w(8,30)).
f(w(13,10),w(13,30)).
f(w(7,23),w(7,30)).
f(w(5,15),w(5,30)).
f(w(20,27),w(20,30)).
f(w(23,2),w(23,30)).
f(w(23,18),w(23,30)).
f(w(19,9),w(19,30)).
f(w(27,17),w(27,30)).
f(w(4,23),w(4,30)).
f(w(16,6),w(16,30)).
f(w(4,4),w(4,30)).
f(w(26,24),w(26,30)).
f(w(11,5),w(11,30)).
f(w(4,12),w(4,30)).
f(w(15,21),w(15,30)).
f(w(16,8),w(16,30)).
f(w(7,29),w(7,30)).
f(w(11,8),w(11,30)).
f(w(22,8),w(22,30)).
f(w(28,15),w(28,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(30,17),w(13,20)).
f(w(11,8),w(1,23)).
f(w(29,19),w(4,30)).
f(w(17,4),w(27,27)).
f(w(16,13),w(22,26)).
f(w(22,26),w(4,28)).
f(w(22,11),w(29,30)).
f(w(24,30),w(25,25)).
f(w(16,29),w(13,27)).
f(w(25,8),w(12,8)).
f(w(16,22),w(26,24)).
f(w(10,5),w(15,13)).
f(w(30,8),w(29,21)).
f(w(14,11),w(17,23)).
f(w(6,7),w(29,23)).
f(w(22,6),w(1,17)).
f(w(3,6),w(20,25)).
f(w(9,9),w(23,30)).
f(w(10,4),w(29,30)).
f(w(9,6),w(8,30)).
f(w(25,19),w(11,10)).
f(w(22,2),w(5,14)).
f(w(2,13),w(15,30)).
f(w(30,3),w(26,27)).
f(w(5,10),w(10,30)).
f(w(7,11),w(13,19)).
f(w(11,25),w(25,3)).
f(w(3,9),w(2,30)).
f(w(30,28),w(17,19)).
f(w(30,22),w(5,30)).
f(w(30,10),w(26,15)).
f(w(6,23),w(14,30)).
f(w(18,15),w(25,13)).
f(w(13,9),w(20,30)).
f(w(15,22),w(17,30)).
f(w(10,16),w(5,2)).
f(w(19,30),w(4,30)).
f(w(21,13),w(19,5)).
f(w(28,13),w(18,15)).
f(w(21,18),w(30,8)).
f(w(7,4),w(19,30)).
f(w(30,18),w(6,30)).
f(w(5,28),w(24,7)).
f(w(19,18),w(1,30)).
f(w(22,8),w(14,11)).
f(w(2,30),w(25,20)).
f(w(18,4),w(27,28)).
f(w(4,16),w(24,17)).
f(w(14,22),w(3,6)).
f(w(17,12),w(25,12)).
:-end_in_neg.
