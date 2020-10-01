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
f(w(46,69),w(46,70)).
f(w(6,36),w(6,70)).
f(w(13,23),w(13,70)).
f(w(31,57),w(31,70)).
f(w(38,61),w(38,70)).
f(w(13,49),w(13,70)).
f(w(26,9),w(26,70)).
f(w(68,1),w(68,70)).
f(w(4,27),w(4,70)).
f(w(19,64),w(19,70)).
f(w(70,7),w(70,70)).
f(w(33,18),w(33,70)).
f(w(20,62),w(20,70)).
f(w(6,33),w(6,70)).
f(w(13,20),w(13,70)).
f(w(13,48),w(13,70)).
f(w(4,14),w(4,70)).
f(w(20,29),w(20,70)).
f(w(2,20),w(2,70)).
f(w(51,49),w(51,70)).
:-end_in_pos.
:-begin_in_neg.
f(w(4,70),w(27,33)).
f(w(26,39),w(31,48)).
f(w(68,43),w(46,70)).
f(w(64,55),w(63,36)).
f(w(20,15),w(70,28)).
f(w(24,9),w(9,16)).
f(w(49,64),w(2,22)).
f(w(45,19),w(70,58)).
f(w(46,12),w(27,8)).
f(w(59,34),w(36,35)).
f(w(34,58),w(44,40)).
f(w(52,16),w(2,46)).
f(w(61,10),w(9,30)).
f(w(24,58),w(33,61)).
f(w(31,7),w(43,55)).
f(w(35,5),w(9,68)).
f(w(16,46),w(39,70)).
f(w(9,48),w(7,41)).
f(w(5,16),w(50,70)).
f(w(27,49),w(17,7)).
:-end_in_neg.
