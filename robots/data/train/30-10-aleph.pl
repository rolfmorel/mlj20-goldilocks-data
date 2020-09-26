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
size(30).
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
f(w(6,18),w(6,30)).
f(w(12,4),w(12,30)).
f(w(11,13),w(11,30)).
f(w(9,28),w(9,30)).
f(w(11,4),w(11,30)).
f(w(18,24),w(18,30)).
f(w(24,3),w(24,30)).
f(w(10,16),w(10,30)).
f(w(30,12),w(30,30)).
f(w(15,20),w(15,30)).
f(w(2,7),w(2,30)).
f(w(12,7),w(12,30)).
f(w(26,15),w(26,30)).
f(w(1,11),w(1,30)).
f(w(21,29),w(21,30)).
f(w(19,25),w(19,30)).
f(w(25,4),w(25,30)).
f(w(10,23),w(10,30)).
f(w(16,3),w(16,30)).
f(w(29,29),w(29,30)).
:-end_in_pos.
:-begin_in_neg.
f(w(9,30),w(27,16)).
f(w(1,27),w(29,4)).
f(w(13,8),w(22,26)).
f(w(20,18),w(16,29)).
f(w(30,18),w(26,30)).
f(w(12,30),w(1,8)).
f(w(27,7),w(3,15)).
f(w(29,30),w(9,20)).
f(w(29,3),w(30,7)).
f(w(30,7),w(23,21)).
f(w(16,29),w(22,29)).
f(w(6,13),w(3,25)).
f(w(7,12),w(26,20)).
f(w(18,28),w(19,30)).
f(w(11,1),w(23,15)).
f(w(15,7),w(19,8)).
f(w(4,27),w(10,30)).
f(w(25,16),w(10,18)).
f(w(22,24),w(20,5)).
f(w(30,2),w(18,30)).
:-end_in_neg.
