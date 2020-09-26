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
:- modeb(*,one(+int)).
:- modeb(*,zero(-int)).
:- modeb(*,decrement(+int,-int)).
%% :- modeb(*,increment(+int,-int)). % PROBLEM SPECIFIC
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
f([43, 43, 43, 55, 46, 49, 17, 3, 49, 91, 15, 88, 70, 89, 55, 25, 13, 91, 19, 61, 65, 47, 8, 43, 66, 5]).
f([50, 50, 50, 54, 88, 36, 51, 11, 58, 56, 8, 63, 86, 9, 87, 32, 54, 18, 60, 73, 38]).
f([2, 2, 2, 67]).
f([53, 53, 53, 33, 70, 31, 26, 71, 25, 52, 67, 81, 60, 11, 95, 96, 74, 100, 37, 73, 18, 42, 27, 5, 3, 50, 45, 46, 63, 27, 98, 48, 42, 90, 36, 22, 47, 12]).
f([89, 89, 89, 5, 36, 47]).
f([69, 69, 69, 76, 45, 58, 83, 5, 54, 8, 91, 15, 11, 29, 39, 33, 79, 85, 43, 4, 77, 17, 28, 86, 97, 24, 14, 70, 18, 80, 99, 94, 100, 43, 52, 85, 30, 45, 99, 28, 2, 72, 10, 83, 32, 16, 98, 56, 100, 59, 24, 8, 70]).
f([46, 46, 46, 72, 63, 39, 18, 16, 64, 58, 67, 51, 36, 34, 42, 28, 1, 14, 66, 27, 4, 42, 65, 5, 22, 91, 49, 9, 10, 39, 79, 5, 78, 74, 13, 83, 66, 19, 8, 69, 51, 97, 19, 25]).
f([55, 55, 55, 25, 59, 17, 6, 85, 19, 35, 67, 99, 39, 81, 92, 48, 53, 93, 30, 37, 87, 48, 67, 9, 93]).
f([46, 46, 46, 22, 44, 85, 13, 76, 86, 9, 26, 59, 93, 49, 44, 6, 27, 76, 13, 96, 100, 68, 39, 29, 16, 47, 75, 81, 18, 17, 84, 83, 32, 31, 98, 12, 52, 80]).
f([47, 47, 47, 23, 26, 83, 33, 27, 53, 2, 9, 12, 60, 65, 54, 24, 69, 23, 62]).
:-end_in_pos.
:-begin_in_neg.
f([15, 92, 83, 4, 17, 64, 46]).
f([44, 38, 61, 40, 55, 101, 39, 32, 91, 93, 60, 90, 101, 27, 69, 49, 13, 94, 35, 79, 88, 28, 94, 12, 7, 94, 36, 25, 33, 34, 56, 73, 61, 101, 82, 45, 7, 92, 45, 51, 66, 68, 65]).
f([70, 76, 61, 15, 35]).
f([46, 72, 13, 25, 54, 69, 67, 87, 40, 86, 72, 80, 62, 96, 5, 77, 44, 97, 87, 5, 67, 4, 4, 38, 70, 53, 79, 101, 50, 100, 64, 13, 15, 90, 59, 92, 28, 82, 40, 67, 10, 27, 94, 30, 76, 7, 63, 4, 97, 52]).
f([70, 101, 67, 12, 64, 32, 30, 9, 38, 51, 14, 83, 20, 43]).
f([29, 72, 62, 72, 28, 34]).
f([58, 9, 24, 11, 10, 53, 74, 57, 72, 88, 70, 85, 42, 92, 34, 83, 67, 63, 38, 27, 42, 64, 33, 64, 100, 37, 27, 1, 75, 44, 13, 76, 40, 45, 14, 23, 22, 101]).
f([26, 32, 56, 6, 91, 90, 17]).
f([2, 99, 100, 5, 38, 12, 34, 96, 28, 52, 36, 56, 70, 78, 52, 19, 14, 6, 53, 54, 55, 89, 73, 72, 11, 51, 94, 21, 66, 16, 72, 5, 42, 57, 13, 101, 33]).
f([3, 3, 68, 46, 97, 76, 62, 20, 62, 13, 98, 8, 17, 40, 53, 21, 38, 14, 54, 60, 6, 20, 56, 61, 67, 82]).
:-end_in_neg.
