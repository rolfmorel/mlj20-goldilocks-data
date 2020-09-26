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
    size(Size),
    X1 #< Size,
    X2 #= X1 + 1.

move_left(w(X1,Y),w(X2,Y)):-
    X1 #> 1,
    X2 #= X1 - 1.

move_up(w(X,Y1),w(X,Y2)):-
    size(Size),
    Y1 #< Size,
    Y2 #= Y1 + 1.

move_down(w(X,Y1),w(X,Y2)):-
    Y1 #> 1,
    Y2 #= Y1 - 1.
:-end_bg.
:-begin_in_pos.
f(w(39,15),w(39,40)).
f(w(6,19),w(6,40)).
f(w(25,20),w(25,40)).
f(w(10,10),w(10,40)).
f(w(33,35),w(33,40)).
f(w(31,39),w(31,40)).
f(w(7,22),w(7,40)).
f(w(19,25),w(19,40)).
f(w(19,2),w(19,40)).
f(w(14,1),w(14,40)).
f(w(21,39),w(21,40)).
f(w(22,4),w(22,40)).
f(w(30,26),w(30,40)).
f(w(29,8),w(29,40)).
f(w(20,17),w(20,40)).
f(w(23,26),w(23,40)).
f(w(9,15),w(9,40)).
f(w(36,10),w(36,40)).
f(w(3,20),w(3,40)).
f(w(1,31),w(1,40)).
:-end_in_pos.
:-begin_in_neg.
f(w(5,28),w(9,7)).
f(w(3,40),w(22,4)).
f(w(1,31),w(20,33)).
f(w(17,23),w(2,21)).
f(w(25,11),w(7,30)).
f(w(8,38),w(30,40)).
f(w(4,39),w(8,40)).
f(w(13,29),w(12,10)).
f(w(19,2),w(22,21)).
f(w(24,16),w(5,36)).
f(w(7,31),w(21,2)).
f(w(8,38),w(35,11)).
f(w(6,14),w(6,10)).
f(w(6,21),w(23,11)).
f(w(24,27),w(15,3)).
f(w(11,36),w(26,22)).
f(w(8,37),w(34,10)).
f(w(14,13),w(15,14)).
f(w(11,6),w(20,10)).
f(w(35,34),w(18,22)).
:-end_in_neg.
