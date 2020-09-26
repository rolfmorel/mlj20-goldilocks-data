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
size(80).
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
f(w(19,42),w(19,80)).
f(w(14,60),w(14,80)).
f(w(50,20),w(50,80)).
f(w(23,36),w(23,80)).
f(w(79,28),w(79,80)).
f(w(24,19),w(24,80)).
f(w(35,45),w(35,80)).
f(w(66,65),w(66,80)).
f(w(30,38),w(30,80)).
f(w(70,10),w(70,80)).
f(w(58,22),w(58,80)).
f(w(40,56),w(40,80)).
f(w(55,5),w(55,80)).
f(w(69,58),w(69,80)).
f(w(64,52),w(64,80)).
f(w(5,48),w(5,80)).
f(w(69,58),w(69,80)).
f(w(63,48),w(63,80)).
f(w(42,22),w(42,80)).
f(w(43,39),w(43,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(32,70),w(63,6)).
f(w(65,44),w(25,80)).
f(w(76,33),w(8,66)).
f(w(33,15),w(49,17)).
f(w(17,29),w(43,80)).
f(w(12,65),w(3,17)).
f(w(58,66),w(28,80)).
f(w(14,59),w(31,80)).
f(w(49,12),w(70,7)).
f(w(30,32),w(28,63)).
f(w(36,80),w(4,58)).
f(w(44,37),w(30,16)).
f(w(61,63),w(15,15)).
f(w(8,70),w(13,72)).
f(w(63,79),w(26,26)).
f(w(75,11),w(1,36)).
f(w(48,41),w(36,40)).
f(w(71,69),w(13,7)).
f(w(47,80),w(50,2)).
f(w(65,19),w(24,79)).
:-end_in_neg.
