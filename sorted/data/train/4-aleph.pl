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
f([3, 3, 3, 9, 10, 11, 15, 16, 21, 21, 24, 24, 27, 28, 34, 36, 36, 37, 39, 42, 42, 51, 53, 53, 54, 55, 55, 56, 57, 57, 60, 64, 66, 71, 72, 78, 78, 83, 83, 85, 85, 86, 88, 91, 91, 100, 100, 101]).
f([1, 11, 11, 12, 15, 18, 19, 29, 35, 38, 46, 48, 48, 48, 49, 50, 51, 52, 57, 58, 58, 59, 60, 63, 66, 67, 71, 72, 77, 87, 87, 88, 89, 89, 90]).
f([3, 4, 9, 19, 19, 24, 35, 36, 37, 38, 41, 50, 52, 77, 79, 83, 84, 84, 85, 86, 87, 90, 94, 100, 100, 101]).
f([2, 4, 4, 6, 11, 14, 17, 23, 23, 24, 26, 27, 28, 29, 31, 31, 32, 32, 39, 44, 51, 52, 53, 54, 57, 58, 59, 64, 65, 73, 76, 79, 80, 84, 87, 87, 88, 90, 93, 94, 100, 100]).
f([4, 6, 22, 24, 25, 32, 40, 43, 66, 83, 91, 97]).
f([6, 9, 17, 26, 51, 53, 58, 59, 67, 98, 101]).
f([12, 12, 17, 37, 48, 61, 61, 71, 73, 96]).
f([5, 14, 20, 22, 24, 25, 28, 30, 35, 36, 39, 40, 58, 63, 66, 69, 73, 74, 77, 82, 87, 89, 97, 99]).
f([1, 3, 18, 21, 26, 27, 31, 33, 34, 36, 39, 40, 41, 42, 43, 47, 52, 57, 58, 61, 67, 72, 72, 72, 75, 84, 86, 96, 98, 100, 100, 101]).
f([2, 6, 9, 16, 21, 21, 24, 28, 29, 30, 36, 43, 46, 46, 48, 49, 53, 53, 56, 59, 67, 67, 68, 79, 87, 93, 94, 98, 101]).
:-end_in_pos.
:-begin_in_neg.
f([52, 92, 56, 77, 35, 35, 13, 46, 76, 64, 58, 47, 74, 25, 80, 55, 18, 10, 13, 48, 58, 23, 98]).
f([42, 7, 71, 79, 76, 31, 42, 39]).
f([65, 80, 75, 75, 10, 57]).
f([41, 10, 83, 90, 55, 96, 23, 56, 59, 82, 61, 27, 42, 85, 62, 10, 96, 92, 97, 22, 19, 27, 28, 74]).
f([63, 6, 51, 53, 79, 12, 94, 37, 81, 19, 48, 61, 31, 82, 37, 22, 71, 48, 12, 76, 57, 63, 57, 69, 93, 7, 67, 62, 5, 19, 39, 64, 8, 95, 88, 83, 48, 34, 85, 98, 71, 18, 68, 48]).
f([101, 50, 51, 10, 30, 64, 88, 99, 69, 53, 89, 38, 42, 94, 98, 59, 82, 23, 6, 93, 65, 96, 33, 75, 56, 30, 75, 92, 60, 59, 27, 4, 17, 37, 23, 44, 42, 15, 79, 14, 97]).
f([23, 51, 37, 45, 7, 41, 88, 32, 51, 7, 51, 19, 54, 82, 25, 98, 75]).
f([36, 12, 50, 19, 21, 4, 73, 80, 55, 50, 87, 21, 82, 78, 72, 45, 51, 28, 25]).
f([100, 12, 53, 82, 27, 45, 10, 15, 66, 19, 32, 99, 63, 14, 49, 53, 50, 38, 1, 16, 92, 44, 95]).
f([8, 31, 80, 86, 52, 33, 21, 26, 39, 90, 34, 42, 15, 100, 48, 71, 68]).
:-end_in_neg.
