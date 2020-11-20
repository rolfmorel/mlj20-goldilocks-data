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
f([9, 35, 38, 41, 73, 77, 88, 90]).
f([2, 5, 10, 11, 12, 19, 20, 21, 22, 24, 26, 31, 42, 44, 45, 49, 49, 49, 49, 64, 72, 73, 80, 82, 85, 88, 90, 90, 94, 95, 95, 99, 100]).
f([1, 2, 2, 12, 13, 15, 19, 21, 23, 27, 30, 31, 33, 37, 42, 48, 51, 52, 56, 57, 58, 63, 65, 65, 65, 67, 68, 71, 74, 82, 86, 86, 89, 91, 92, 99]).
f([25, 43, 45, 59, 72]).
f([10, 19, 23, 56, 60, 66, 67, 77, 84, 87, 88, 90, 92, 94, 99]).
f([4, 8, 15, 26, 26, 43, 49, 50, 51, 54, 55, 57, 68, 92, 94, 100, 101, 101]).
f([1, 7, 8, 10, 21, 21, 21, 23, 25, 26, 26, 28, 31, 46, 46, 47, 53, 54, 61, 63, 67, 73, 78, 81, 87, 90, 94, 95]).
f([1, 6, 9, 12, 12, 19, 20, 27, 35, 37, 40, 40, 58, 59, 60, 61, 64, 65, 70, 77, 77, 83, 83, 86, 87, 95, 100, 100]).
f([3, 4, 4, 9, 9, 9, 10, 17, 20, 23, 25, 26, 31, 36, 37, 43, 46, 48, 52, 53, 55, 56, 66, 74, 75, 78, 80, 82, 100, 101]).
f([6, 8, 8, 15, 17, 18, 25, 27, 27, 27, 29, 35, 35, 38, 40, 42, 43, 44, 44, 47, 51, 51, 52, 53, 55, 55, 58, 60, 61, 64, 66, 69, 69, 70, 70, 71, 79, 81, 81, 82, 85, 87, 87, 91, 92]).
:-end_in_pos.
:-begin_in_neg.
f([79, 32, 27, 13, 2, 61, 92, 83, 36, 35, 65, 17, 37, 14, 98, 36, 75, 96, 73, 29, 5, 71, 14, 84, 75, 73, 26, 60, 52, 101, 57, 24, 70, 50, 83, 46, 83, 65, 42, 17]).
f([67, 93, 86, 42, 30, 2, 33, 62, 42, 15, 73, 60, 6, 22, 21, 5, 6, 5, 36, 15, 35, 52, 98, 8, 44, 32, 92, 20, 79, 90, 30, 98, 36, 80, 64, 83, 12, 95, 56, 88, 46, 89, 65, 88, 12, 40, 22, 27]).
f([15, 56, 67, 82, 39, 45, 50, 75, 51, 14, 83, 73, 88, 39, 60, 35, 3, 27, 35, 46, 98, 42, 45, 93, 56]).
f([59, 1, 22, 86, 22, 14, 48, 63, 96, 2, 70, 22, 2, 61, 37, 101, 43, 24, 54, 77, 33, 62, 79, 40, 21, 72, 61, 43, 19, 24]).
f([69, 24, 99, 38, 26, 72, 17, 85, 60, 15, 28, 70, 27, 43, 20, 50, 62, 21, 22, 72, 33, 37, 57, 1, 3, 59, 42, 4, 87, 12, 44, 80, 87, 63]).
f([43, 52, 2, 95, 83, 18, 27, 3, 24, 49]).
f([91, 67, 93, 41, 91, 64, 91, 33, 4, 75, 24, 70, 65, 96, 27, 96, 70, 82, 46, 27, 99, 59, 80, 17, 67, 51, 80, 59, 9, 11, 27, 65, 14, 41, 54, 44, 31]).
f([88, 79, 86, 24, 42, 32, 79, 68, 24, 30, 80, 31, 54, 52, 16, 38, 63, 55, 90, 7, 50, 35, 61, 28, 72, 2, 30, 36, 39, 55, 48, 3, 47, 42]).
f([12, 62, 53, 75, 4, 21, 88, 99, 33, 27, 68, 92, 7]).
f([59, 44, 25, 65]).
:-end_in_neg.
