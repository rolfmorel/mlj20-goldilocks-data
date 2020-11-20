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
:- modeh(*,f(+list,-element)).
:- modeb(*,f(+list,-element)).
%% :- modeb(*,cons(+element,+list,-list)).

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
%% :- determination(f/2,element/2).
%% :- determination(f/2,increment/2).
%% :- determination(f/2,element/2).
%% :- determination(f/2,cons/3).
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
f([80, 35, 75, 60, 27, 57, 89, 43, 97, 87, 20, 52],52).
f([31, 74, 7, 95, 41, 101, 32, 29, 79, 83, 99, 22, 98, 71, 13, 59, 56, 43, 45, 93, 80, 15, 46, 18, 24, 93, 79, 88, 13, 60, 26, 54],54).
f([49, 67, 38, 65, 52, 32, 61, 95, 45, 4, 71, 94, 2, 25, 40, 23],23).
f([90, 43, 14, 55, 24, 20, 78, 15, 10, 3],3).
f([23, 40, 58, 33, 65, 21, 2, 58, 45, 63, 35, 7, 74, 45, 5, 2, 24, 51, 50, 34, 37, 1, 17, 86, 99, 62, 69, 42, 74, 38, 69, 3, 55, 67, 31, 82, 7, 18, 36, 43, 50, 4, 89, 70, 72, 10, 91, 62, 41],41).
f([88, 46, 13, 59, 56, 100, 79, 20, 63, 68, 78, 98, 15, 96, 78, 69, 58, 12, 12, 96, 55, 64, 6, 101, 62, 22, 9, 94, 10, 18, 94, 22, 64, 78, 67, 3, 39, 79, 14, 10, 50, 95, 99, 49, 72, 15, 67, 68, 13, 49, 89],89).
f([28, 96, 49, 90, 60, 49, 39, 87, 37, 24, 78, 87, 86, 37, 48, 51, 37, 37, 52, 71, 88, 80, 29, 101],101).
f([100, 54, 7, 12, 89, 7, 67, 66, 7, 52, 74, 61, 10, 92, 26, 15, 18, 75, 42, 73, 1, 39, 22, 4, 13, 59, 46, 58, 57, 97, 42, 92, 75, 49, 91, 49, 9, 57, 55],55).
f([8, 85, 11, 63, 82, 36, 76, 75, 75, 26, 1, 68, 18, 89, 35, 15, 43, 36, 95],95).
f([81, 96, 52, 56, 93, 82, 35, 55, 87, 85, 30, 52],52).
:-end_in_pos.
:-begin_in_neg.
f([3, 52, 36],52).
f([8, 47, 79, 22, 91, 90, 43, 73, 7, 54, 90, 65, 79, 16, 40, 95, 8, 6, 100, 27, 5, 80, 92, 81, 53, 47, 14, 14, 90, 57, 2, 36, 95, 22, 30, 49, 55, 53, 47, 84, 57],91).
f([55, 101, 17, 65, 83, 79, 35, 13, 23, 93, 79, 91, 4, 77, 65, 82, 47, 28, 40, 83, 64, 37, 33, 66, 62, 9, 9, 23, 63, 92, 72, 93, 21, 12, 57, 6, 85, 60, 21, 17, 49, 20, 57, 5, 21, 23],21).
f([14, 66, 97, 50, 101, 76, 15, 6, 28, 39, 49, 27, 6, 24, 60, 48, 73, 41, 38, 67, 35, 93, 93, 14, 18, 59, 30, 8, 76, 80, 51, 13, 88, 42, 62, 65],93).
f([10, 101, 41, 5, 20, 73, 62, 60, 87, 38, 21, 5, 94, 45, 26, 97, 16, 44, 42, 29, 86, 90, 2, 67, 52, 57, 3, 61, 92, 70, 26, 29, 5, 47, 47, 20, 85, 24, 61, 73, 16, 18, 64, 36, 15, 48, 62, 40, 34, 59],90).
f([88, 24, 43, 45, 34, 40, 49, 31, 99, 32, 82, 62, 81, 33, 95, 29, 34, 8, 99, 92, 30, 88, 66],34).
f([31, 44, 13, 8, 93, 55, 89],44).
f([88, 53, 51, 7, 57, 59, 57, 7, 33, 11, 43, 78, 32, 13, 86, 59, 98, 52, 41, 7, 28, 30, 17, 98, 6, 13, 62, 62, 17, 19, 90, 38, 43, 91, 50, 60],91).
f([89, 21, 73, 53, 6, 70, 77, 83, 32, 98, 9],89).
f([67, 77, 48, 36, 73, 24, 47, 82, 29, 94, 42, 88, 35, 11, 6, 47, 11, 40, 11, 7, 52, 75, 93, 34, 38, 95, 30, 20, 89, 40, 50, 85, 75, 69, 4, 93, 60, 54, 11, 28, 61, 64],36).
:-end_in_neg.
