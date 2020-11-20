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
f([72, 74, 16, 70, 60, 14, 34, 74, 26, 96, 8]).
f([38, 56, 62, 18, 38, 58, 20, 48, 10, 86, 34, 56, 72, 14, 38, 54, 44, 6, 88, 66, 38, 44, 70, 18, 76, 76, 72, 62, 66, 10]).
f([36, 8, 52, 22, 80]).
f([40, 32, 62, 54, 8, 8, 2, 16, 98, 22, 58, 86, 4, 8, 48, 34, 24, 68, 30, 86, 48, 78, 84, 96, 38, 76, 12, 96, 54]).
f([72, 38, 24, 52, 64, 12, 6, 84, 26, 92, 22, 48, 78, 70, 24, 48, 2, 94, 86, 74, 14, 72, 4, 86, 6, 30, 76, 52, 24, 68, 8, 46, 12, 76, 80, 90, 78, 50, 92, 30, 82, 14, 86, 4, 94, 78, 22, 30, 2, 36]).
f([74, 50, 96, 96, 60, 24, 60, 42, 88, 86, 40]).
f([94, 12, 76, 28, 98, 54, 76, 16, 40, 60, 100, 56, 96, 60, 2, 96, 48, 54, 60, 30, 92, 14, 54, 88, 30, 24, 68, 40, 8, 76, 42, 2, 64, 78, 80, 88, 96, 58, 44, 22, 2, 26, 92]).
f([20, 8, 10, 48, 24, 60, 78, 98, 14, 74, 36, 24, 26, 56, 44, 36, 2, 14, 86, 32, 56, 88, 8]).
f([6, 6, 56, 30, 92, 68, 86, 88, 70, 76, 86, 24, 32, 4, 70, 8, 44, 66, 28]).
f([36, 62, 84, 30, 56, 72, 60, 66, 40, 90, 88, 38, 92, 36, 14, 24, 86, 96, 84, 90, 90, 20, 54, 88, 78, 26, 62, 16, 10, 40]).
:-end_in_pos.
:-begin_in_neg.
f([58, 48, 42, 1, 79, 74, 76, 67, 37, 30, 39, 93, 78, 30, 64, 36, 21, 59, 80, 54, 75, 59]).
f([18, 78, 50, 15, 97, 5, 25, 11]).
f([98, 12, 23, 16, 74, 57, 93, 12, 47, 68, 89, 36, 50, 90, 32, 11, 58]).
f([98, 78, 96, 50, 22, 58, 80, 34, 50, 28, 5, 96, 64, 76, 36, 41, 50, 74, 86, 84, 80, 56, 77, 72, 14, 68, 30, 22, 38, 36, 68, 4, 19, 100, 62, 98, 58, 58, 70, 36, 78, 64, 36, 98, 46, 50, 6]).
f([49, 16, 96, 60, 4, 92, 58, 54, 44, 8, 32, 38, 94, 40, 4, 4, 93, 68, 10, 93, 30, 73, 30, 32, 12, 33, 14, 20, 6, 72, 62, 40, 90, 1, 94, 2, 6]).
f([35, 45, 35, 11, 73, 49, 11, 47, 85]).
f([45, 51, 35, 63, 99, 51, 35, 73, 63, 93, 36, 19, 19, 24, 65, 83, 75, 39, 15, 81, 97, 30, 29, 9, 86, 91, 75, 45, 99, 33, 93, 42]).
f([83, 73, 97, 65, 61, 17, 51, 92, 71, 14, 56, 89, 58, 31, 6, 79, 24, 98, 1, 31, 60, 63, 64, 44, 15, 58, 85, 57, 47, 16, 9, 53, 99, 11]).
f([12, 19, 42, 41, 72, 24, 57, 78, 73, 17, 60, 11, 60, 80, 43, 48, 27, 46, 4, 80, 9, 36, 68, 18, 77, 87, 6, 66, 88, 14, 54, 44, 56, 7, 66, 82]).
f([70, 61, 30, 45, 45, 89, 23, 80, 29, 53, 4, 13, 35, 78, 59, 6, 17, 25, 39, 28, 30, 16, 91, 4, 43, 89]).
:-end_in_neg.
