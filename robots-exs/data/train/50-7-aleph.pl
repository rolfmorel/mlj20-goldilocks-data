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
f(w(14,13),w(14,30)).
f(w(23,14),w(23,30)).
f(w(22,15),w(22,30)).
f(w(7,26),w(7,30)).
f(w(6,19),w(6,30)).
f(w(17,8),w(17,30)).
f(w(20,1),w(20,30)).
f(w(22,20),w(22,30)).
f(w(22,6),w(22,30)).
f(w(21,3),w(21,30)).
f(w(2,8),w(2,30)).
f(w(30,29),w(30,30)).
f(w(6,14),w(6,30)).
f(w(24,20),w(24,30)).
f(w(9,25),w(9,30)).
f(w(8,9),w(8,30)).
f(w(12,19),w(12,30)).
f(w(26,8),w(26,30)).
f(w(22,5),w(22,30)).
f(w(26,1),w(26,30)).
f(w(3,17),w(3,30)).
f(w(27,4),w(27,30)).
f(w(29,15),w(29,30)).
f(w(13,2),w(13,30)).
f(w(18,26),w(18,30)).
f(w(18,17),w(18,30)).
f(w(25,1),w(25,30)).
f(w(23,2),w(23,30)).
f(w(10,19),w(10,30)).
f(w(29,1),w(29,30)).
f(w(5,28),w(5,30)).
f(w(21,13),w(21,30)).
f(w(11,26),w(11,30)).
f(w(25,26),w(25,30)).
f(w(12,17),w(12,30)).
f(w(20,13),w(20,30)).
f(w(11,29),w(11,30)).
f(w(3,17),w(3,30)).
f(w(28,29),w(28,30)).
f(w(24,9),w(24,30)).
f(w(14,21),w(14,30)).
f(w(26,18),w(26,30)).
f(w(17,19),w(17,30)).
f(w(24,29),w(24,30)).
f(w(25,6),w(25,30)).
f(w(28,9),w(28,30)).
f(w(10,21),w(10,30)).
f(w(3,25),w(3,30)).
f(w(3,5),w(3,30)).
f(w(16,8),w(16,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(14,1),w(30,11)).
f(w(4,4),w(12,22)).
f(w(26,21),w(10,30)).
f(w(17,23),w(4,17)).
f(w(21,3),w(8,5)).
f(w(28,4),w(11,30)).
f(w(24,17),w(19,10)).
f(w(19,30),w(8,15)).
f(w(30,4),w(28,2)).
f(w(25,22),w(9,30)).
f(w(4,24),w(19,10)).
f(w(27,20),w(26,9)).
f(w(3,1),w(25,9)).
f(w(17,1),w(26,16)).
f(w(6,23),w(12,30)).
f(w(18,21),w(25,21)).
f(w(13,30),w(19,11)).
f(w(29,19),w(4,30)).
f(w(3,17),w(23,11)).
f(w(16,23),w(22,19)).
f(w(25,25),w(2,13)).
f(w(24,22),w(18,11)).
f(w(16,29),w(15,23)).
f(w(23,29),w(24,28)).
f(w(8,17),w(15,25)).
f(w(11,16),w(14,9)).
f(w(17,28),w(19,18)).
f(w(21,15),w(23,30)).
f(w(12,5),w(14,18)).
f(w(9,29),w(6,30)).
f(w(28,14),w(5,2)).
f(w(17,3),w(27,5)).
f(w(13,22),w(13,17)).
f(w(11,27),w(11,5)).
f(w(18,16),w(1,22)).
f(w(6,1),w(30,3)).
f(w(29,15),w(12,6)).
f(w(29,30),w(20,30)).
f(w(26,3),w(7,7)).
f(w(8,24),w(26,17)).
f(w(28,29),w(7,5)).
f(w(26,4),w(23,30)).
f(w(22,22),w(8,2)).
f(w(16,23),w(23,10)).
f(w(4,24),w(5,30)).
f(w(24,30),w(15,21)).
f(w(21,6),w(13,30)).
f(w(27,20),w(29,10)).
f(w(5,3),w(15,17)).
f(w(10,3),w(5,30)).
:-end_in_neg.
