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
f([1, 8, 9, 13, 21, 22, 22, 25, 26, 27, 29, 31, 32, 36, 40, 43, 45, 49, 53, 53, 54, 64, 64, 67, 69, 70, 74, 80, 81, 82, 84, 90, 90, 93, 97, 99, 101]).
f([22, 25, 29, 37, 92]).
f([2, 4, 5, 9, 15, 17, 20, 26, 31, 35, 38, 39, 41, 41, 42, 42, 42, 54, 59, 62, 64, 67, 71, 73, 76, 77, 81, 81, 81, 84, 87, 92, 93, 96, 97, 97]).
f([3, 57, 67, 73, 98]).
f([3, 11, 17, 20, 39, 49, 49, 53, 54, 70, 76, 90, 94, 97, 99]).
f([2, 7, 8, 8, 23, 29, 35, 41, 42, 43, 43, 45, 48, 49, 50, 51, 54, 56, 59, 60, 60, 61, 65, 71, 72, 73, 76, 79, 79, 80, 87, 89, 95]).
f([6, 7, 10, 16, 16, 17, 17, 19, 21, 22, 25, 25, 27, 30, 31, 35, 36, 37, 41, 46, 47, 49, 50, 54, 56, 56, 58, 59, 60, 63, 66, 66, 79, 83, 90, 92, 97, 98, 98]).
f([2, 3, 5, 5, 6, 7, 7, 12, 13, 13, 15, 17, 23, 27, 27, 27, 27, 30, 36, 37, 39, 40, 41, 44, 45, 46, 50, 51, 51, 52, 55, 55, 57, 59, 61, 61, 64, 65, 65, 67, 71, 74, 80, 80, 84, 85, 87, 88, 95]).
f([3, 4, 7, 9, 12, 17, 20, 22, 23, 26, 35, 45, 50, 54, 56, 56, 56, 58, 58, 60, 67, 68, 73, 74, 82, 84, 88, 88, 90, 92, 97, 98, 101]).
f([2, 2, 2, 9, 10, 10, 15, 16, 16, 22, 23, 25, 27, 30, 30, 33, 39, 39, 40, 48, 50, 50, 51, 53, 59, 63, 64, 68, 69, 70, 71, 73, 77, 93, 100]).
:-end_in_pos.
:-begin_in_neg.
f([10, 47, 74, 69, 56, 98, 79, 47, 59, 29, 73, 32, 61, 44, 3, 42, 26, 47, 54, 51, 52, 25, 94, 60, 9, 3]).
f([35, 4, 32, 82, 56, 48, 42, 42, 17, 17, 13, 66, 18, 31, 71, 71, 59, 10, 58, 3, 86, 75]).
f([47, 26, 17, 44, 100, 17, 79, 86, 41, 84, 81, 1, 99, 16, 78, 32, 55, 63, 20, 48, 83, 8, 98, 30, 98, 85, 62, 90, 75, 27, 69, 73, 34, 50, 1, 14, 63, 77, 76, 65, 38, 78]).
f([3, 43, 79, 39, 69, 24, 101, 75, 74, 31, 1, 100, 52, 25, 82, 96, 35, 18, 89, 16, 56, 41, 68, 50, 58, 88, 37, 97, 90, 19, 24, 60, 70, 85, 70, 34]).
f([43, 32, 29, 22, 65, 81, 94, 97, 72, 58, 22, 90, 60, 7, 8, 79, 91, 2, 79, 57, 90, 42, 77, 60, 33, 80, 90, 87, 1, 4, 100, 70, 35, 31, 77, 80, 25, 99, 21, 1, 7, 52, 40, 32, 50, 19]).
f([57, 89, 7, 56, 50, 64, 95, 72, 24, 90, 3, 72, 74, 14, 13, 74, 93, 26]).
f([73, 7, 17, 22, 99, 12, 99, 80, 59, 101, 64, 42, 39, 100, 65, 6, 68, 70, 17, 57, 55, 84, 73, 58, 63, 18, 60]).
f([81, 28, 20, 12, 85, 62, 49, 30, 19, 15, 69, 94]).
f([63, 46]).
f([12, 73, 95, 4, 9, 61, 82, 25, 6, 77, 3, 16, 40, 59, 96, 12, 17, 19]).
:-end_in_neg.
