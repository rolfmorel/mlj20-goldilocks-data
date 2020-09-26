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
f(w(45,65),w(45,80)).
f(w(34,63),w(34,80)).
f(w(65,33),w(65,80)).
f(w(14,4),w(14,80)).
f(w(59,36),w(59,80)).
f(w(52,74),w(52,80)).
f(w(79,16),w(79,80)).
f(w(46,33),w(46,80)).
f(w(67,62),w(67,80)).
f(w(6,47),w(6,80)).
f(w(38,38),w(38,80)).
f(w(30,25),w(30,80)).
f(w(49,61),w(49,80)).
f(w(14,33),w(14,80)).
f(w(5,66),w(5,80)).
f(w(54,32),w(54,80)).
f(w(40,29),w(40,80)).
f(w(30,73),w(30,80)).
f(w(62,41),w(62,80)).
f(w(55,15),w(55,80)).
:-end_in_pos.
:-begin_in_neg.
f(w(54,67),w(66,31)).
f(w(46,24),w(28,31)).
f(w(18,22),w(77,69)).
f(w(69,17),w(35,36)).
f(w(7,78),w(51,65)).
f(w(64,65),w(58,80)).
f(w(29,40),w(20,51)).
f(w(24,8),w(44,35)).
f(w(38,8),w(57,80)).
f(w(35,55),w(41,80)).
f(w(11,18),w(25,8)).
f(w(71,72),w(67,30)).
f(w(75,13),w(76,45)).
f(w(54,57),w(64,44)).
f(w(26,59),w(59,7)).
f(w(79,62),w(44,26)).
f(w(59,32),w(28,5)).
f(w(18,44),w(41,80)).
f(w(53,16),w(38,72)).
f(w(62,78),w(45,1)).
:-end_in_neg.
