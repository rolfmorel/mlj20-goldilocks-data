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
size(50).
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
f(w(12,39),w(12,50)).
f(w(35,40),w(35,50)).
f(w(8,3),w(8,50)).
f(w(26,37),w(26,50)).
f(w(1,32),w(1,50)).
f(w(33,3),w(33,50)).
f(w(21,49),w(21,50)).
f(w(1,30),w(1,50)).
f(w(43,6),w(43,50)).
f(w(16,10),w(16,50)).
f(w(36,35),w(36,50)).
f(w(30,10),w(30,50)).
f(w(36,17),w(36,50)).
f(w(20,7),w(20,50)).
f(w(21,20),w(21,50)).
f(w(31,25),w(31,50)).
f(w(44,48),w(44,50)).
f(w(33,49),w(33,50)).
f(w(40,38),w(40,50)).
f(w(41,41),w(41,50)).
:-end_in_pos.
:-begin_in_neg.
f(w(29,18),w(28,38)).
f(w(15,40),w(50,50)).
f(w(22,12),w(21,20)).
f(w(29,33),w(13,41)).
f(w(46,15),w(21,15)).
f(w(17,17),w(37,4)).
f(w(10,37),w(17,13)).
f(w(38,32),w(20,30)).
f(w(28,32),w(49,50)).
f(w(2,36),w(41,24)).
f(w(41,41),w(26,32)).
f(w(15,35),w(40,50)).
f(w(2,47),w(14,50)).
f(w(16,2),w(17,1)).
f(w(25,5),w(13,45)).
f(w(15,49),w(21,37)).
f(w(38,12),w(37,24)).
f(w(40,13),w(13,32)).
f(w(11,42),w(40,27)).
f(w(33,35),w(40,45)).
:-end_in_neg.
