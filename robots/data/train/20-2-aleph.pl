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
size(20).
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
f(w(10,11),w(10,20)).
f(w(8,12),w(8,20)).
f(w(2,17),w(2,20)).
f(w(1,2),w(1,20)).
f(w(17,8),w(17,20)).
f(w(9,2),w(9,20)).
f(w(4,7),w(4,20)).
f(w(12,6),w(12,20)).
f(w(19,4),w(19,20)).
f(w(3,17),w(3,20)).
f(w(12,18),w(12,20)).
f(w(7,7),w(7,20)).
f(w(6,8),w(6,20)).
f(w(7,14),w(7,20)).
f(w(19,12),w(19,20)).
f(w(6,8),w(6,20)).
f(w(13,16),w(13,20)).
f(w(10,19),w(10,20)).
f(w(14,1),w(14,20)).
f(w(8,9),w(8,20)).
:-end_in_pos.
:-begin_in_neg.
f(w(11,5),w(1,20)).
f(w(9,16),w(14,17)).
f(w(16,1),w(13,20)).
f(w(3,11),w(3,14)).
f(w(8,8),w(16,13)).
f(w(9,13),w(15,5)).
f(w(10,6),w(13,17)).
f(w(16,18),w(6,4)).
f(w(6,3),w(19,5)).
f(w(6,18),w(4,14)).
f(w(5,1),w(2,15)).
f(w(14,14),w(1,16)).
f(w(8,2),w(13,20)).
f(w(16,2),w(5,14)).
f(w(10,13),w(4,12)).
f(w(1,7),w(10,15)).
f(w(15,10),w(13,9)).
f(w(19,12),w(4,6)).
f(w(7,3),w(16,20)).
f(w(12,19),w(15,3)).
:-end_in_neg.
