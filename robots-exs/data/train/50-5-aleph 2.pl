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
f(w(4,18),w(4,30)).
f(w(22,18),w(22,30)).
f(w(26,15),w(26,30)).
f(w(10,14),w(10,30)).
f(w(3,12),w(3,30)).
f(w(24,12),w(24,30)).
f(w(24,28),w(24,30)).
f(w(8,7),w(8,30)).
f(w(22,27),w(22,30)).
f(w(25,11),w(25,30)).
f(w(5,25),w(5,30)).
f(w(19,11),w(19,30)).
f(w(7,3),w(7,30)).
f(w(24,14),w(24,30)).
f(w(29,19),w(29,30)).
f(w(27,16),w(27,30)).
f(w(26,16),w(26,30)).
f(w(10,18),w(10,30)).
f(w(22,9),w(22,30)).
f(w(3,28),w(3,30)).
f(w(22,28),w(22,30)).
f(w(1,22),w(1,30)).
f(w(1,24),w(1,30)).
f(w(3,3),w(3,30)).
f(w(9,23),w(9,30)).
f(w(22,11),w(22,30)).
f(w(10,10),w(10,30)).
f(w(27,2),w(27,30)).
f(w(23,21),w(23,30)).
f(w(24,14),w(24,30)).
f(w(18,11),w(18,30)).
f(w(23,17),w(23,30)).
f(w(28,19),w(28,30)).
f(w(17,16),w(17,30)).
f(w(14,26),w(14,30)).
f(w(10,28),w(10,30)).
f(w(14,10),w(14,30)).
f(w(7,15),w(7,30)).
f(w(19,11),w(19,30)).
f(w(15,20),w(15,30)).
f(w(2,16),w(2,30)).
f(w(28,24),w(28,30)).
f(w(14,5),w(14,30)).
f(w(4,17),w(4,30)).
f(w(8,10),w(8,30)).
f(w(14,7),w(14,30)).
f(w(27,18),w(27,30)).
f(w(9,3),w(9,30)).
f(w(29,2),w(29,30)).
f(w(6,1),w(6,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(14,20),w(30,20)).
f(w(25,29),w(16,30)).
f(w(28,18),w(22,16)).
f(w(26,30),w(29,8)).
f(w(3,6),w(28,30)).
f(w(6,3),w(23,22)).
f(w(1,21),w(12,3)).
f(w(16,4),w(16,18)).
f(w(30,9),w(4,29)).
f(w(18,2),w(2,30)).
f(w(15,9),w(17,9)).
f(w(13,26),w(30,14)).
f(w(16,14),w(7,4)).
f(w(3,22),w(29,24)).
f(w(5,11),w(5,16)).
f(w(4,11),w(24,30)).
f(w(13,26),w(1,16)).
f(w(7,24),w(23,18)).
f(w(23,30),w(16,30)).
f(w(18,18),w(17,30)).
f(w(19,15),w(23,30)).
f(w(30,10),w(30,29)).
f(w(17,13),w(13,30)).
f(w(13,20),w(16,30)).
f(w(1,14),w(22,27)).
f(w(16,13),w(13,30)).
f(w(27,18),w(16,12)).
f(w(11,12),w(6,26)).
f(w(21,8),w(23,1)).
f(w(6,14),w(11,30)).
f(w(6,6),w(24,7)).
f(w(18,8),w(2,30)).
f(w(12,21),w(9,2)).
f(w(16,22),w(23,9)).
f(w(12,29),w(10,25)).
f(w(10,27),w(25,29)).
f(w(27,9),w(26,4)).
f(w(8,8),w(11,27)).
f(w(23,18),w(18,25)).
f(w(23,19),w(3,9)).
f(w(25,24),w(30,27)).
f(w(1,15),w(28,20)).
f(w(14,17),w(30,30)).
f(w(3,8),w(17,26)).
f(w(28,7),w(11,30)).
f(w(13,1),w(19,23)).
f(w(15,21),w(7,20)).
f(w(19,6),w(16,15)).
f(w(15,12),w(17,30)).
f(w(2,12),w(25,10)).
:-end_in_neg.
