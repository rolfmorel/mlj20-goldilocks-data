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
f(w(21,44),w(21,50)).
f(w(45,22),w(45,50)).
f(w(11,28),w(11,50)).
f(w(2,25),w(2,50)).
f(w(38,42),w(38,50)).
f(w(38,6),w(38,50)).
f(w(44,40),w(44,50)).
f(w(17,4),w(17,50)).
f(w(33,24),w(33,50)).
f(w(31,7),w(31,50)).
f(w(4,33),w(4,50)).
f(w(44,18),w(44,50)).
f(w(19,16),w(19,50)).
f(w(41,1),w(41,50)).
f(w(14,20),w(14,50)).
f(w(46,5),w(46,50)).
f(w(19,14),w(19,50)).
f(w(10,49),w(10,50)).
f(w(35,31),w(35,50)).
f(w(20,42),w(20,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(27,13),w(23,3)).
f(w(24,28),w(20,10)).
f(w(25,20),w(3,46)).
f(w(20,14),w(24,17)).
f(w(12,42),w(5,15)).
f(w(48,3),w(49,30)).
f(w(14,25),w(48,24)).
f(w(44,23),w(25,40)).
f(w(11,25),w(38,8)).
f(w(37,43),w(8,50)).
f(w(30,27),w(22,3)).
f(w(28,24),w(17,50)).
f(w(36,2),w(21,33)).
f(w(10,22),w(40,3)).
f(w(41,32),w(30,46)).
f(w(18,33),w(27,41)).
f(w(9,37),w(1,43)).
f(w(33,37),w(5,50)).
f(w(6,5),w(33,43)).
f(w(39,28),w(12,50)).
:-end_in_neg.
