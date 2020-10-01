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
size(60).
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
f(w(35,42),w(35,60)).
f(w(54,38),w(54,60)).
f(w(59,24),w(59,60)).
f(w(54,56),w(54,60)).
f(w(47,14),w(47,60)).
f(w(54,19),w(54,60)).
f(w(41,56),w(41,60)).
f(w(56,57),w(56,60)).
f(w(54,49),w(54,60)).
f(w(31,1),w(31,60)).
f(w(32,34),w(32,60)).
f(w(20,32),w(20,60)).
f(w(28,36),w(28,60)).
f(w(55,4),w(55,60)).
f(w(10,59),w(10,60)).
f(w(60,5),w(60,60)).
f(w(16,20),w(16,60)).
f(w(9,29),w(9,60)).
f(w(46,10),w(46,60)).
f(w(3,37),w(3,60)).
:-end_in_pos.
:-begin_in_neg.
f(w(17,7),w(34,52)).
f(w(20,52),w(13,44)).
f(w(17,16),w(27,60)).
f(w(12,47),w(40,9)).
f(w(49,27),w(57,2)).
f(w(19,30),w(55,19)).
f(w(21,2),w(18,26)).
f(w(39,9),w(3,56)).
f(w(53,18),w(56,18)).
f(w(48,43),w(48,1)).
f(w(28,29),w(56,4)).
f(w(47,41),w(44,19)).
f(w(15,19),w(37,60)).
f(w(25,13),w(56,58)).
f(w(50,28),w(4,26)).
f(w(44,52),w(8,2)).
f(w(43,21),w(57,25)).
f(w(60,54),w(35,60)).
f(w(11,47),w(40,57)).
f(w(42,32),w(6,46)).
:-end_in_neg.
