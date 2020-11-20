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
f([11, 17, 28, 30, 37, 43, 60, 64, 64, 69, 73, 75, 75, 80, 91, 98]).
f([16, 21, 39, 46, 46, 48, 50, 54, 75, 81, 91, 95]).
f([5, 8, 17, 17, 20, 22, 27, 30, 34, 36, 40, 43, 47, 56, 59, 59, 62, 68, 72, 72, 87, 95, 99, 100]).
f([2, 15, 15, 22, 28, 34, 35, 37, 39, 41, 42, 55, 58, 64, 64, 66, 67, 72, 74, 74, 76, 78, 79, 85, 86, 88, 89, 92, 94, 96, 100, 100, 100]).
f([2, 22, 26, 28, 51, 51, 51, 58, 61, 62, 67, 71, 71, 72, 77, 79, 82, 89]).
f([7, 10, 11, 12, 13, 15, 20, 21, 28, 29, 39, 41, 43, 45, 46, 46, 46, 47, 53, 55, 62, 62, 68, 71, 72, 73, 74, 74, 77, 78, 78, 79, 81, 82, 83, 83, 84, 86, 87, 87, 89, 90, 92, 93, 95, 95]).
f([3, 53, 54, 67, 80]).
f([6, 8, 11, 11, 13, 16, 21, 21, 25, 25, 25, 26, 29, 32, 33, 34, 36, 38, 40, 41, 44, 47, 49, 51, 51, 53, 54, 59, 61, 61, 66, 66, 67, 69, 69, 70, 71, 75, 78, 80, 80, 81, 83, 84, 89, 92, 96, 97, 97, 97, 101]).
f([3, 4, 10, 28, 30, 31, 31, 32, 33, 35, 41, 43, 47, 50, 53, 61, 70, 76, 80, 88, 89, 91, 93, 95, 97]).
f([9, 14, 14, 18, 20, 44, 52, 59, 67, 71, 81, 99, 100]).
:-end_in_pos.
:-begin_in_neg.
f([95, 26, 100, 63, 28, 15, 56, 64, 80, 85, 9, 30, 5, 37, 37, 63, 2, 30, 67, 38, 68, 27, 29, 87, 98, 68, 1, 68, 62, 74, 14, 70, 93]).
f([74, 82, 51, 16, 16, 1, 85, 85, 6, 21, 53, 12]).
f([95, 87, 5, 40, 51, 89, 58, 100, 64, 78, 41, 21, 11, 80, 27, 45, 33, 15, 80, 40, 14]).
f([9, 89, 56, 46, 33, 16, 84, 40, 81, 84, 74, 73, 13, 90, 12, 81, 23, 66, 81, 70, 83, 78, 100, 18, 96, 48, 19, 9, 90, 74, 98, 5, 31, 88, 56, 79, 86, 46, 53, 54, 99, 51, 81, 33, 5, 36, 96, 84, 12]).
f([67, 61, 16, 55, 45, 12, 83, 98, 62, 83, 40, 50, 45, 90, 69, 24, 31, 31, 26, 1, 94, 71]).
f([75, 62, 30, 67, 1, 66, 33, 95, 1, 15, 70, 16, 48, 16, 74, 8, 36, 46, 29, 4, 98, 80, 13, 2, 16, 45, 63, 32, 76, 96, 66, 101, 7, 7, 14, 23, 14, 98, 11, 90]).
f([30, 45, 67, 63, 83, 19, 3, 12, 25, 68, 38]).
f([18, 99, 74, 92, 68, 32, 16, 18, 53, 71, 57, 39, 37, 79, 22, 5, 48, 90, 74, 25, 43, 46, 42, 12]).
f([92, 58, 68, 49, 93, 13, 69, 4, 32, 86, 57, 56, 56, 99, 81, 62, 66, 62, 4, 52, 56, 85, 77, 96, 38, 31, 89, 18, 13, 30, 62, 63, 65, 56, 24, 41, 72, 27, 51, 36, 63, 14, 85, 49, 76, 96, 90, 71]).
f([82, 22, 79, 75, 78, 69, 42, 15, 49, 72, 28, 31, 60, 21, 88, 99, 36, 66]).
:-end_in_neg.
