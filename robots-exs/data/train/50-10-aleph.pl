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
f(w(20,21),w(20,30)).
f(w(9,2),w(9,30)).
f(w(9,27),w(9,30)).
f(w(10,25),w(10,30)).
f(w(27,22),w(27,30)).
f(w(25,3),w(25,30)).
f(w(29,3),w(29,30)).
f(w(12,19),w(12,30)).
f(w(29,17),w(29,30)).
f(w(16,8),w(16,30)).
f(w(28,8),w(28,30)).
f(w(13,23),w(13,30)).
f(w(19,29),w(19,30)).
f(w(10,25),w(10,30)).
f(w(2,5),w(2,30)).
f(w(18,11),w(18,30)).
f(w(14,21),w(14,30)).
f(w(9,8),w(9,30)).
f(w(6,9),w(6,30)).
f(w(16,25),w(16,30)).
f(w(10,28),w(10,30)).
f(w(7,11),w(7,30)).
f(w(19,10),w(19,30)).
f(w(10,23),w(10,30)).
f(w(2,24),w(2,30)).
f(w(16,18),w(16,30)).
f(w(27,9),w(27,30)).
f(w(24,15),w(24,30)).
f(w(4,16),w(4,30)).
f(w(4,14),w(4,30)).
f(w(8,28),w(8,30)).
f(w(17,26),w(17,30)).
f(w(8,11),w(8,30)).
f(w(6,3),w(6,30)).
f(w(14,5),w(14,30)).
f(w(28,18),w(28,30)).
f(w(11,6),w(11,30)).
f(w(27,6),w(27,30)).
f(w(10,15),w(10,30)).
f(w(23,9),w(23,30)).
f(w(24,2),w(24,30)).
f(w(18,20),w(18,30)).
f(w(10,8),w(10,30)).
f(w(7,11),w(7,30)).
f(w(15,10),w(15,30)).
f(w(3,29),w(3,30)).
f(w(26,24),w(26,30)).
f(w(4,22),w(4,30)).
f(w(1,9),w(1,30)).
f(w(4,11),w(4,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(12,21),w(26,25)).
f(w(28,12),w(20,24)).
f(w(15,5),w(11,2)).
f(w(1,4),w(27,30)).
f(w(24,4),w(29,24)).
f(w(28,22),w(4,25)).
f(w(5,15),w(11,28)).
f(w(4,11),w(12,22)).
f(w(26,12),w(3,8)).
f(w(1,10),w(21,30)).
f(w(30,7),w(16,21)).
f(w(1,16),w(25,5)).
f(w(22,9),w(2,25)).
f(w(15,26),w(2,27)).
f(w(23,11),w(30,12)).
f(w(25,30),w(26,10)).
f(w(23,15),w(8,18)).
f(w(7,13),w(20,15)).
f(w(11,4),w(9,24)).
f(w(28,21),w(17,4)).
f(w(17,15),w(24,27)).
f(w(16,27),w(11,9)).
f(w(20,17),w(30,23)).
f(w(13,4),w(21,15)).
f(w(26,15),w(14,4)).
f(w(9,7),w(2,16)).
f(w(4,3),w(7,6)).
f(w(30,13),w(23,2)).
f(w(19,17),w(2,11)).
f(w(14,22),w(26,14)).
f(w(28,6),w(19,30)).
f(w(6,5),w(13,3)).
f(w(16,19),w(5,20)).
f(w(25,8),w(20,15)).
f(w(25,22),w(9,30)).
f(w(29,10),w(24,21)).
f(w(6,17),w(26,17)).
f(w(5,1),w(22,2)).
f(w(22,18),w(26,16)).
f(w(25,19),w(12,30)).
f(w(30,13),w(9,5)).
f(w(30,2),w(1,27)).
f(w(5,16),w(28,5)).
f(w(7,5),w(20,30)).
f(w(30,25),w(1,5)).
f(w(22,1),w(1,29)).
f(w(25,27),w(18,30)).
f(w(3,22),w(18,4)).
f(w(4,9),w(25,7)).
f(w(15,29),w(4,13)).
:-end_in_neg.
