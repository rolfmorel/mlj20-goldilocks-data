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
f(w(22,21),w(22,30)).
f(w(17,8),w(17,30)).
f(w(7,17),w(7,30)).
f(w(11,19),w(11,30)).
f(w(23,4),w(23,30)).
f(w(3,16),w(3,30)).
f(w(22,27),w(22,30)).
f(w(22,24),w(22,30)).
f(w(18,29),w(18,30)).
f(w(3,17),w(3,30)).
f(w(21,9),w(21,30)).
f(w(12,17),w(12,30)).
f(w(5,17),w(5,30)).
f(w(23,10),w(23,30)).
f(w(4,16),w(4,30)).
f(w(7,8),w(7,30)).
f(w(9,5),w(9,30)).
f(w(11,22),w(11,30)).
f(w(2,6),w(2,30)).
f(w(4,3),w(4,30)).
f(w(23,12),w(23,30)).
f(w(21,27),w(21,30)).
f(w(24,27),w(24,30)).
f(w(29,22),w(29,30)).
f(w(18,12),w(18,30)).
f(w(20,2),w(20,30)).
f(w(16,17),w(16,30)).
f(w(14,14),w(14,30)).
f(w(24,23),w(24,30)).
f(w(17,12),w(17,30)).
f(w(25,29),w(25,30)).
f(w(11,13),w(11,30)).
f(w(23,13),w(23,30)).
f(w(12,26),w(12,30)).
f(w(1,22),w(1,30)).
f(w(15,8),w(15,30)).
f(w(14,24),w(14,30)).
f(w(16,6),w(16,30)).
f(w(12,20),w(12,30)).
f(w(30,17),w(30,30)).
f(w(3,8),w(3,30)).
f(w(10,2),w(10,30)).
f(w(11,27),w(11,30)).
f(w(30,14),w(30,30)).
f(w(26,16),w(26,30)).
f(w(11,17),w(11,30)).
f(w(17,11),w(17,30)).
f(w(5,19),w(5,30)).
f(w(27,20),w(27,30)).
f(w(1,26),w(1,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(27,24),w(24,27)).
f(w(24,15),w(30,17)).
f(w(6,24),w(15,30)).
f(w(16,19),w(10,18)).
f(w(14,6),w(6,12)).
f(w(29,17),w(14,28)).
f(w(28,9),w(15,18)).
f(w(7,5),w(2,29)).
f(w(25,3),w(13,18)).
f(w(12,3),w(1,5)).
f(w(29,18),w(6,19)).
f(w(2,3),w(22,30)).
f(w(4,12),w(17,30)).
f(w(11,2),w(14,19)).
f(w(6,8),w(19,30)).
f(w(23,11),w(2,11)).
f(w(23,8),w(25,13)).
f(w(9,12),w(15,18)).
f(w(1,21),w(11,30)).
f(w(21,13),w(25,30)).
f(w(21,20),w(6,14)).
f(w(5,21),w(20,28)).
f(w(4,29),w(29,30)).
f(w(13,9),w(5,29)).
f(w(21,23),w(17,11)).
f(w(18,15),w(2,7)).
f(w(3,2),w(20,25)).
f(w(8,28),w(3,24)).
f(w(21,17),w(7,5)).
f(w(13,9),w(22,2)).
f(w(24,22),w(28,7)).
f(w(26,20),w(24,15)).
f(w(15,4),w(20,30)).
f(w(7,18),w(16,13)).
f(w(13,22),w(2,7)).
f(w(25,1),w(4,30)).
f(w(28,3),w(16,3)).
f(w(11,19),w(7,26)).
f(w(7,21),w(5,23)).
f(w(30,17),w(26,30)).
f(w(10,30),w(25,25)).
f(w(12,9),w(18,8)).
f(w(11,20),w(13,11)).
f(w(16,28),w(19,3)).
f(w(7,26),w(30,20)).
f(w(4,17),w(16,30)).
f(w(12,29),w(4,11)).
f(w(12,21),w(8,14)).
f(w(14,20),w(30,1)).
f(w(5,12),w(22,10)).
:-end_in_neg.
