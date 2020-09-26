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
size(10).
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
f(w(1,6),w(1,10)).
f(w(5,2),w(5,10)).
f(w(9,3),w(9,10)).
f(w(10,4),w(10,10)).
f(w(2,9),w(2,10)).
f(w(10,3),w(10,10)).
f(w(8,5),w(8,10)).
f(w(2,9),w(2,10)).
f(w(5,7),w(5,10)).
f(w(2,2),w(2,10)).
f(w(1,4),w(1,10)).
f(w(9,9),w(9,10)).
f(w(3,5),w(3,10)).
f(w(3,1),w(3,10)).
f(w(8,6),w(8,10)).
f(w(5,7),w(5,10)).
f(w(8,3),w(8,10)).
f(w(3,4),w(3,10)).
f(w(9,2),w(9,10)).
f(w(9,1),w(9,10)).
:-end_in_pos.
:-begin_in_neg.
f(w(6,1),w(10,1)).
f(w(2,10),w(7,4)).
f(w(4,1),w(4,6)).
f(w(10,10),w(8,10)).
f(w(2,4),w(8,10)).
f(w(7,3),w(5,4)).
f(w(7,10),w(1,10)).
f(w(2,1),w(8,3)).
f(w(2,10),w(6,10)).
f(w(1,9),w(7,5)).
f(w(10,7),w(6,6)).
f(w(9,1),w(7,1)).
f(w(5,1),w(10,5)).
f(w(8,9),w(3,5)).
f(w(3,6),w(2,10)).
f(w(4,5),w(9,3)).
f(w(7,10),w(9,2)).
f(w(4,6),w(8,10)).
f(w(4,7),w(10,5)).
f(w(4,8),w(8,10)).
:-end_in_neg.