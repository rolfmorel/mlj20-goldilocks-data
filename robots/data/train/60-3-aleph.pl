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
size(60).
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
f(w(43,7),w(43,60)).
f(w(9,18),w(9,60)).
f(w(34,30),w(34,60)).
f(w(11,50),w(11,60)).
f(w(43,10),w(43,60)).
f(w(50,53),w(50,60)).
f(w(15,41),w(15,60)).
f(w(5,55),w(5,60)).
f(w(9,43),w(9,60)).
f(w(39,14),w(39,60)).
f(w(54,57),w(54,60)).
f(w(1,25),w(1,60)).
f(w(4,15),w(4,60)).
f(w(41,52),w(41,60)).
f(w(19,21),w(19,60)).
f(w(49,52),w(49,60)).
f(w(44,19),w(44,60)).
f(w(24,59),w(24,60)).
f(w(20,22),w(20,60)).
f(w(60,6),w(60,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(36,55),w(41,45)).
f(w(22,18),w(28,19)).
f(w(6,27),w(31,15)).
f(w(6,43),w(4,7)).
f(w(23,14),w(18,60)).
f(w(48,30),w(35,25)).
f(w(24,4),w(24,1)).
f(w(49,52),w(11,40)).
f(w(47,10),w(41,53)).
f(w(60,11),w(33,46)).
f(w(17,43),w(47,60)).
f(w(47,51),w(28,60)).
f(w(20,31),w(7,23)).
f(w(52,38),w(33,60)).
f(w(5,36),w(12,25)).
f(w(51,40),w(12,18)).
f(w(47,19),w(5,21)).
f(w(16,6),w(51,1)).
f(w(41,32),w(5,6)).
f(w(44,54),w(31,28)).
:-end_in_neg.
