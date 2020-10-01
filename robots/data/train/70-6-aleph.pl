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
size(70).
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
f(w(51,43),w(51,70)).
f(w(31,54),w(31,70)).
f(w(4,59),w(4,70)).
f(w(66,37),w(66,70)).
f(w(47,27),w(47,70)).
f(w(69,22),w(69,70)).
f(w(4,23),w(4,70)).
f(w(26,14),w(26,70)).
f(w(51,48),w(51,70)).
f(w(13,46),w(13,70)).
f(w(70,27),w(70,70)).
f(w(18,47),w(18,70)).
f(w(57,50),w(57,70)).
f(w(47,9),w(47,70)).
f(w(52,58),w(52,70)).
f(w(10,21),w(10,70)).
f(w(67,11),w(67,70)).
f(w(3,27),w(3,70)).
f(w(42,62),w(42,70)).
f(w(68,69),w(68,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(61,50),w(44,70)).
f(w(52,31),w(48,70)).
f(w(55,33),w(48,4)).
f(w(21,6),w(24,10)).
f(w(41,5),w(51,70)).
f(w(64,18),w(41,30)).
f(w(62,6),w(52,54)).
f(w(38,15),w(37,12)).
f(w(30,35),w(50,63)).
f(w(67,24),w(11,43)).
f(w(3,57),w(70,70)).
f(w(38,31),w(15,70)).
f(w(64,70),w(65,70)).
f(w(55,30),w(2,53)).
f(w(28,10),w(15,52)).
f(w(58,9),w(57,70)).
f(w(4,16),w(21,70)).
f(w(46,24),w(18,29)).
f(w(35,28),w(10,63)).
f(w(12,66),w(28,10)).
:-end_in_neg.
