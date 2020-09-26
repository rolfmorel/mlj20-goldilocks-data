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
f(w(12,18),w(12,20)).
f(w(14,3),w(14,20)).
f(w(15,19),w(15,20)).
f(w(16,17),w(16,20)).
f(w(5,17),w(5,20)).
f(w(10,19),w(10,20)).
f(w(11,14),w(11,20)).
f(w(11,9),w(11,20)).
f(w(6,19),w(6,20)).
f(w(11,4),w(11,20)).
f(w(14,9),w(14,20)).
f(w(20,14),w(20,20)).
f(w(1,6),w(1,20)).
f(w(17,2),w(17,20)).
f(w(2,16),w(2,20)).
f(w(14,10),w(14,20)).
f(w(8,4),w(8,20)).
f(w(2,4),w(2,20)).
f(w(11,7),w(11,20)).
f(w(15,6),w(15,20)).
:-end_in_pos.
:-begin_in_neg.
f(w(15,4),w(15,16)).
f(w(3,14),w(5,16)).
f(w(5,5),w(4,20)).
f(w(19,14),w(9,5)).
f(w(15,10),w(8,20)).
f(w(1,8),w(5,6)).
f(w(19,17),w(5,20)).
f(w(15,17),w(13,3)).
f(w(19,7),w(16,9)).
f(w(15,7),w(7,3)).
f(w(10,18),w(5,20)).
f(w(9,17),w(13,20)).
f(w(9,19),w(15,20)).
f(w(20,15),w(5,20)).
f(w(9,16),w(13,20)).
f(w(9,11),w(16,7)).
f(w(3,13),w(11,17)).
f(w(17,11),w(10,20)).
f(w(2,11),w(15,4)).
f(w(7,16),w(20,15)).
:-end_in_neg.
