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
f(w(5,15),w(5,30)).
f(w(26,2),w(26,30)).
f(w(15,4),w(15,30)).
f(w(3,16),w(3,30)).
f(w(5,24),w(5,30)).
f(w(16,12),w(16,30)).
f(w(9,29),w(9,30)).
f(w(4,3),w(4,30)).
f(w(1,29),w(1,30)).
f(w(24,7),w(24,30)).
f(w(12,7),w(12,30)).
f(w(9,16),w(9,30)).
f(w(22,13),w(22,30)).
f(w(18,6),w(18,30)).
f(w(9,27),w(9,30)).
f(w(11,10),w(11,30)).
f(w(1,1),w(1,30)).
f(w(18,2),w(18,30)).
f(w(14,15),w(14,30)).
f(w(22,10),w(22,30)).
f(w(10,17),w(10,30)).
f(w(9,16),w(9,30)).
f(w(28,25),w(28,30)).
f(w(12,28),w(12,30)).
f(w(8,27),w(8,30)).
f(w(11,7),w(11,30)).
f(w(24,14),w(24,30)).
f(w(10,9),w(10,30)).
f(w(2,25),w(2,30)).
f(w(9,4),w(9,30)).
f(w(5,21),w(5,30)).
f(w(23,24),w(23,30)).
f(w(28,12),w(28,30)).
f(w(20,28),w(20,30)).
f(w(30,28),w(30,30)).
f(w(20,17),w(20,30)).
f(w(5,17),w(5,30)).
f(w(28,10),w(28,30)).
f(w(29,17),w(29,30)).
f(w(4,27),w(4,30)).
f(w(18,18),w(18,30)).
f(w(20,15),w(20,30)).
f(w(18,20),w(18,30)).
f(w(6,9),w(6,30)).
f(w(24,12),w(24,30)).
f(w(6,9),w(6,30)).
f(w(24,27),w(24,30)).
f(w(21,8),w(21,30)).
f(w(5,7),w(5,30)).
f(w(17,23),w(17,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(29,26),w(14,30)).
f(w(5,29),w(28,30)).
f(w(18,14),w(18,14)).
f(w(14,13),w(23,30)).
f(w(16,30),w(23,30)).
f(w(2,2),w(1,26)).
f(w(12,4),w(3,23)).
f(w(16,28),w(7,30)).
f(w(8,22),w(6,30)).
f(w(5,8),w(27,26)).
f(w(11,15),w(9,1)).
f(w(3,15),w(1,30)).
f(w(21,21),w(30,29)).
f(w(26,19),w(30,27)).
f(w(7,12),w(26,29)).
f(w(24,6),w(9,28)).
f(w(25,24),w(5,24)).
f(w(10,10),w(27,17)).
f(w(25,21),w(29,19)).
f(w(22,23),w(16,28)).
f(w(12,18),w(28,30)).
f(w(13,30),w(6,21)).
f(w(27,19),w(18,21)).
f(w(13,9),w(20,18)).
f(w(24,3),w(18,30)).
f(w(10,19),w(17,17)).
f(w(9,9),w(21,27)).
f(w(25,5),w(13,29)).
f(w(9,8),w(24,15)).
f(w(3,9),w(25,6)).
f(w(25,4),w(24,30)).
f(w(28,14),w(27,10)).
f(w(26,26),w(28,29)).
f(w(17,17),w(11,30)).
f(w(14,15),w(29,27)).
f(w(11,1),w(17,17)).
f(w(15,27),w(22,29)).
f(w(15,16),w(7,7)).
f(w(1,28),w(6,13)).
f(w(1,7),w(5,30)).
f(w(6,24),w(18,12)).
f(w(22,14),w(20,21)).
f(w(15,15),w(17,14)).
f(w(8,26),w(10,7)).
f(w(2,13),w(24,7)).
f(w(1,27),w(3,1)).
f(w(23,26),w(24,22)).
f(w(17,7),w(20,20)).
f(w(27,3),w(3,30)).
f(w(29,10),w(4,24)).
:-end_in_neg.