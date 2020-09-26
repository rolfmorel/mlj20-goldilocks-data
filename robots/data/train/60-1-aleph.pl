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
size(60).
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
f(w(8,57),w(8,60)).
f(w(60,4),w(60,60)).
f(w(53,32),w(53,60)).
f(w(14,9),w(14,60)).
f(w(3,6),w(3,60)).
f(w(52,19),w(52,60)).
f(w(53,52),w(53,60)).
f(w(52,21),w(52,60)).
f(w(34,12),w(34,60)).
f(w(41,6),w(41,60)).
f(w(54,10),w(54,60)).
f(w(17,8),w(17,60)).
f(w(29,48),w(29,60)).
f(w(4,59),w(4,60)).
f(w(57,29),w(57,60)).
f(w(37,49),w(37,60)).
f(w(19,28),w(19,60)).
f(w(2,58),w(2,60)).
f(w(24,52),w(24,60)).
f(w(23,37),w(23,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(43,52),w(15,60)).
f(w(10,14),w(10,21)).
f(w(34,15),w(12,18)).
f(w(7,54),w(52,25)).
f(w(31,19),w(27,60)).
f(w(2,57),w(11,41)).
f(w(29,56),w(38,38)).
f(w(51,42),w(26,37)).
f(w(34,8),w(6,7)).
f(w(24,54),w(33,34)).
f(w(38,30),w(52,25)).
f(w(47,13),w(19,60)).
f(w(22,10),w(50,60)).
f(w(15,44),w(3,60)).
f(w(33,36),w(4,49)).
f(w(5,8),w(16,45)).
f(w(44,49),w(34,60)).
f(w(41,39),w(56,60)).
f(w(52,22),w(27,16)).
f(w(40,17),w(55,24)).
:-end_in_neg.
