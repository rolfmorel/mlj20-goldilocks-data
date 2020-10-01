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
f(w(17,39),w(17,40)).
f(w(36,30),w(36,40)).
f(w(40,2),w(40,40)).
f(w(21,27),w(21,40)).
f(w(34,28),w(34,40)).
f(w(39,10),w(39,40)).
f(w(23,33),w(23,40)).
f(w(25,28),w(25,40)).
f(w(7,10),w(7,40)).
f(w(23,28),w(23,40)).
f(w(30,31),w(30,40)).
f(w(1,5),w(1,40)).
f(w(31,25),w(31,40)).
f(w(8,7),w(8,40)).
f(w(34,13),w(34,40)).
f(w(33,28),w(33,40)).
f(w(5,38),w(5,40)).
f(w(26,36),w(26,40)).
f(w(12,1),w(12,40)).
f(w(22,10),w(22,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(30,30),w(19,40)).
f(w(27,38),w(30,34)).
f(w(23,40),w(10,40)).
f(w(11,38),w(7,33)).
f(w(11,23),w(23,40)).
f(w(19,32),w(6,4)).
f(w(6,5),w(16,20)).
f(w(29,15),w(26,20)).
f(w(10,1),w(7,40)).
f(w(39,16),w(38,38)).
f(w(2,16),w(30,40)).
f(w(33,2),w(31,40)).
f(w(28,9),w(25,31)).
f(w(36,10),w(38,40)).
f(w(38,35),w(21,19)).
f(w(21,22),w(34,25)).
f(w(36,35),w(14,3)).
f(w(33,32),w(25,40)).
f(w(11,2),w(15,40)).
f(w(11,34),w(17,15)).
:-end_in_neg.
