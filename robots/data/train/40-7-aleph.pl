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
f(w(15,13),w(15,40)).
f(w(16,34),w(16,40)).
f(w(37,35),w(37,40)).
f(w(22,19),w(22,40)).
f(w(34,3),w(34,40)).
f(w(7,28),w(7,40)).
f(w(31,27),w(31,40)).
f(w(22,6),w(22,40)).
f(w(27,21),w(27,40)).
f(w(38,6),w(38,40)).
f(w(2,37),w(2,40)).
f(w(22,10),w(22,40)).
f(w(34,7),w(34,40)).
f(w(19,39),w(19,40)).
f(w(18,36),w(18,40)).
f(w(21,21),w(21,40)).
f(w(6,14),w(6,40)).
f(w(4,37),w(4,40)).
f(w(34,30),w(34,40)).
f(w(28,32),w(28,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(13,40),w(12,40)).
f(w(17,21),w(11,25)).
f(w(3,9),w(32,40)).
f(w(12,36),w(6,38)).
f(w(33,2),w(39,28)).
f(w(6,38),w(40,1)).
f(w(26,2),w(39,40)).
f(w(4,27),w(23,13)).
f(w(26,23),w(5,40)).
f(w(15,35),w(35,40)).
f(w(25,18),w(10,40)).
f(w(27,40),w(3,20)).
f(w(2,12),w(32,18)).
f(w(30,26),w(13,26)).
f(w(11,7),w(3,1)).
f(w(8,7),w(24,16)).
f(w(7,6),w(17,40)).
f(w(37,1),w(13,4)).
f(w(35,26),w(3,20)).
f(w(39,8),w(11,19)).
:-end_in_neg.
