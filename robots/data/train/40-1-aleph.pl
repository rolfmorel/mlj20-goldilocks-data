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
f(w(39,15),w(39,40)).
f(w(24,20),w(24,40)).
f(w(11,22),w(11,40)).
f(w(21,32),w(21,40)).
f(w(10,22),w(10,40)).
f(w(40,20),w(40,40)).
f(w(2,16),w(2,40)).
f(w(13,31),w(13,40)).
f(w(21,3),w(21,40)).
f(w(22,21),w(22,40)).
f(w(1,15),w(1,40)).
f(w(20,28),w(20,40)).
f(w(5,33),w(5,40)).
f(w(26,32),w(26,40)).
f(w(29,36),w(29,40)).
f(w(26,38),w(26,40)).
f(w(1,18),w(1,40)).
f(w(29,21),w(29,40)).
f(w(4,15),w(4,40)).
f(w(13,34),w(13,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(9,3),w(16,23)).
f(w(26,19),w(35,26)).
f(w(9,2),w(36,40)).
f(w(25,7),w(38,40)).
f(w(1,22),w(8,21)).
f(w(23,36),w(14,15)).
f(w(31,5),w(29,19)).
f(w(25,34),w(40,13)).
f(w(27,28),w(39,7)).
f(w(29,24),w(25,33)).
f(w(3,23),w(25,13)).
f(w(7,19),w(2,4)).
f(w(21,13),w(28,16)).
f(w(11,33),w(2,10)).
f(w(25,5),w(15,13)).
f(w(26,11),w(15,40)).
f(w(6,33),w(28,8)).
f(w(13,8),w(24,40)).
f(w(14,1),w(8,40)).
f(w(8,37),w(38,24)).
:-end_in_neg.
