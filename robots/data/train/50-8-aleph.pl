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
f(w(29,47),w(29,50)).
f(w(32,14),w(32,50)).
f(w(28,42),w(28,50)).
f(w(23,22),w(23,50)).
f(w(2,13),w(2,50)).
f(w(48,16),w(48,50)).
f(w(6,29),w(6,50)).
f(w(6,29),w(6,50)).
f(w(27,48),w(27,50)).
f(w(4,48),w(4,50)).
f(w(49,29),w(49,50)).
f(w(21,34),w(21,50)).
f(w(34,3),w(34,50)).
f(w(41,4),w(41,50)).
f(w(4,25),w(4,50)).
f(w(45,26),w(45,50)).
f(w(38,49),w(38,50)).
f(w(3,6),w(3,50)).
f(w(24,49),w(24,50)).
f(w(41,23),w(41,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(20,4),w(13,50)).
f(w(10,33),w(19,17)).
f(w(16,11),w(28,9)).
f(w(50,7),w(50,30)).
f(w(39,10),w(21,50)).
f(w(44,42),w(21,6)).
f(w(48,29),w(16,1)).
f(w(23,9),w(44,47)).
f(w(30,17),w(2,2)).
f(w(20,40),w(31,21)).
f(w(33,43),w(35,30)).
f(w(1,3),w(44,21)).
f(w(7,5),w(2,32)).
f(w(8,15),w(44,33)).
f(w(2,50),w(33,40)).
f(w(50,23),w(44,48)).
f(w(13,47),w(8,50)).
f(w(48,34),w(21,1)).
f(w(31,9),w(26,26)).
f(w(28,4),w(35,24)).
:-end_in_neg.
