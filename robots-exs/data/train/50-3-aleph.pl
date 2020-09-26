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
f(w(6,1),w(6,30)).
f(w(23,28),w(23,30)).
f(w(30,6),w(30,30)).
f(w(9,20),w(9,30)).
f(w(18,21),w(18,30)).
f(w(4,24),w(4,30)).
f(w(12,20),w(12,30)).
f(w(6,11),w(6,30)).
f(w(16,20),w(16,30)).
f(w(3,10),w(3,30)).
f(w(13,23),w(13,30)).
f(w(29,14),w(29,30)).
f(w(18,8),w(18,30)).
f(w(13,3),w(13,30)).
f(w(21,9),w(21,30)).
f(w(17,6),w(17,30)).
f(w(4,29),w(4,30)).
f(w(7,29),w(7,30)).
f(w(10,17),w(10,30)).
f(w(27,2),w(27,30)).
f(w(21,21),w(21,30)).
f(w(11,23),w(11,30)).
f(w(29,14),w(29,30)).
f(w(10,5),w(10,30)).
f(w(1,17),w(1,30)).
f(w(5,4),w(5,30)).
f(w(26,11),w(26,30)).
f(w(26,14),w(26,30)).
f(w(15,5),w(15,30)).
f(w(25,7),w(25,30)).
f(w(2,9),w(2,30)).
f(w(25,9),w(25,30)).
f(w(17,8),w(17,30)).
f(w(15,29),w(15,30)).
f(w(19,15),w(19,30)).
f(w(28,7),w(28,30)).
f(w(2,20),w(2,30)).
f(w(22,10),w(22,30)).
f(w(24,16),w(24,30)).
f(w(7,28),w(7,30)).
f(w(27,15),w(27,30)).
f(w(1,20),w(1,30)).
f(w(19,22),w(19,30)).
f(w(24,20),w(24,30)).
f(w(2,24),w(2,30)).
f(w(8,20),w(8,30)).
f(w(13,21),w(13,30)).
f(w(24,4),w(24,30)).
f(w(4,8),w(4,30)).
f(w(4,18),w(4,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(29,3),w(4,25)).
f(w(27,4),w(26,22)).
f(w(9,19),w(27,8)).
f(w(14,2),w(8,20)).
f(w(29,12),w(18,30)).
f(w(7,6),w(4,4)).
f(w(30,18),w(17,13)).
f(w(28,26),w(12,6)).
f(w(13,30),w(17,18)).
f(w(4,24),w(10,14)).
f(w(29,22),w(16,30)).
f(w(6,8),w(5,26)).
f(w(28,10),w(18,24)).
f(w(2,4),w(24,28)).
f(w(10,4),w(28,26)).
f(w(18,1),w(10,21)).
f(w(20,14),w(4,30)).
f(w(1,21),w(11,30)).
f(w(9,2),w(10,2)).
f(w(17,12),w(19,8)).
f(w(10,22),w(30,30)).
f(w(12,16),w(26,25)).
f(w(26,29),w(23,24)).
f(w(7,21),w(26,30)).
f(w(29,1),w(18,11)).
f(w(28,27),w(5,30)).
f(w(25,30),w(21,30)).
f(w(14,22),w(15,30)).
f(w(21,8),w(10,5)).
f(w(28,18),w(21,30)).
f(w(13,13),w(22,6)).
f(w(3,14),w(18,14)).
f(w(27,23),w(3,3)).
f(w(13,11),w(7,29)).
f(w(11,15),w(18,8)).
f(w(4,30),w(20,12)).
f(w(15,17),w(4,11)).
f(w(3,23),w(3,18)).
f(w(5,16),w(13,13)).
f(w(6,19),w(9,7)).
f(w(26,2),w(27,30)).
f(w(9,29),w(9,15)).
f(w(26,25),w(10,30)).
f(w(12,30),w(14,2)).
f(w(15,18),w(11,14)).
f(w(18,30),w(4,15)).
f(w(27,18),w(16,6)).
f(w(13,3),w(27,5)).
f(w(27,15),w(29,22)).
f(w(30,10),w(10,28)).
:-end_in_neg.
