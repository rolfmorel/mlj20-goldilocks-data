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
f([10, 83, 92, 26, 14, 14, 78, 19, 76, 56, 89, 78, 98, 78, 88, 61, 92, 99],99).
f([13, 73, 62, 35, 11, 5, 10, 76, 81, 2, 2, 25, 36, 68, 72, 8, 24, 3, 76, 98, 8, 39, 74, 25, 1, 70, 45, 22, 23, 35, 54, 73, 67, 12, 84, 65, 75, 17, 72, 27, 79, 67],67).
f([3, 65, 91, 95, 68, 32, 14, 97, 43, 63, 36, 24, 21, 66, 89, 40, 60, 47, 98, 58, 3, 33, 58],58).
f([5, 15, 70, 71, 2, 20, 53, 46, 6, 87],87).
f([34, 30, 33, 53, 47, 28, 67, 101, 96, 16, 90, 14, 10, 60, 50, 49, 81, 15, 89, 4, 70, 84, 90, 19, 39, 50, 13, 101, 63, 33, 9, 95, 68, 31, 66, 44, 15, 76, 63, 2, 1, 76, 101, 27, 34],34).
f([39, 64, 46, 68, 101, 62, 81, 27, 47, 100, 87, 13, 34, 83, 6, 52, 24, 26, 59, 45, 9, 92, 46, 90, 68, 79, 1, 9, 55, 63, 22, 54, 49, 23, 76, 97],97).
f([18, 48, 46, 83, 28, 21, 13, 53, 98, 53, 77, 28, 11, 60, 15, 45, 94, 56, 40, 39, 71, 11, 57, 23, 83, 17, 4, 53, 71, 49, 34, 35, 64],64).
f([5, 98, 47, 35, 96, 30, 10, 76, 89, 41, 95, 61, 67, 76, 15, 97, 33, 12, 30, 49, 90, 79, 5, 47, 94, 49, 71, 88, 4, 58, 32, 27, 4, 30, 64, 69, 66, 45, 13],13).
f([92, 88, 61, 101, 27, 18, 5, 29, 57, 21, 6, 88, 94, 68, 22, 83, 53, 83, 8, 88, 90, 65, 71, 101, 52, 89, 23, 57, 33, 18, 31, 22, 61, 29, 6, 96, 64],64).
f([56, 21, 30, 14, 92, 22, 20, 7, 53, 59, 95, 101, 79, 16, 27, 11, 24, 85, 35, 41, 38, 63, 64, 91, 6, 84, 76, 67, 97, 1, 100, 51, 3, 91, 29, 85],85).
:-end_in_pos.
:-begin_in_neg.
f([30, 95, 63],30).
f([52, 95, 5, 101, 4, 30, 36, 6, 62, 90, 55, 69, 53, 60, 35, 57, 2, 11],36).
f([91, 85, 14, 28, 44, 51, 50, 51, 97, 51, 7, 88, 83, 89, 57, 2, 65, 99, 80, 82, 43, 94, 95],7).
f([38, 54, 36, 91, 101, 15, 42, 6, 18, 89],101).
f([52, 53, 61, 97, 89, 39, 19, 99, 34, 34, 98, 61, 15, 51, 75, 50],39).
f([92, 8, 85, 74, 63, 99, 29, 70, 10, 96, 28, 34, 101, 5, 42, 69, 13, 7, 82, 32, 20, 45, 93, 73, 52, 86, 35, 64, 47, 100, 55, 88, 30, 25, 20, 9, 45, 2, 8, 47, 23],13).
f([62, 23, 77, 21, 9, 63, 5, 32, 87, 82, 77, 13, 21, 81, 35, 70, 14, 41, 63, 43, 86, 80, 99, 36, 79, 82, 61, 5, 54, 58, 46, 53, 69],82).
f([50, 98, 28, 35, 40, 2, 60, 33, 44, 41, 76, 56, 18, 52, 92, 32, 65, 15, 3, 59, 94, 93, 50, 13, 96, 97, 98, 29, 46, 96, 88, 58, 40, 84, 10, 62, 6, 61, 12, 7, 69, 21, 80, 54, 74, 65, 84, 65, 12, 94],65).
f([74, 75, 15, 5, 16, 40, 36, 28, 99, 62, 17, 90, 11, 76, 49, 34, 47],17).
f([90, 81, 64, 21, 24, 76, 38, 6, 15, 93, 56, 41, 49, 43, 47, 58, 87, 20],49).
:-end_in_neg.
