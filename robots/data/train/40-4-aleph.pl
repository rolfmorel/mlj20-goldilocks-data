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
f(w(31,24),w(31,40)).
f(w(20,35),w(20,40)).
f(w(36,8),w(36,40)).
f(w(31,26),w(31,40)).
f(w(37,34),w(37,40)).
f(w(28,28),w(28,40)).
f(w(15,24),w(15,40)).
f(w(26,29),w(26,40)).
f(w(25,31),w(25,40)).
f(w(7,24),w(7,40)).
f(w(8,21),w(8,40)).
f(w(38,24),w(38,40)).
f(w(36,16),w(36,40)).
f(w(33,4),w(33,40)).
f(w(24,37),w(24,40)).
f(w(16,18),w(16,40)).
f(w(5,4),w(5,40)).
f(w(1,7),w(1,40)).
f(w(28,7),w(28,40)).
f(w(38,38),w(38,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(39,11),w(10,31)).
f(w(19,25),w(16,1)).
f(w(37,7),w(33,36)).
f(w(18,32),w(40,24)).
f(w(6,25),w(25,3)).
f(w(32,31),w(13,11)).
f(w(23,36),w(17,32)).
f(w(3,14),w(17,33)).
f(w(26,11),w(4,14)).
f(w(18,37),w(19,3)).
f(w(31,2),w(18,40)).
f(w(23,7),w(7,40)).
f(w(7,15),w(20,11)).
f(w(17,26),w(15,37)).
f(w(16,20),w(7,37)).
f(w(6,12),w(37,40)).
f(w(12,2),w(11,16)).
f(w(22,13),w(28,23)).
f(w(20,13),w(13,18)).
f(w(39,38),w(38,9)).
:-end_in_neg.
