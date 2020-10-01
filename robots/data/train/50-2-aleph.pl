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
size(50).
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
f(w(40,2),w(40,50)).
f(w(40,26),w(40,50)).
f(w(32,14),w(32,50)).
f(w(32,10),w(32,50)).
f(w(24,33),w(24,50)).
f(w(13,31),w(13,50)).
f(w(27,10),w(27,50)).
f(w(32,35),w(32,50)).
f(w(36,27),w(36,50)).
f(w(10,9),w(10,50)).
f(w(40,2),w(40,50)).
f(w(48,14),w(48,50)).
f(w(40,32),w(40,50)).
f(w(14,49),w(14,50)).
f(w(2,40),w(2,50)).
f(w(31,18),w(31,50)).
f(w(6,11),w(6,50)).
f(w(49,14),w(49,50)).
f(w(7,49),w(7,50)).
f(w(42,5),w(42,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(42,37),w(49,28)).
f(w(17,21),w(46,34)).
f(w(22,31),w(30,50)).
f(w(16,25),w(28,50)).
f(w(27,24),w(19,49)).
f(w(42,49),w(27,25)).
f(w(9,20),w(1,8)).
f(w(36,29),w(33,28)).
f(w(31,46),w(13,50)).
f(w(22,7),w(33,4)).
f(w(37,14),w(15,36)).
f(w(20,13),w(23,39)).
f(w(34,14),w(9,46)).
f(w(14,25),w(21,1)).
f(w(39,22),w(28,26)).
f(w(14,29),w(6,19)).
f(w(28,4),w(40,31)).
f(w(50,13),w(36,50)).
f(w(28,45),w(11,50)).
f(w(4,20),w(8,32)).
:-end_in_neg.
