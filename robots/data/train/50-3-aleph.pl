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
f(w(41,43),w(41,50)).
f(w(49,33),w(49,50)).
f(w(3,1),w(3,50)).
f(w(39,25),w(39,50)).
f(w(32,2),w(32,50)).
f(w(38,34),w(38,50)).
f(w(32,42),w(32,50)).
f(w(23,14),w(23,50)).
f(w(8,21),w(8,50)).
f(w(30,35),w(30,50)).
f(w(43,29),w(43,50)).
f(w(19,9),w(19,50)).
f(w(12,45),w(12,50)).
f(w(22,18),w(22,50)).
f(w(41,9),w(41,50)).
f(w(2,44),w(2,50)).
f(w(13,4),w(13,50)).
f(w(20,49),w(20,50)).
f(w(27,20),w(27,50)).
f(w(14,18),w(14,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(37,27),w(6,1)).
f(w(41,44),w(23,27)).
f(w(4,40),w(13,32)).
f(w(40,10),w(35,7)).
f(w(3,12),w(45,50)).
f(w(43,36),w(12,43)).
f(w(45,44),w(42,20)).
f(w(33,39),w(44,7)).
f(w(34,46),w(47,9)).
f(w(14,35),w(1,37)).
f(w(44,39),w(22,50)).
f(w(45,50),w(37,50)).
f(w(11,35),w(37,50)).
f(w(42,36),w(10,50)).
f(w(6,37),w(18,40)).
f(w(35,38),w(44,3)).
f(w(33,46),w(9,50)).
f(w(1,18),w(28,33)).
f(w(7,36),w(5,17)).
f(w(32,44),w(28,31)).
:-end_in_neg.
