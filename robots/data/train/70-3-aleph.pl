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
f(w(32,27),w(32,70)).
f(w(47,67),w(47,70)).
f(w(44,5),w(44,70)).
f(w(34,3),w(34,70)).
f(w(29,57),w(29,70)).
f(w(22,48),w(22,70)).
f(w(32,20),w(32,70)).
f(w(44,46),w(44,70)).
f(w(33,21),w(33,70)).
f(w(43,9),w(43,70)).
f(w(52,56),w(52,70)).
f(w(61,29),w(61,70)).
f(w(68,21),w(68,70)).
f(w(43,39),w(43,70)).
f(w(27,10),w(27,70)).
f(w(6,16),w(6,70)).
f(w(56,35),w(56,70)).
f(w(46,31),w(46,70)).
f(w(43,46),w(43,70)).
f(w(7,53),w(7,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(4,64),w(9,70)).
f(w(2,62),w(35,70)).
f(w(4,70),w(44,51)).
f(w(63,60),w(32,58)).
f(w(18,23),w(68,35)).
f(w(8,58),w(29,27)).
f(w(39,16),w(11,70)).
f(w(53,59),w(48,25)).
f(w(56,58),w(38,49)).
f(w(64,23),w(55,70)).
f(w(7,68),w(66,52)).
f(w(17,64),w(56,70)).
f(w(43,59),w(67,28)).
f(w(65,24),w(22,70)).
f(w(9,29),w(69,51)).
f(w(36,59),w(24,47)).
f(w(70,56),w(34,43)).
f(w(55,45),w(17,1)).
f(w(70,31),w(4,70)).
f(w(53,68),w(35,70)).
:-end_in_neg.
