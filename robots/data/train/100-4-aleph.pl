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
size(100).
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
f(w(100,45),w(100,100)).
f(w(23,1),w(23,100)).
f(w(59,61),w(59,100)).
f(w(12,92),w(12,100)).
f(w(57,61),w(57,100)).
f(w(43,4),w(43,100)).
f(w(32,26),w(32,100)).
f(w(96,29),w(96,100)).
f(w(33,62),w(33,100)).
f(w(30,92),w(30,100)).
f(w(40,94),w(40,100)).
f(w(98,70),w(98,100)).
f(w(7,73),w(7,100)).
f(w(80,46),w(80,100)).
f(w(17,7),w(17,100)).
f(w(2,19),w(2,100)).
f(w(26,69),w(26,100)).
f(w(99,97),w(99,100)).
f(w(73,83),w(73,100)).
f(w(74,18),w(74,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(53,67),w(95,100)).
f(w(100,14),w(25,100)).
f(w(25,61),w(35,100)).
f(w(1,53),w(88,34)).
f(w(10,43),w(23,78)).
f(w(86,83),w(74,100)).
f(w(8,45),w(5,23)).
f(w(23,76),w(96,68)).
f(w(67,81),w(2,19)).
f(w(94,25),w(59,100)).
f(w(99,57),w(54,74)).
f(w(51,24),w(73,25)).
f(w(49,71),w(94,19)).
f(w(13,19),w(66,2)).
f(w(66,1),w(35,81)).
f(w(33,63),w(42,42)).
f(w(54,78),w(85,80)).
f(w(81,36),w(71,54)).
f(w(90,29),w(48,11)).
f(w(15,37),w(81,6)).
:-end_in_neg.
