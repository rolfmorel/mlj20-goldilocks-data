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
size(50).
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
f(w(18,25),w(18,50)).
f(w(23,28),w(23,50)).
f(w(1,38),w(1,50)).
f(w(36,46),w(36,50)).
f(w(50,38),w(50,50)).
f(w(11,43),w(11,50)).
f(w(5,20),w(5,50)).
f(w(27,36),w(27,50)).
f(w(44,49),w(44,50)).
f(w(50,6),w(50,50)).
f(w(47,11),w(47,50)).
f(w(37,36),w(37,50)).
f(w(24,31),w(24,50)).
f(w(48,1),w(48,50)).
f(w(1,6),w(1,50)).
f(w(39,6),w(39,50)).
f(w(50,47),w(50,50)).
f(w(16,9),w(16,50)).
f(w(25,15),w(25,50)).
f(w(48,43),w(48,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(44,25),w(37,20)).
f(w(3,49),w(5,9)).
f(w(43,13),w(23,25)).
f(w(1,3),w(43,12)).
f(w(13,44),w(41,22)).
f(w(39,15),w(26,6)).
f(w(18,48),w(45,44)).
f(w(35,35),w(39,31)).
f(w(4,19),w(36,8)).
f(w(25,30),w(36,29)).
f(w(30,13),w(33,50)).
f(w(41,4),w(24,50)).
f(w(27,39),w(9,38)).
f(w(19,35),w(3,50)).
f(w(38,21),w(14,48)).
f(w(14,14),w(23,33)).
f(w(45,34),w(33,50)).
f(w(38,20),w(16,45)).
f(w(14,32),w(19,48)).
f(w(33,27),w(30,34)).
:-end_in_neg.
