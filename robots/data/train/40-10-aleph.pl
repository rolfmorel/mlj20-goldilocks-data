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
:- modeb(*,f(+state,-state)).

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
:- determination(f/2,f/2).


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
nonvar(X1),

    size(Size),
    X1 < Size,
    X2  is  X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
	nonvar(X1),
    X1 > 1,
    X2  is  X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
	nonvar(Y1),
    size(Size),
    Y1 < Size,
    Y2  is  Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
	nonvar(Y1),
    Y1 > 1,
    Y2  is  Y1 - 1.
:-end_bg.
:-begin_in_pos.
f(w(13,8),w(13,40)).
f(w(9,21),w(9,40)).
f(w(9,14),w(9,40)).
f(w(6,14),w(6,40)).
f(w(6,1),w(6,40)).
f(w(16,26),w(16,40)).
f(w(1,27),w(1,40)).
f(w(3,18),w(3,40)).
f(w(30,31),w(30,40)).
f(w(35,7),w(35,40)).
f(w(1,7),w(1,40)).
f(w(20,26),w(20,40)).
f(w(30,3),w(30,40)).
f(w(31,18),w(31,40)).
f(w(28,33),w(28,40)).
f(w(22,24),w(22,40)).
f(w(16,4),w(16,40)).
f(w(37,18),w(37,40)).
f(w(8,35),w(8,40)).
f(w(13,30),w(13,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(18,25),w(18,29)).
f(w(27,30),w(26,12)).
f(w(18,28),w(34,25)).
f(w(16,4),w(5,7)).
f(w(20,4),w(17,15)).
f(w(18,13),w(33,14)).
f(w(18,26),w(15,40)).
f(w(12,9),w(5,40)).
f(w(20,8),w(37,14)).
f(w(18,34),w(6,35)).
f(w(3,12),w(3,15)).
f(w(26,8),w(12,40)).
f(w(20,11),w(32,22)).
f(w(35,32),w(7,40)).
f(w(1,36),w(5,11)).
f(w(10,1),w(7,17)).
f(w(34,36),w(16,15)).
f(w(13,9),w(29,40)).
f(w(27,30),w(20,23)).
f(w(28,3),w(6,40)).
:-end_in_neg.
