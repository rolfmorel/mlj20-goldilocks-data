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
:- modeh(*,f(+list,-list)).
:- modeb(*,f(+list,-list)).
:- modeb(*,cons(+element,+list,-list)).

:- determination(f/2,head/2).
:- determination(f/2,tail/2).
:- determination(f/2,geq/2).
:- determination(f/2,empty/1).
:- determination(f/2,even/1).
:- determination(f/2,odd/1).
:- determination(f/2,one/1).
:- determination(f/2,zero/1).
:- determination(f/2,decrement/2).
:- determination(f/2,f/2).
%% :- determination(f/2,increment/2).
%% :- determination(f/2,element/2).
:- determination(f/2,cons/3).
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
f([42, 3, 70, 73, 34, 28, 87, 25, 84, 90, 49, 90, 83, 44, 9, 29, 69, 23, 22, 70, 18, 26, 7, 1, 101, 27, 8, 2, 21, 44, 77, 92, 83, 22, 65, 54, 71, 70, 15],[42, 42, 42, 42, 3, 70, 73, 34, 28, 87, 25, 84, 90, 49, 90, 83, 44, 9, 29, 69, 23, 22, 70, 18, 26, 7, 1, 101, 27, 8, 2, 21, 44, 77, 92, 83, 22, 65, 54, 71, 70, 15]).
f([65, 72, 52, 52, 73, 69],[65, 65, 65, 65, 72, 52, 52, 73, 69]).
f([4, 67, 8, 23, 23, 33, 52, 42, 96, 93, 68, 64, 35],[4, 4, 4, 4, 67, 8, 23, 23, 33, 52, 42, 96, 93, 68, 64, 35]).
f([89, 73, 85, 9, 35, 68, 45, 92, 80, 15, 34, 55, 67, 8, 26, 42, 100, 21],[89, 89, 89, 89, 73, 85, 9, 35, 68, 45, 92, 80, 15, 34, 55, 67, 8, 26, 42, 100, 21]).
f([69, 97, 90, 14, 95, 18, 49, 36, 75, 72, 38, 86, 75, 82, 96, 15, 87, 100, 29, 37, 101, 62, 10, 65, 37, 37, 44, 93, 99, 49, 11, 98, 85, 65, 52, 16, 75, 58, 8, 22, 64, 97, 91, 66, 55, 60],[69, 69, 69, 69, 97, 90, 14, 95, 18, 49, 36, 75, 72, 38, 86, 75, 82, 96, 15, 87, 100, 29, 37, 101, 62, 10, 65, 37, 37, 44, 93, 99, 49, 11, 98, 85, 65, 52, 16, 75, 58, 8, 22, 64, 97, 91, 66, 55, 60]).
f([93, 51, 41, 46, 88, 13, 2, 92, 18, 48, 22, 81, 87, 11, 97, 92, 16, 33, 1, 72, 11, 3, 66, 28, 91, 78, 57],[93, 93, 93, 93, 51, 41, 46, 88, 13, 2, 92, 18, 48, 22, 81, 87, 11, 97, 92, 16, 33, 1, 72, 11, 3, 66, 28, 91, 78, 57]).
f([51, 33, 91, 22, 77, 79, 64, 42, 95, 12, 16, 77, 5, 17, 76, 77, 59, 14, 88, 84, 50, 33, 52, 28, 97, 92, 91, 94, 30, 80, 20, 43, 93, 5, 8, 88, 98],[51, 51, 51, 51, 33, 91, 22, 77, 79, 64, 42, 95, 12, 16, 77, 5, 17, 76, 77, 59, 14, 88, 84, 50, 33, 52, 28, 97, 92, 91, 94, 30, 80, 20, 43, 93, 5, 8, 88, 98]).
f([70, 83, 7, 69, 58, 100, 4, 15, 21, 45, 91, 92, 5, 54, 71, 28, 66, 62, 33, 5, 71, 17, 41, 91, 89, 75, 44, 18, 92, 33],[70, 70, 70, 70, 83, 7, 69, 58, 100, 4, 15, 21, 45, 91, 92, 5, 54, 71, 28, 66, 62, 33, 5, 71, 17, 41, 91, 89, 75, 44, 18, 92, 33]).
f([56, 101, 53, 57, 71, 37, 66, 35, 40, 15, 27, 28, 19, 80, 13, 68, 44, 19, 47, 79, 14, 89, 26, 62, 73, 81, 3, 54, 17, 35, 51, 63, 72, 16, 63, 80, 26, 42, 6, 78, 86],[56, 56, 56, 56, 101, 53, 57, 71, 37, 66, 35, 40, 15, 27, 28, 19, 80, 13, 68, 44, 19, 47, 79, 14, 89, 26, 62, 73, 81, 3, 54, 17, 35, 51, 63, 72, 16, 63, 80, 26, 42, 6, 78, 86]).
f([59, 85, 88, 12, 62, 85, 85, 16, 87, 60, 92, 29, 86, 77, 95],[59, 59, 59, 59, 85, 88, 12, 62, 85, 85, 16, 87, 60, 92, 29, 86, 77, 95]).
:-end_in_pos.
:-begin_in_neg.
f([76, 4, 7, 24, 100, 66, 70, 92, 39, 39, 90, 73, 70, 34, 4, 66, 41, 2, 98, 37, 69, 10, 46, 20, 47, 10, 14, 38, 51, 17, 95, 78, 31, 3, 1, 60, 1, 75, 47, 41, 49, 19, 82, 35],[76, 4, 7, 24, 100, 66, 70, 92, 39, 39, 90, 73, 70, 34, 4, 66, 41, 2, 98, 37, 69, 10, 46, 20, 47, 10, 14, 38, 51, 17, 95, 78, 31, 3, 1, 60, 1, 75, 47, 41, 49, 19, 82, 35]).
f([62, 73, 40, 40, 58, 61, 76, 12, 74, 12, 40, 63, 16, 51, 97, 77, 64, 95, 63, 17],[62, 73, 40, 40, 58, 61, 76, 12, 74, 12, 40, 63, 16, 51, 97, 77, 64, 95, 63, 17]).
f([13, 99, 77, 13, 35, 19, 70, 1, 8, 47, 85, 29, 48, 30, 81, 86, 58, 63, 76, 70, 42, 52, 21, 78, 98, 10, 81, 101, 52, 14, 57],[13, 99, 77, 13, 35, 19, 70, 1, 8, 47, 85, 29, 48, 30, 81, 86, 58, 63, 76, 70, 42, 52, 21, 78, 98, 10, 81, 101, 52, 14, 57]).
f([53, 88, 26, 71, 68, 25, 1, 49, 97, 19, 27, 26, 42, 96, 25, 86, 39, 22, 3, 34, 91, 80, 32, 99, 1, 52, 84, 16, 38, 70, 71, 83, 90, 80, 47, 88, 39, 69, 77, 73, 12, 27, 93, 53, 42, 71, 84, 98, 37],[53, 88, 26, 71, 68, 25, 1, 49, 97, 19, 27, 26, 42, 96, 25, 86, 39, 22, 3, 34, 91, 80, 32, 99, 1, 52, 84, 16, 38, 70, 71, 83, 90, 80, 47, 88, 39, 69, 77, 73, 12, 27, 93, 53, 42, 71, 84, 98, 37]).
f([74, 99, 38, 88, 17, 82, 97, 13, 64, 76],[74, 99, 38, 88, 17, 82, 97, 13, 64, 76]).
f([84, 22, 90, 84, 24, 79, 87, 5, 47, 42, 50, 5, 51, 1, 93, 76, 21, 34, 72, 42, 80, 71, 39, 20, 5, 24, 61, 32],[84, 22, 90, 84, 24, 79, 87, 5, 47, 42, 50, 5, 51, 1, 93, 76, 21, 34, 72, 42, 80, 71, 39, 20, 5, 24, 61, 32]).
f([68, 10, 76],[68, 10, 76]).
f([96, 28, 67, 78, 45, 99],[96, 28, 67, 78, 45, 99]).
f([45, 7, 15, 50, 64, 52, 30, 36, 24, 94, 11, 35, 6, 76, 59, 90, 35, 51, 95, 60, 60, 33, 47, 16, 89, 55, 60, 13, 81, 81],[45, 7, 15, 50, 64, 52, 30, 36, 24, 94, 11, 35, 6, 76, 59, 90, 35, 51, 95, 60, 60, 33, 47, 16, 89, 55, 60, 13, 81, 81]).
f([67, 28, 21],[67, 28, 21]).
:-end_in_neg.
