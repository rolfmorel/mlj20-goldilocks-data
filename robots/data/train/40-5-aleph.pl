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
size(40).
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
f(w(38,27),w(38,40)).
f(w(23,5),w(23,40)).
f(w(21,24),w(21,40)).
f(w(22,20),w(22,40)).
f(w(20,8),w(20,40)).
f(w(8,39),w(8,40)).
f(w(22,10),w(22,40)).
f(w(10,13),w(10,40)).
f(w(6,6),w(6,40)).
f(w(7,31),w(7,40)).
f(w(38,32),w(38,40)).
f(w(35,1),w(35,40)).
f(w(33,28),w(33,40)).
f(w(2,16),w(2,40)).
f(w(40,10),w(40,40)).
f(w(16,29),w(16,40)).
f(w(22,22),w(22,40)).
f(w(40,28),w(40,40)).
f(w(36,13),w(36,40)).
f(w(31,7),w(31,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(10,25),w(23,40)).
f(w(33,13),w(23,40)).
f(w(11,25),w(36,35)).
f(w(25,23),w(29,40)).
f(w(9,15),w(19,40)).
f(w(34,8),w(12,40)).
f(w(25,6),w(17,40)).
f(w(36,37),w(36,30)).
f(w(19,32),w(30,17)).
f(w(35,38),w(12,38)).
f(w(18,1),w(8,40)).
f(w(38,5),w(9,24)).
f(w(13,12),w(40,40)).
f(w(12,39),w(38,9)).
f(w(32,1),w(1,11)).
f(w(29,28),w(35,27)).
f(w(1,33),w(22,1)).
f(w(2,24),w(8,7)).
f(w(33,27),w(22,31)).
f(w(31,2),w(29,30)).
:-end_in_neg.
