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
size(90).
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
f(w(67,75),w(67,90)).
f(w(17,89),w(17,90)).
f(w(89,31),w(89,90)).
f(w(76,82),w(76,90)).
f(w(17,5),w(17,90)).
f(w(26,11),w(26,90)).
f(w(87,79),w(87,90)).
f(w(55,44),w(55,90)).
f(w(60,48),w(60,90)).
f(w(85,61),w(85,90)).
f(w(37,2),w(37,90)).
f(w(88,56),w(88,90)).
f(w(88,64),w(88,90)).
f(w(88,21),w(88,90)).
f(w(52,89),w(52,90)).
f(w(54,42),w(54,90)).
f(w(89,45),w(89,90)).
f(w(86,66),w(86,90)).
f(w(79,78),w(79,90)).
f(w(12,51),w(12,90)).
:-end_in_pos.
:-begin_in_neg.
f(w(6,36),w(40,33)).
f(w(21,79),w(88,24)).
f(w(78,15),w(24,90)).
f(w(85,56),w(87,24)).
f(w(61,86),w(16,8)).
f(w(85,4),w(43,90)).
f(w(35,15),w(10,46)).
f(w(35,70),w(12,74)).
f(w(7,4),w(55,70)).
f(w(39,71),w(86,90)).
f(w(61,6),w(8,29)).
f(w(51,72),w(26,50)).
f(w(31,49),w(58,25)).
f(w(62,3),w(19,37)).
f(w(54,33),w(60,44)).
f(w(17,34),w(70,42)).
f(w(6,31),w(65,90)).
f(w(75,17),w(78,67)).
f(w(9,57),w(64,29)).
f(w(80,22),w(28,53)).
:-end_in_neg.
