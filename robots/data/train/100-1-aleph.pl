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
size(100).
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
f(w(13,67),w(13,100)).
f(w(17,92),w(17,100)).
f(w(43,86),w(43,100)).
f(w(70,42),w(70,100)).
f(w(100,86),w(100,100)).
f(w(29,34),w(29,100)).
f(w(69,61),w(69,100)).
f(w(39,50),w(39,100)).
f(w(66,83),w(66,100)).
f(w(88,96),w(88,100)).
f(w(71,99),w(71,100)).
f(w(35,52),w(35,100)).
f(w(32,14),w(32,100)).
f(w(83,3),w(83,100)).
f(w(25,81),w(25,100)).
f(w(31,65),w(31,100)).
f(w(16,92),w(16,100)).
f(w(95,80),w(95,100)).
f(w(64,99),w(64,100)).
f(w(68,18),w(68,100)).
:-end_in_pos.
:-begin_in_neg.
f(w(60,84),w(72,30)).
f(w(10,74),w(45,98)).
f(w(91,24),w(13,21)).
f(w(3,59),w(42,100)).
f(w(75,78),w(24,1)).
f(w(64,13),w(59,9)).
f(w(2,9),w(31,29)).
f(w(35,50),w(10,31)).
f(w(62,65),w(76,74)).
f(w(59,7),w(86,48)).
f(w(79,76),w(61,100)).
f(w(11,85),w(64,100)).
f(w(17,20),w(25,73)).
f(w(34,71),w(71,17)).
f(w(93,45),w(85,37)).
f(w(93,33),w(69,36)).
f(w(15,79),w(30,76)).
f(w(2,39),w(77,33)).
f(w(49,47),w(53,60)).
f(w(57,99),w(7,32)).
:-end_in_neg.
