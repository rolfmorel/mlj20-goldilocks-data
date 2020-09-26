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
f(w(24,25),w(24,30)).
f(w(27,28),w(27,30)).
f(w(25,28),w(25,30)).
f(w(27,3),w(27,30)).
f(w(18,16),w(18,30)).
f(w(12,20),w(12,30)).
f(w(30,5),w(30,30)).
f(w(12,8),w(12,30)).
f(w(17,26),w(17,30)).
f(w(5,6),w(5,30)).
f(w(8,6),w(8,30)).
f(w(6,21),w(6,30)).
f(w(28,1),w(28,30)).
f(w(8,25),w(8,30)).
f(w(15,10),w(15,30)).
f(w(16,3),w(16,30)).
f(w(7,26),w(7,30)).
f(w(5,7),w(5,30)).
f(w(30,3),w(30,30)).
f(w(29,24),w(29,30)).
f(w(24,1),w(24,30)).
f(w(2,10),w(2,30)).
f(w(27,25),w(27,30)).
f(w(17,29),w(17,30)).
f(w(25,29),w(25,30)).
f(w(10,21),w(10,30)).
f(w(9,28),w(9,30)).
f(w(30,9),w(30,30)).
f(w(3,12),w(3,30)).
f(w(19,21),w(19,30)).
f(w(11,29),w(11,30)).
f(w(13,21),w(13,30)).
f(w(8,23),w(8,30)).
f(w(22,20),w(22,30)).
f(w(24,27),w(24,30)).
f(w(12,10),w(12,30)).
f(w(11,4),w(11,30)).
f(w(14,23),w(14,30)).
f(w(22,7),w(22,30)).
f(w(28,22),w(28,30)).
f(w(28,5),w(28,30)).
f(w(22,17),w(22,30)).
f(w(17,1),w(17,30)).
f(w(16,19),w(16,30)).
f(w(14,24),w(14,30)).
f(w(24,9),w(24,30)).
f(w(11,28),w(11,30)).
f(w(8,23),w(8,30)).
f(w(10,19),w(10,30)).
f(w(19,19),w(19,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(7,25),w(25,30)).
f(w(7,7),w(2,30)).
f(w(27,17),w(10,11)).
f(w(15,29),w(27,9)).
f(w(20,2),w(4,10)).
f(w(23,21),w(20,27)).
f(w(26,18),w(6,30)).
f(w(14,26),w(12,10)).
f(w(23,17),w(11,4)).
f(w(6,5),w(18,29)).
f(w(29,4),w(6,10)).
f(w(23,7),w(2,30)).
f(w(2,22),w(22,1)).
f(w(5,9),w(3,15)).
f(w(11,19),w(3,14)).
f(w(10,17),w(8,30)).
f(w(16,3),w(29,13)).
f(w(10,22),w(20,11)).
f(w(30,29),w(27,1)).
f(w(26,6),w(27,22)).
f(w(12,7),w(25,19)).
f(w(5,3),w(28,13)).
f(w(7,10),w(2,10)).
f(w(1,15),w(19,30)).
f(w(29,27),w(2,18)).
f(w(10,15),w(18,1)).
f(w(4,24),w(13,26)).
f(w(30,3),w(5,28)).
f(w(6,9),w(21,30)).
f(w(6,7),w(27,24)).
f(w(7,21),w(19,15)).
f(w(10,3),w(14,16)).
f(w(2,28),w(11,6)).
f(w(29,9),w(30,30)).
f(w(22,7),w(20,9)).
f(w(1,11),w(27,26)).
f(w(26,1),w(27,2)).
f(w(9,8),w(25,5)).
f(w(30,8),w(16,5)).
f(w(28,10),w(13,25)).
f(w(19,6),w(27,4)).
f(w(6,23),w(19,13)).
f(w(18,25),w(16,17)).
f(w(9,20),w(2,25)).
f(w(1,19),w(14,9)).
f(w(13,7),w(21,8)).
f(w(6,30),w(3,21)).
f(w(22,2),w(12,18)).
f(w(5,16),w(10,6)).
f(w(5,29),w(14,9)).
:-end_in_neg.
