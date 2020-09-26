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
f(w(41,6),w(41,50)).
f(w(26,31),w(26,50)).
f(w(35,2),w(35,50)).
f(w(39,21),w(39,50)).
f(w(17,33),w(17,50)).
f(w(36,23),w(36,50)).
f(w(3,39),w(3,50)).
f(w(14,49),w(14,50)).
f(w(1,37),w(1,50)).
f(w(47,36),w(47,50)).
f(w(33,49),w(33,50)).
f(w(14,9),w(14,50)).
f(w(47,49),w(47,50)).
f(w(27,22),w(27,50)).
f(w(20,21),w(20,50)).
f(w(33,49),w(33,50)).
f(w(22,6),w(22,50)).
f(w(1,2),w(1,50)).
f(w(26,3),w(26,50)).
f(w(42,1),w(42,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(14,23),w(29,29)).
f(w(20,12),w(38,32)).
f(w(28,14),w(17,12)).
f(w(43,48),w(18,50)).
f(w(19,29),w(11,7)).
f(w(21,38),w(7,50)).
f(w(30,33),w(1,50)).
f(w(3,43),w(34,50)).
f(w(16,25),w(39,13)).
f(w(5,21),w(4,50)).
f(w(3,4),w(4,21)).
f(w(25,41),w(20,27)).
f(w(13,2),w(13,46)).
f(w(8,47),w(50,1)).
f(w(47,33),w(7,22)).
f(w(5,17),w(46,2)).
f(w(20,41),w(7,49)).
f(w(37,40),w(49,3)).
f(w(21,1),w(30,24)).
f(w(17,39),w(30,9)).
:-end_in_neg.
