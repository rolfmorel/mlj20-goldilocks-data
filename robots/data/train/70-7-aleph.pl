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
size(70).
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
f(w(20,31),w(20,70)).
f(w(20,12),w(20,70)).
f(w(9,57),w(9,70)).
f(w(10,37),w(10,70)).
f(w(1,48),w(1,70)).
f(w(5,60),w(5,70)).
f(w(31,59),w(31,70)).
f(w(60,31),w(60,70)).
f(w(67,20),w(67,70)).
f(w(51,68),w(51,70)).
f(w(2,60),w(2,70)).
f(w(2,12),w(2,70)).
f(w(44,23),w(44,70)).
f(w(63,64),w(63,70)).
f(w(63,15),w(63,70)).
f(w(19,67),w(19,70)).
f(w(32,5),w(32,70)).
f(w(46,34),w(46,70)).
f(w(39,63),w(39,70)).
f(w(12,37),w(12,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(70,41),w(53,54)).
f(w(30,47),w(11,70)).
f(w(6,37),w(34,70)).
f(w(57,18),w(10,22)).
f(w(64,35),w(38,20)).
f(w(53,17),w(24,70)).
f(w(22,12),w(16,70)).
f(w(48,32),w(67,39)).
f(w(14,45),w(52,24)).
f(w(47,13),w(9,40)).
f(w(61,29),w(26,70)).
f(w(4,38),w(25,36)).
f(w(26,34),w(47,44)).
f(w(11,14),w(65,33)).
f(w(56,21),w(22,31)).
f(w(52,3),w(59,70)).
f(w(33,62),w(4,40)).
f(w(50,21),w(18,47)).
f(w(7,10),w(35,13)).
f(w(39,18),w(56,70)).
:-end_in_neg.
