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
f([78, 50, 64, 86, 82, 16]).
f([52, 92, 46, 90, 96, 64, 72, 40]).
f([16, 32, 14, 2, 30, 68, 74, 94, 40, 94, 12, 26, 82, 54, 32, 96, 84, 32, 24, 36, 84]).
f([8, 54, 68, 40, 96, 100, 66, 42, 58, 90, 46, 88, 86, 76, 20, 54, 42, 84, 82, 70, 48, 72, 36, 50, 70, 16, 46, 20, 44, 98, 8, 60, 30, 2, 52, 14, 34, 94, 70, 68, 76, 36, 42, 86, 92, 26, 42, 72, 78, 14]).
f([98, 10, 80, 34, 24, 56, 10, 12, 10, 78, 16, 12]).
f([90, 64, 10, 72, 10, 50, 4, 10, 54, 64, 50, 38, 14, 24, 100, 66, 92, 54, 58, 90, 54, 20, 64, 52, 2, 90, 76, 42, 52, 30, 34, 70, 24, 64, 42]).
f([92, 88, 90, 62, 14, 78, 100, 18, 20, 20, 40, 62, 12, 64, 68, 16, 26, 62, 48, 40, 36, 76, 38, 64, 42, 92, 72, 34, 16, 80, 84, 36, 36, 4]).
f([22, 42, 42, 22, 28, 30, 6, 20, 28, 26, 92, 10, 6, 50, 18, 24, 40, 44, 36, 90, 26, 62, 96, 4, 24, 92]).
f([18, 6, 70, 44, 2, 80, 40, 100, 36, 2, 86, 16, 66, 80, 50, 86, 6, 80, 18, 8, 52, 2, 64, 6, 44, 28, 62, 82, 38, 34, 100, 54, 14, 44, 28, 14, 14, 56, 60, 18, 30, 72, 46, 82, 14]).
f([26, 48, 98, 60, 18, 66]).
:-end_in_pos.
:-begin_in_neg.
f([73, 59, 65, 21, 23, 52, 11, 3, 90, 44, 67, 25, 73, 71, 76, 19, 11, 85, 21, 29, 46, 48, 66, 21, 19, 89, 88, 27, 53, 83]).
f([81, 4, 93, 41, 79, 79, 100, 25, 16, 24, 21, 93, 33, 57, 72, 18, 88, 84]).
f([60, 23, 36, 50, 74, 30, 79, 98, 81, 86, 93, 50, 67, 91, 44, 66, 8, 70, 47, 78, 13, 56, 9, 14, 36, 3, 52, 44, 9, 34, 45, 6, 76, 94, 35, 63, 15, 36, 26]).
f([7, 39, 3, 34, 97, 67, 51, 81, 29, 91, 15, 93, 99, 81, 79, 51, 49, 37, 43, 5, 57, 91, 41, 15, 63, 49, 81, 45, 43, 27, 14, 31, 77, 69, 13, 27, 57, 5, 17, 83, 1, 1, 45, 65, 25, 27, 27]).
f([48, 58, 55, 97, 49, 76, 55, 59, 23, 8, 30, 7, 55, 61, 83, 41, 28, 84, 44, 53, 88, 66, 45, 8, 77]).
f([67, 95, 23, 21, 65, 67, 63, 86, 58, 15, 99, 91, 44, 26, 45, 53, 7, 38]).
f([34, 67, 76, 41, 8, 31, 13, 56, 57, 21, 47, 68, 5, 46, 75, 85, 3, 56, 43, 2, 79, 60, 59, 12, 67, 48, 15, 56]).
f([78, 26, 78, 31, 35, 21, 61, 55, 37, 43, 63, 18, 33, 88, 18, 1, 95, 81, 25, 87, 21, 71, 61, 85, 57, 25, 27, 56, 29, 31, 15, 29, 8, 51, 79, 21, 28, 87, 69, 7, 1, 81, 21, 39, 91, 69, 97, 9, 25, 13]).
f([83, 77, 37, 17, 58, 52, 61, 85, 17, 56, 59, 73, 37, 57, 37, 68, 66, 28, 31, 1, 94, 47, 17, 25]).
f([38, 73, 49, 97, 66, 37, 23, 8, 26, 7, 64, 43, 98, 44, 51, 52, 67, 73, 84, 75]).
:-end_in_neg.
