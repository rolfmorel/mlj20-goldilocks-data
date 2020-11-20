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
f([5, 46, 9, 30, 9, 18],[5, 46, 9, 30, 9]).
f([76, 20, 50, 23, 26, 59, 96, 34, 79, 10, 82, 59, 79, 82, 27, 98, 72, 27, 70, 88, 4, 3, 72, 4, 34, 35, 5, 78, 45, 54, 46, 25, 75, 30, 75, 41, 96, 89, 27, 51, 6, 43],[76, 20, 50, 23, 26, 59, 96, 34, 79, 10, 82, 59, 79, 82, 27, 98, 72, 27, 70, 88, 4, 3, 72, 4, 34, 35, 5, 78, 45, 54, 46, 25, 75, 30, 75, 41, 96, 89, 27, 51, 6]).
f([69, 47, 57, 64, 11, 3, 59, 34, 29, 46, 57, 59, 42, 45, 55, 89, 54, 8, 53, 61, 100, 8, 3, 28, 55, 79, 11, 19, 7, 46, 100, 21, 101, 25, 63, 82, 76, 14, 29, 89, 28, 10, 97, 43, 18, 63, 66, 43, 93, 42, 4],[69, 47, 57, 64, 11, 3, 59, 34, 29, 46, 57, 59, 42, 45, 55, 89, 54, 8, 53, 61, 100, 8, 3, 28, 55, 79, 11, 19, 7, 46, 100, 21, 101, 25, 63, 82, 76, 14, 29, 89, 28, 10, 97, 43, 18, 63, 66, 43, 93, 42]).
f([89, 55, 12, 89, 63, 74, 6, 97, 30, 8, 88, 39, 54, 74, 18, 65, 42, 85, 29, 39],[89, 55, 12, 89, 63, 74, 6, 97, 30, 8, 88, 39, 54, 74, 18, 65, 42, 85, 29]).
f([64, 16, 15, 96, 59, 2, 74, 85, 28, 14, 39, 92, 62, 5, 6, 80, 47, 83, 4, 69, 53, 54, 77, 62, 56],[64, 16, 15, 96, 59, 2, 74, 85, 28, 14, 39, 92, 62, 5, 6, 80, 47, 83, 4, 69, 53, 54, 77, 62]).
f([91, 79, 11, 82, 29, 82, 99, 9, 20, 9, 74, 44, 95, 32, 58, 11, 58, 60, 98, 69, 39, 20, 49, 78, 70, 12, 90, 94, 19, 6, 5, 8, 51, 68, 36, 26, 1, 53, 4, 48, 18, 60],[91, 79, 11, 82, 29, 82, 99, 9, 20, 9, 74, 44, 95, 32, 58, 11, 58, 60, 98, 69, 39, 20, 49, 78, 70, 12, 90, 94, 19, 6, 5, 8, 51, 68, 36, 26, 1, 53, 4, 48, 18]).
f([56, 36, 100, 24, 45],[56, 36, 100, 24]).
f([62, 71, 55, 5, 63, 2, 14, 80, 97, 88, 73, 46, 15, 52, 84, 45, 75, 47, 9, 32, 25, 47, 5, 17, 101, 16, 19, 64, 79, 71, 30, 79, 81, 14, 53, 58, 5, 6],[62, 71, 55, 5, 63, 2, 14, 80, 97, 88, 73, 46, 15, 52, 84, 45, 75, 47, 9, 32, 25, 47, 5, 17, 101, 16, 19, 64, 79, 71, 30, 79, 81, 14, 53, 58, 5]).
f([101, 97, 32, 77, 71, 82, 6, 7, 92, 15, 9, 81, 30, 92, 90],[101, 97, 32, 77, 71, 82, 6, 7, 92, 15, 9, 81, 30, 92]).
f([49, 8, 12, 15, 84, 11, 50, 9, 45, 73, 4, 19, 37, 92, 75, 18, 10, 10, 88, 96, 65, 32, 2, 53, 98, 32, 22, 56, 42, 40, 77, 65, 9, 63, 69, 63, 99, 3, 91, 90],[49, 8, 12, 15, 84, 11, 50, 9, 45, 73, 4, 19, 37, 92, 75, 18, 10, 10, 88, 96, 65, 32, 2, 53, 98, 32, 22, 56, 42, 40, 77, 65, 9, 63, 69, 63, 99, 3, 91]).
:-end_in_pos.
:-begin_in_neg.
f([61, 69, 79, 21, 61, 2, 23, 79, 78],[61, 69, 79, 21, 61, 2, 23, 79, 78]).
f([94, 78, 10, 9, 84, 90, 14, 76, 56, 21, 44, 51, 92, 24, 56, 28, 77, 20, 33, 57, 57],[94, 78, 10, 9, 84, 90, 14, 76, 56, 21, 44, 51, 92, 24, 56, 28, 77, 20, 33, 57, 57]).
f([5, 36, 46, 61, 27, 79, 77, 92, 97, 32, 93, 99, 39, 49, 85, 88, 8, 84, 8, 67, 18, 23, 86, 96, 13],[5, 36, 46, 61, 27, 79, 77, 92, 97, 32, 93, 99, 39, 49, 85, 88, 8, 84, 8, 67, 18, 23, 86, 96, 13]).
f([48, 31, 89, 91, 3, 8, 78, 80, 51, 31, 88, 58, 76, 48, 4, 83, 96, 2, 54, 54, 11, 24, 43, 46, 78, 44, 95, 2, 55, 8, 93, 95, 50, 32, 79, 53, 42, 32, 9, 53, 13, 55, 48, 59, 83, 13, 47, 11, 17, 43, 55],[48, 31, 89, 91, 3, 8, 78, 80, 51, 31, 88, 58, 76, 48, 4, 83, 96, 2, 54, 54, 11, 24, 43, 46, 78, 44, 95, 2, 55, 8, 93, 95, 50, 32, 79, 53, 42, 32, 9, 53, 13, 55, 48, 59, 83, 13, 47, 11, 17, 43, 55]).
f([64, 82, 48, 99, 28, 69, 11, 14, 34, 82, 8, 92, 4, 57, 32, 88, 91, 80, 57, 63, 63, 22, 25, 51, 32, 40, 76, 17, 90, 96, 89, 64, 85, 50, 19, 80, 42, 34, 86],[64, 82, 48, 99, 28, 69, 11, 14, 34, 82, 8, 92, 4, 57, 32, 88, 91, 80, 57, 63, 63, 22, 25, 51, 32, 40, 76, 17, 90, 96, 89, 64, 85, 50, 19, 80, 42, 34, 86]).
f([41, 41, 34, 71],[41, 41, 34, 71]).
f([98, 77, 79, 73, 60, 86, 54, 62, 35, 88, 43, 18],[98, 77, 79, 73, 60, 86, 54, 62, 35, 88, 43, 18]).
f([68, 95, 25, 96, 33, 75, 1, 78, 55, 65, 55, 38, 39, 97, 44, 86, 12, 90, 74, 64, 6, 91, 3, 37, 12, 1, 92, 91, 58, 8, 94, 96, 8, 43],[68, 95, 25, 96, 33, 75, 1, 78, 55, 65, 55, 38, 39, 97, 44, 86, 12, 90, 74, 64, 6, 91, 3, 37, 12, 1, 92, 91, 58, 8, 94, 96, 8, 43]).
f([93, 51, 17, 72, 6, 12],[93, 51, 17, 72, 6, 12]).
f([30, 94, 84, 99, 3, 15, 81, 98, 53, 34, 68, 38, 92, 16, 23, 67, 6, 66, 84, 33, 44, 11, 86, 74, 8, 19, 43, 61, 36, 71, 61, 82, 43, 92, 50, 39, 92, 36, 83, 76, 77, 69, 78, 89, 13, 56, 76, 13, 39, 67],[30, 94, 84, 99, 3, 15, 81, 98, 53, 34, 68, 38, 92, 16, 23, 67, 6, 66, 84, 33, 44, 11, 86, 74, 8, 19, 43, 61, 36, 71, 61, 82, 43, 92, 50, 39, 92, 36, 83, 76, 77, 69, 78, 89, 13, 56, 76, 13, 39, 67]).
:-end_in_neg.
