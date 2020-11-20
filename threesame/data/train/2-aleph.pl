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
f([2, 2, 2, 61, 96, 85, 75, 2, 55, 86, 73, 73, 65, 77, 14, 42, 52, 25, 71, 47, 81, 84, 41, 20, 96, 1, 35, 35, 72, 31, 1, 66, 8, 51, 8, 25]).
f([55, 55, 55, 12, 44, 8, 88, 17, 71, 71, 91, 88, 72, 12, 56, 77, 58, 82, 45, 3, 97]).
f([80, 80, 80, 95, 70, 23, 19, 10, 76, 5, 17, 15, 32, 81, 16, 97, 27, 14, 59, 34, 38, 20, 48, 13, 8, 3, 19]).
f([84, 84, 84, 56, 51, 27, 2, 97, 58, 88, 79, 56, 12, 99, 11, 94, 80, 48, 51, 61, 5, 5, 87, 48, 101, 77, 13, 27]).
f([91, 91, 91, 77, 66, 15, 5, 61, 4, 96, 5, 36, 38, 63, 49, 69, 10, 29, 78, 69, 46, 8, 63, 5, 65, 19, 78]).
f([6, 6, 6, 70, 86, 27, 5, 65, 29, 39, 21, 16, 45, 39, 23, 9, 83, 47, 21, 57, 39, 47, 84, 30, 99, 11, 60, 19, 18]).
f([71, 71, 71, 11, 37, 3, 77, 3, 17, 69, 17, 46, 97, 81, 91, 56, 49, 93, 7, 6, 79, 18]).
f([17, 17, 17, 65]).
f([78, 78, 78, 58, 52, 31, 42, 52, 67, 46, 20, 85, 15, 62, 23, 21, 99, 85, 77, 85, 9, 94, 4, 80, 75, 45, 17, 5, 74, 85, 94, 19, 87, 47, 18, 21, 46, 81, 51, 42]).
f([60, 60, 60, 26, 59, 46, 11, 31, 29, 25, 90, 83, 34, 51, 36, 90, 70, 51, 101, 58, 53, 41, 33, 50, 98, 14, 28, 77, 30, 92, 25, 97, 73, 72, 30, 14, 88, 48, 12, 84, 24, 64, 3, 95, 4, 24, 4, 39, 13, 69, 40, 75, 23]).
:-end_in_pos.
:-begin_in_neg.
f([89, 1, 73, 87]).
f([52, 24, 54, 57, 20, 76, 83, 37, 74, 100, 7, 61, 64, 47, 20, 4, 88, 34, 6, 30, 17, 76, 73, 62, 91, 11, 97, 20, 12, 18, 60, 21, 80, 25, 38, 18, 57, 92, 62, 9]).
f([42, 5, 65, 40, 23, 47, 12, 81, 10, 36, 38, 11]).
f([57, 12, 96, 33, 83, 44, 100, 10, 86, 31, 43, 62, 14, 17, 72, 57, 76, 74, 51, 49, 16, 81, 93, 37, 34, 83, 85, 86, 2, 44, 47, 88, 3, 78, 27, 61, 30, 34, 4, 90, 12, 23, 43, 40, 43, 63]).
f([78, 80, 83, 48, 63, 14, 68, 20, 62, 47, 21, 31, 22, 26, 95, 19, 29, 20, 67, 25, 77, 34, 8, 70, 10, 12, 15, 40, 46, 50, 44, 62]).
f([75, 19, 65, 97, 53, 67, 50, 100, 35, 84, 7, 62, 25, 23, 7, 33, 34, 101, 12, 62, 92, 72, 30, 86, 63, 36, 10, 14, 82, 97, 100, 74, 95, 91, 2, 16, 3, 100, 53, 76, 2, 77, 10, 36, 97, 80, 22, 70, 99, 1, 36, 83, 98, 42]).
f([30, 42, 40, 76, 47, 16, 51, 69, 76, 55, 23, 41, 61, 45, 74, 77, 14, 74, 55, 16, 45, 67, 84]).
f([31, 84, 69, 89, 40, 16, 43, 99]).
f([5, 39, 47, 41, 46, 72, 31, 14, 48, 7, 6, 47, 56, 40, 44, 80, 73, 81, 9, 29, 94, 31, 84, 25, 95, 93, 14, 27, 35, 73, 66, 39, 67, 70, 46, 38, 3, 75, 40, 20, 32, 14, 2]).
f([70, 47, 14, 84, 8]).
:-end_in_neg.
