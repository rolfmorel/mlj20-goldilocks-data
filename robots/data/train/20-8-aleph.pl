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
f(w(14,19),w(14,20)).
f(w(19,19),w(19,20)).
f(w(5,17),w(5,20)).
f(w(7,1),w(7,20)).
f(w(9,19),w(9,20)).
f(w(10,1),w(10,20)).
f(w(9,16),w(9,20)).
f(w(13,16),w(13,20)).
f(w(20,6),w(20,20)).
f(w(3,8),w(3,20)).
f(w(1,12),w(1,20)).
f(w(15,15),w(15,20)).
f(w(11,15),w(11,20)).
f(w(11,19),w(11,20)).
f(w(7,8),w(7,20)).
f(w(3,19),w(3,20)).
f(w(2,3),w(2,20)).
f(w(9,5),w(9,20)).
f(w(18,19),w(18,20)).
f(w(16,10),w(16,20)).
:-end_in_pos.
:-begin_in_neg.
f(w(12,19),w(7,14)).
f(w(7,3),w(3,9)).
f(w(14,17),w(10,20)).
f(w(6,9),w(14,20)).
f(w(16,6),w(11,8)).
f(w(11,1),w(10,20)).
f(w(14,13),w(15,4)).
f(w(12,12),w(20,19)).
f(w(3,12),w(12,20)).
f(w(12,10),w(6,6)).
f(w(18,18),w(5,5)).
f(w(5,6),w(14,20)).
f(w(11,10),w(10,9)).
f(w(5,9),w(14,8)).
f(w(14,7),w(16,6)).
f(w(13,12),w(6,20)).
f(w(8,3),w(9,10)).
f(w(12,20),w(6,9)).
f(w(16,3),w(7,18)).
f(w(14,11),w(11,19)).
:-end_in_neg.
