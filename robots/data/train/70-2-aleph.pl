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
size(70).
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
f(w(63,57),w(63,70)).
f(w(58,28),w(58,70)).
f(w(34,1),w(34,70)).
f(w(21,62),w(21,70)).
f(w(1,55),w(1,70)).
f(w(6,1),w(6,70)).
f(w(7,61),w(7,70)).
f(w(64,23),w(64,70)).
f(w(20,49),w(20,70)).
f(w(54,14),w(54,70)).
f(w(2,58),w(2,70)).
f(w(32,60),w(32,70)).
f(w(69,51),w(69,70)).
f(w(31,44),w(31,70)).
f(w(55,56),w(55,70)).
f(w(6,51),w(6,70)).
f(w(44,39),w(44,70)).
f(w(61,18),w(61,70)).
f(w(56,12),w(56,70)).
f(w(43,42),w(43,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(2,26),w(43,38)).
f(w(28,56),w(29,70)).
f(w(58,47),w(43,18)).
f(w(58,8),w(47,66)).
f(w(60,69),w(68,31)).
f(w(9,9),w(20,42)).
f(w(40,1),w(2,50)).
f(w(30,57),w(57,9)).
f(w(11,24),w(60,70)).
f(w(12,42),w(51,70)).
f(w(31,9),w(25,19)).
f(w(61,41),w(62,5)).
f(w(62,17),w(61,50)).
f(w(6,60),w(8,14)).
f(w(7,61),w(61,56)).
f(w(68,27),w(26,58)).
f(w(25,26),w(20,45)).
f(w(66,13),w(51,29)).
f(w(14,57),w(12,24)).
f(w(3,19),w(69,24)).
:-end_in_neg.
