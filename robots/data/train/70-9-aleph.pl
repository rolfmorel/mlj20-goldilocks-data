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
f(w(65,33),w(65,70)).
f(w(11,40),w(11,70)).
f(w(48,61),w(48,70)).
f(w(2,14),w(2,70)).
f(w(1,68),w(1,70)).
f(w(48,51),w(48,70)).
f(w(42,17),w(42,70)).
f(w(9,52),w(9,70)).
f(w(34,11),w(34,70)).
f(w(38,57),w(38,70)).
f(w(32,10),w(32,70)).
f(w(57,43),w(57,70)).
f(w(56,2),w(56,70)).
f(w(15,63),w(15,70)).
f(w(24,59),w(24,70)).
f(w(4,11),w(4,70)).
f(w(59,63),w(59,70)).
f(w(56,51),w(56,70)).
f(w(30,49),w(30,70)).
f(w(30,58),w(30,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(39,26),w(4,13)).
f(w(6,22),w(39,60)).
f(w(53,58),w(7,29)).
f(w(67,41),w(69,70)).
f(w(40,16),w(29,70)).
f(w(23,30),w(40,33)).
f(w(27,19),w(23,19)).
f(w(19,23),w(65,40)).
f(w(28,15),w(31,70)).
f(w(53,53),w(7,70)).
f(w(54,54),w(65,70)).
f(w(44,19),w(69,22)).
f(w(2,38),w(52,46)).
f(w(40,30),w(41,25)).
f(w(55,53),w(65,70)).
f(w(10,22),w(52,23)).
f(w(17,32),w(61,15)).
f(w(26,55),w(38,39)).
f(w(42,35),w(10,38)).
f(w(48,13),w(44,7)).
:-end_in_neg.
