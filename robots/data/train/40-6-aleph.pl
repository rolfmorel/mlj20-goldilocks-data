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
f(w(24,27),w(24,40)).
f(w(10,12),w(10,40)).
f(w(5,23),w(5,40)).
f(w(40,16),w(40,40)).
f(w(33,14),w(33,40)).
f(w(17,39),w(17,40)).
f(w(18,1),w(18,40)).
f(w(12,8),w(12,40)).
f(w(15,27),w(15,40)).
f(w(6,27),w(6,40)).
f(w(30,16),w(30,40)).
f(w(3,28),w(3,40)).
f(w(26,39),w(26,40)).
f(w(31,35),w(31,40)).
f(w(40,2),w(40,40)).
f(w(37,10),w(37,40)).
f(w(3,30),w(3,40)).
f(w(5,3),w(5,40)).
f(w(34,26),w(34,40)).
f(w(5,10),w(5,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(40,31),w(21,7)).
f(w(16,31),w(3,34)).
f(w(8,9),w(16,20)).
f(w(11,37),w(2,40)).
f(w(31,25),w(13,14)).
f(w(14,38),w(19,20)).
f(w(39,39),w(23,12)).
f(w(25,35),w(39,15)).
f(w(37,10),w(19,14)).
f(w(39,39),w(12,38)).
f(w(19,40),w(39,40)).
f(w(31,25),w(11,18)).
f(w(20,39),w(34,13)).
f(w(32,32),w(9,40)).
f(w(5,17),w(2,9)).
f(w(22,16),w(24,40)).
f(w(25,7),w(7,12)).
f(w(33,9),w(18,40)).
f(w(35,16),w(24,3)).
f(w(31,25),w(14,15)).
:-end_in_neg.
