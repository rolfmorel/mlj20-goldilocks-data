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
f(w(19,25),w(19,40)).
f(w(25,26),w(25,40)).
f(w(3,31),w(3,40)).
f(w(25,39),w(25,40)).
f(w(38,13),w(38,40)).
f(w(23,1),w(23,40)).
f(w(2,19),w(2,40)).
f(w(23,11),w(23,40)).
f(w(39,27),w(39,40)).
f(w(16,28),w(16,40)).
f(w(29,29),w(29,40)).
f(w(24,11),w(24,40)).
f(w(26,11),w(26,40)).
f(w(36,5),w(36,40)).
f(w(2,10),w(2,40)).
f(w(32,14),w(32,40)).
f(w(37,30),w(37,40)).
f(w(24,27),w(24,40)).
f(w(16,33),w(16,40)).
f(w(17,39),w(17,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(30,22),w(25,40)).
f(w(32,5),w(28,28)).
f(w(37,10),w(33,27)).
f(w(39,39),w(22,40)).
f(w(13,28),w(13,34)).
f(w(30,16),w(9,40)).
f(w(11,8),w(31,16)).
f(w(40,36),w(26,8)).
f(w(18,25),w(19,40)).
f(w(31,6),w(1,40)).
f(w(17,32),w(32,25)).
f(w(13,14),w(36,40)).
f(w(27,4),w(26,15)).
f(w(9,10),w(2,35)).
f(w(9,11),w(19,40)).
f(w(33,31),w(15,40)).
f(w(31,15),w(24,40)).
f(w(22,30),w(39,4)).
f(w(12,12),w(26,40)).
f(w(12,29),w(34,40)).
:-end_in_neg.
