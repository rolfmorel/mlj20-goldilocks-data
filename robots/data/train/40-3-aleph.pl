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
f(w(17,9),w(17,40)).
f(w(14,17),w(14,40)).
f(w(3,2),w(3,40)).
f(w(3,35),w(3,40)).
f(w(19,33),w(19,40)).
f(w(24,25),w(24,40)).
f(w(5,23),w(5,40)).
f(w(38,39),w(38,40)).
f(w(14,26),w(14,40)).
f(w(9,7),w(9,40)).
f(w(35,36),w(35,40)).
f(w(25,1),w(25,40)).
f(w(33,13),w(33,40)).
f(w(31,21),w(31,40)).
f(w(22,6),w(22,40)).
f(w(2,27),w(2,40)).
f(w(2,1),w(2,40)).
f(w(10,28),w(10,40)).
f(w(21,14),w(21,40)).
f(w(35,37),w(35,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(27,39),w(20,40)).
f(w(28,24),w(15,3)).
f(w(19,31),w(40,31)).
f(w(20,25),w(35,39)).
f(w(14,29),w(29,24)).
f(w(39,15),w(7,33)).
f(w(27,40),w(33,19)).
f(w(33,33),w(1,29)).
f(w(1,10),w(19,32)).
f(w(28,32),w(34,21)).
f(w(13,12),w(2,40)).
f(w(2,19),w(10,31)).
f(w(7,29),w(32,40)).
f(w(39,34),w(5,16)).
f(w(37,18),w(27,40)).
f(w(14,12),w(39,40)).
f(w(6,26),w(22,3)).
f(w(24,12),w(40,40)).
f(w(18,9),w(35,9)).
f(w(37,36),w(31,40)).
:-end_in_neg.
