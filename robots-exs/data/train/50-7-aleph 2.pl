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
f(w(28,9),w(28,30)).
f(w(10,22),w(10,30)).
f(w(10,9),w(10,30)).
f(w(12,20),w(12,30)).
f(w(8,24),w(8,30)).
f(w(26,11),w(26,30)).
f(w(16,29),w(16,30)).
f(w(19,18),w(19,30)).
f(w(9,5),w(9,30)).
f(w(26,9),w(26,30)).
f(w(2,5),w(2,30)).
f(w(26,20),w(26,30)).
f(w(13,22),w(13,30)).
f(w(9,8),w(9,30)).
f(w(19,12),w(19,30)).
f(w(8,22),w(8,30)).
f(w(10,13),w(10,30)).
f(w(21,7),w(21,30)).
f(w(30,28),w(30,30)).
f(w(2,17),w(2,30)).
f(w(1,3),w(1,30)).
f(w(11,4),w(11,30)).
f(w(29,29),w(29,30)).
f(w(25,24),w(25,30)).
f(w(16,22),w(16,30)).
f(w(8,4),w(8,30)).
f(w(16,21),w(16,30)).
f(w(14,29),w(14,30)).
f(w(10,22),w(10,30)).
f(w(21,17),w(21,30)).
f(w(2,16),w(2,30)).
f(w(4,17),w(4,30)).
f(w(5,10),w(5,30)).
f(w(12,1),w(12,30)).
f(w(1,4),w(1,30)).
f(w(9,2),w(9,30)).
f(w(24,11),w(24,30)).
f(w(5,27),w(5,30)).
f(w(19,3),w(19,30)).
f(w(25,9),w(25,30)).
f(w(22,11),w(22,30)).
f(w(18,22),w(18,30)).
f(w(18,24),w(18,30)).
f(w(24,20),w(24,30)).
f(w(10,29),w(10,30)).
f(w(17,7),w(17,30)).
f(w(3,6),w(3,30)).
f(w(2,16),w(2,30)).
f(w(16,6),w(16,30)).
f(w(29,2),w(29,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(22,22),w(25,30)).
f(w(24,26),w(25,30)).
f(w(15,7),w(4,25)).
f(w(24,25),w(20,13)).
f(w(21,9),w(24,30)).
f(w(22,24),w(7,30)).
f(w(1,27),w(18,30)).
f(w(19,9),w(7,27)).
f(w(18,14),w(4,9)).
f(w(11,19),w(26,6)).
f(w(3,17),w(11,30)).
f(w(28,6),w(20,30)).
f(w(26,3),w(16,30)).
f(w(22,2),w(16,20)).
f(w(13,13),w(20,18)).
f(w(16,12),w(6,28)).
f(w(23,24),w(13,24)).
f(w(26,18),w(20,30)).
f(w(18,27),w(7,30)).
f(w(2,4),w(26,22)).
f(w(4,14),w(27,2)).
f(w(26,12),w(2,3)).
f(w(19,30),w(22,30)).
f(w(4,24),w(30,5)).
f(w(18,12),w(16,15)).
f(w(25,5),w(16,12)).
f(w(10,6),w(8,9)).
f(w(7,14),w(25,23)).
f(w(21,16),w(13,13)).
f(w(4,2),w(16,5)).
f(w(9,17),w(10,22)).
f(w(5,24),w(30,25)).
f(w(3,3),w(22,17)).
f(w(22,3),w(6,10)).
f(w(3,27),w(25,30)).
f(w(27,7),w(15,3)).
f(w(17,10),w(30,22)).
f(w(25,29),w(20,22)).
f(w(20,20),w(9,15)).
f(w(12,6),w(27,23)).
f(w(4,5),w(12,30)).
f(w(8,12),w(23,30)).
f(w(2,10),w(28,30)).
f(w(7,14),w(7,19)).
f(w(28,23),w(2,30)).
f(w(10,2),w(5,4)).
f(w(11,22),w(4,29)).
f(w(16,13),w(15,30)).
f(w(4,25),w(15,19)).
f(w(20,26),w(16,19)).
:-end_in_neg.
