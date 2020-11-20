:- use_module(library(aleph)).
:- if(current_predicate(use_rendering/1)).
:- use_rendering(prolog).
:- endif.
:- aleph.
:-style_check(-discontiguous).

:- aleph_set(i,6).
:- aleph_set(clauselength,6).
:- aleph_set(nodes,30000).

%% :- modeh(*,f(+list,-element)). % PROBLEM SPECIFIC
:- modeb(*,head(+list,-element)).
:- modeb(*,tail(+list,-list)).
:- modeb(*,geq(+element,+element)).
:- modeb(*,empty(+list)).
:- modeb(*,even(+element)).
:- modeb(*,odd(+element)).
:- modeb(*,one(+element)).
:- modeb(*,zero(-element)).
:- modeb(*,decrement(+element,-element)).
%% :- modeb(*,increment(+element,-element)). % PROBLEM SPECIFIC
%% :- modeb(*,element(+list,-element)). % PROBLEM SPECIFIC
%% :- modeb(*,cons(+element,+list,-list)). % PROBLEM SPECIFIC
:- modeh(*,f(+list)).
:- modeb(*,f(+list)).
%% :- modeb(*,cons(+element,+list,-list)).

:- determination(f/1,head/2).
:- determination(f/1,tail/2).
:- determination(f/1,geq/2).
:- determination(f/1,empty/1).
:- determination(f/1,even/1).
:- determination(f/1,odd/1).
:- determination(f/1,one/1).
:- determination(f/1,zero/1).
:- determination(f/1,decrement/2).
:- determination(f/1,f/1).
%% :- determination(f/1,element/2).
%% :- determination(f/1,increment/2).
%% :- determination(f/1,element/2).
%% :- determination(f/1,cons/3).
:-begin_bg.
%% SAME AS POPPER
body_pred(head/2).
body_pred(tail/2).
body_pred(geq/2).
body_pred(empty/1).
body_pred(even/1).
body_pred(odd/1).
body_pred(one/1).
body_pred(zero/1).
body_pred(decrement/2).

%% FOR METAGOL
body_pred(P/A):-
    current_predicate(modeb/2),
    modeb(P,A).

%% body_pred(P/A)

is_list([]).
is_list([_|_]).

increment(A,B):-
    (nonvar(A) -> \+ is_list(A); true),
    (nonvar(B) -> \+ is_list(B); true),
    succ(A,B).

decrement(A,B):-
    (nonvar(A) -> \+ is_list(A); true),
    (nonvar(B) -> \+ is_list(B); true),
    succ(B,A).

my_length(A,B):-
    (nonvar(A) -> is_list(A); true),
    (nonvar(B) -> \+is_list(B); true),
    length(A,B).

cons(A,B,C):-
    append([A],B,C).
comps([H|T],H,T).

tail([_|T],T).
head([H|_],H).
sum(A,B,C):-
    C is A+B.
empty([]).

element([X|_],X):-!.
element([_|T],X):-
    element(T,X).

empty_in([]).
empty_out([]).

zero(0).
one(1).

gt(A,B):-
    nonvar(A),
    nonvar(B),
    \+is_list(A),
    \+is_list(B),
    A > B.

geq(A,B):-
    nonvar(A),
    nonvar(B),
    \+is_list(A),
    \+is_list(B),
    A >= B.

even(A):-
    nonvar(A),
    \+ is_list(A),
    0 is A mod 2.

odd(A):-
    nonvar(A),
    \+ is_list(A),
    1 is A mod 2.


%% partition(Pivot,L1,Left,Right)


add_count(f(A),N-f(A)):-
    length(A,N).
add_count(f(A,B),N-f(A,B)):-
    length(A,N).
remove_k(_-V,V).

sort_examples(L1,L2):-
  maplist(add_count,L1,L3),
  keysort(L3,L4),
  maplist(remove_k,L4,L2).

run:-
    findall(A, pos(A), Pos0),
    findall(A, neg(A), Neg0),
    sort_examples(Pos0, Pos),
    sort_examples(Neg0, Neg),
    learn(Pos, Neg).



%% run:-
%%     findall(A, pos(A), Pos),
%%     findall(A, neg(A), Neg),
%%     learn(Pos, Neg).

test:-
    forall(pos(A),test_pos(A)),
    forall(neg(A),test_neg(A)),
    halt.

target(P/A):-
    pos(Atom),!,
    functor(Atom,P,A).

target_exists:-
    target(P/A),
    current_predicate(P/A).

test_pos(A):-
    target_exists,
    call(A),!,
    writeln('acc,1').
test_pos(_):-
    writeln('acc,0').

test_neg(A):-
    target_exists,
    call(A),!,
    writeln('acc,0').
test_neg(_):-
    writeln('acc,1').

:-end_bg.
:-begin_in_pos.
f([51, 51, 51, 74, 78, 27, 62, 23, 14, 52, 58, 24, 12, 65, 27, 88, 85, 14]).
f([13, 13, 13, 78, 6, 91, 53, 33, 23, 41, 37, 76, 27, 64, 34, 60, 65, 11, 15, 17, 65, 28, 1, 22, 16, 39, 42, 66, 66, 6, 1, 24, 93, 67, 59, 64, 4]).
f([80, 80, 80, 7, 54, 24, 97, 66, 95, 46, 71, 30, 66, 51, 57, 8, 13, 76, 94, 82, 42, 17, 66, 41, 97, 88, 49, 38]).
f([82, 82, 82, 4, 94, 94, 10, 99, 31, 60, 34, 98, 96, 18, 72, 9, 57, 31, 92, 39, 84]).
f([33, 33, 33, 19, 58, 19, 1, 98, 89, 25, 82, 4, 42, 6, 51, 55, 72, 16, 23, 1, 39, 5, 74, 44, 53, 6, 30, 101, 14, 6, 24, 26, 55, 56, 75, 3, 91, 16, 3, 7, 77, 33, 59, 56, 93, 45, 66, 5, 53, 96]).
f([29, 29, 29, 30, 81, 45, 56, 42, 69, 50, 24, 53, 13, 11, 99, 19, 34, 25, 63, 67, 59, 31, 33, 43, 38, 88, 14, 73, 82, 19, 100, 16, 81, 51, 55, 79, 1, 73, 82, 89, 57]).
f([5, 5, 5, 78, 73, 77, 85, 55, 15, 17, 56, 58]).
f([42, 42, 42, 33, 44, 70, 13, 33, 5, 76, 45, 83, 70, 53, 22, 97, 55, 67, 29, 88, 45, 53, 50, 91, 13, 100, 45, 94, 19, 25, 100, 15, 73, 2, 96, 20, 73, 50, 79, 3]).
f([14, 14, 14, 20, 10, 8, 22, 31, 82, 51, 67, 59, 67, 46, 10, 16, 32, 57, 22, 60, 35, 44, 73, 27, 94, 38, 26, 30, 20, 92, 10]).
f([8, 8, 8, 67, 34, 86, 41, 20, 78, 43, 24, 21, 77, 78, 83, 40, 28, 28, 25, 72, 61, 28, 70, 91, 18, 98, 93]).
:-end_in_pos.
:-begin_in_neg.
f([89, 95, 3, 30, 23, 78, 8, 12, 97, 61, 36, 30, 38, 73, 43, 63, 11, 14, 21, 100, 100, 76, 12, 5, 54, 72, 25, 58, 73, 91, 70, 21, 49, 60, 51, 32, 1, 58, 99, 101, 73, 52, 13, 6, 17, 99, 4, 6, 66, 47, 26]).
f([21, 94, 47, 85, 88, 42, 48, 72, 14, 101, 87, 84, 7, 24, 87, 71, 50, 79, 4, 80, 27, 98, 5, 81, 33, 54, 27, 90]).
f([98, 89, 28, 8, 73, 33, 82, 100, 52, 78, 51, 85, 66, 74, 88, 56, 81, 78, 47, 90, 41, 8, 88, 82, 94, 91, 87, 64, 93, 8, 6, 20, 101]).
f([5, 15, 30, 45, 87, 90, 3, 79, 57, 4, 64, 12, 73, 18, 94, 50, 72, 5, 83, 81, 38, 2, 68, 60, 31, 47, 12, 15, 86, 36, 40, 51, 3, 61, 34, 59, 74, 84, 94, 31, 50, 67]).
f([8, 44, 81, 33, 48, 76, 67, 86, 75, 4, 87, 58, 27, 36]).
f([77, 91, 59, 79, 57, 83, 88, 90, 79, 78, 7, 85, 18, 29, 92, 28, 24, 65, 37, 4, 73, 7, 34, 69, 42, 55]).
f([97, 14, 66, 41, 25, 8, 2, 69, 36, 20, 97, 74, 38, 36, 68, 46, 9, 44, 73, 91, 17, 68, 55, 9, 28, 73, 26, 25, 29, 29, 36, 98, 101, 80, 64, 60, 97, 42, 85, 93, 56, 45, 14, 50, 26]).
f([47, 64, 62, 24, 71, 23, 66, 81, 85, 22, 92, 62, 45, 23, 98, 20]).
f([27, 71, 52, 42, 40, 10, 65, 48, 87, 23, 61, 86, 40, 17, 89, 10, 99, 4, 53, 42]).
f([75, 39, 91, 2, 3, 37, 54, 37, 19, 86, 44, 45, 58, 90, 54, 68, 91, 72, 74, 17, 13, 56, 54, 22, 54]).
:-end_in_neg.
