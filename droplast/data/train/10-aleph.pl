:- use_module(library(aleph)).
:- if(current_predicate(use_rendering/1)).
:- use_rendering(prolog).
:- endif.
:- aleph.
:-style_check(-discontiguous).

:- aleph_set(i,6).
:- aleph_set(clauselength,6).
:- aleph_set(nodes,5000).

%% :- modeh(*,f(+list,-element)).
:- modeb(*,head(+list,-element)).
:- modeb(*,tail(+list,-list)).
:- modeb(*,geq(+element,+element)).
:- modeb(*,empty(+list)).
:- modeb(*,even(+element)).
:- modeb(*,odd(+element)).
:- modeb(*,one(+int)).
:- modeb(*,zero(-int)).
:- modeb(*,decrement(+int,-int)).
%% :- modeb(*,increment(+int,-int)).
%% :- modeb(*,element(+list,-element)).
%% :- modeb(*,cons(+element,+list,-list)).
:- modeh(*,f(+list,-list)).
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
:- determination(f/2,increment/2).
:- determination(f/2,element/2).
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
f([93, 25, 5, 76, 68, 30, 39, 19, 8, 89, 88],[93, 25, 5, 76, 68, 30, 39, 19, 8, 89]).
f([61, 67, 92, 79],[61, 67, 92]).
f([76, 48, 8, 15, 50, 27, 101, 5, 42, 79, 18, 38, 85, 47, 6, 18, 39, 15, 68, 15, 48, 10, 16, 95, 21, 61, 87, 25, 61, 23, 28, 84, 47, 6, 10],[76, 48, 8, 15, 50, 27, 101, 5, 42, 79, 18, 38, 85, 47, 6, 18, 39, 15, 68, 15, 48, 10, 16, 95, 21, 61, 87, 25, 61, 23, 28, 84, 47, 6]).
f([28, 5, 46, 32, 65, 53, 78, 24, 49, 50, 7, 98, 9, 46, 70, 84, 6, 43, 59, 39, 67, 36, 61, 43, 72, 80, 59, 71, 91, 86, 51],[28, 5, 46, 32, 65, 53, 78, 24, 49, 50, 7, 98, 9, 46, 70, 84, 6, 43, 59, 39, 67, 36, 61, 43, 72, 80, 59, 71, 91, 86]).
f([26, 23, 63, 56, 25, 61, 61, 34, 65, 47, 59, 42, 65, 68, 72, 57, 79, 83, 5, 35, 74, 77, 14, 63, 25, 63, 25, 101, 17, 88, 58, 1, 58, 84, 35, 85, 32, 91, 35, 17, 41, 78],[26, 23, 63, 56, 25, 61, 61, 34, 65, 47, 59, 42, 65, 68, 72, 57, 79, 83, 5, 35, 74, 77, 14, 63, 25, 63, 25, 101, 17, 88, 58, 1, 58, 84, 35, 85, 32, 91, 35, 17, 41]).
f([87, 46, 101, 28, 72, 15, 75, 64, 56, 76],[87, 46, 101, 28, 72, 15, 75, 64, 56]).
f([93, 74, 32, 83, 23, 98, 51, 87, 30, 27, 26, 88, 26, 8, 5, 86, 10, 94, 43, 65, 70, 20, 11],[93, 74, 32, 83, 23, 98, 51, 87, 30, 27, 26, 88, 26, 8, 5, 86, 10, 94, 43, 65, 70, 20]).
f([40, 41, 81, 100, 72, 77, 99, 34, 1, 18, 67, 2, 89, 90, 55, 99, 28, 50, 25, 19, 36, 74, 10, 67, 74, 79, 68, 16, 49, 83, 2, 12, 50, 72, 50, 31, 19, 2, 78, 24, 75, 36, 25, 66, 69],[40, 41, 81, 100, 72, 77, 99, 34, 1, 18, 67, 2, 89, 90, 55, 99, 28, 50, 25, 19, 36, 74, 10, 67, 74, 79, 68, 16, 49, 83, 2, 12, 50, 72, 50, 31, 19, 2, 78, 24, 75, 36, 25, 66]).
f([42, 33, 88, 46, 52, 12, 19, 100, 57, 26, 13, 53, 48, 16, 41, 11, 69, 10, 47, 51, 88, 49, 40, 14, 16, 94, 5, 13, 17, 46, 13, 46, 101, 74, 69, 71, 44, 45, 57, 76, 80, 14, 85, 92, 30, 31, 98, 18],[42, 33, 88, 46, 52, 12, 19, 100, 57, 26, 13, 53, 48, 16, 41, 11, 69, 10, 47, 51, 88, 49, 40, 14, 16, 94, 5, 13, 17, 46, 13, 46, 101, 74, 69, 71, 44, 45, 57, 76, 80, 14, 85, 92, 30, 31, 98]).
f([57, 71, 84, 29, 11, 101, 8, 10, 66, 55, 80, 8, 90, 55, 3, 7, 96, 70, 17, 14, 34, 74, 90, 88, 40, 22, 92],[57, 71, 84, 29, 11, 101, 8, 10, 66, 55, 80, 8, 90, 55, 3, 7, 96, 70, 17, 14, 34, 74, 90, 88, 40, 22]).
:-end_in_pos.
:-begin_in_neg.
f([77, 39],[77, 39]).
f([47, 84, 82, 26, 90, 16, 33, 17, 22, 61, 58, 24, 3, 97, 15, 54, 59, 87, 11, 45, 2, 20],[47, 84, 82, 26, 90, 16, 33, 17, 22, 61, 58, 24, 3, 97, 15, 54, 59, 87, 11, 45, 2, 20]).
f([86, 25, 45, 43, 99, 64, 66, 12, 59, 55, 35, 88, 63, 83, 73, 3, 52, 19, 29, 6, 69, 28, 54, 9, 59, 85, 64, 25, 99, 24, 87, 92, 87, 87, 60, 59, 50, 17, 64, 88, 62, 81, 90, 78, 96, 66, 78, 67, 55],[86, 25, 45, 43, 99, 64, 66, 12, 59, 55, 35, 88, 63, 83, 73, 3, 52, 19, 29, 6, 69, 28, 54, 9, 59, 85, 64, 25, 99, 24, 87, 92, 87, 87, 60, 59, 50, 17, 64, 88, 62, 81, 90, 78, 96, 66, 78, 67, 55]).
f([10, 96, 8, 20, 71, 17, 69, 6, 17, 63, 1, 99, 10, 66],[10, 96, 8, 20, 71, 17, 69, 6, 17, 63, 1, 99, 10, 66]).
f([101, 38, 58, 80, 43, 73, 41, 65, 69, 15, 81, 84, 24, 12, 36, 61, 52, 59, 99, 77, 90, 72, 84],[101, 38, 58, 80, 43, 73, 41, 65, 69, 15, 81, 84, 24, 12, 36, 61, 52, 59, 99, 77, 90, 72, 84]).
f([15, 25, 69, 64, 80, 70, 97, 8, 60, 43, 91, 64, 49, 44, 68, 12, 87, 13, 34, 81, 60, 78, 70, 69, 32, 47, 7, 87, 20, 99, 91, 46, 9, 56, 55],[15, 25, 69, 64, 80, 70, 97, 8, 60, 43, 91, 64, 49, 44, 68, 12, 87, 13, 34, 81, 60, 78, 70, 69, 32, 47, 7, 87, 20, 99, 91, 46, 9, 56, 55]).
f([1, 80, 60, 57, 24, 60, 51, 55, 21, 99, 96, 17, 36, 56, 5, 19, 10, 87, 47, 32, 24, 25, 3, 60, 88, 10, 20, 68, 69, 27, 72, 55, 62, 75, 78, 41, 50, 38, 35, 7, 97],[1, 80, 60, 57, 24, 60, 51, 55, 21, 99, 96, 17, 36, 56, 5, 19, 10, 87, 47, 32, 24, 25, 3, 60, 88, 10, 20, 68, 69, 27, 72, 55, 62, 75, 78, 41, 50, 38, 35, 7, 97]).
f([19, 89, 55, 46, 62, 44, 10],[19, 89, 55, 46, 62, 44, 10]).
f([99, 94, 18, 22, 57],[99, 94, 18, 22, 57]).
f([19, 80, 1, 20, 58, 58, 73, 67, 45, 88, 83, 77, 5, 84, 49, 37, 32, 51, 87, 59, 85, 28, 60, 83, 68, 61],[19, 80, 1, 20, 58, 58, 73, 67, 45, 88, 83, 77, 5, 84, 49, 37, 32, 51, 87, 59, 85, 28, 60, 83, 68, 61]).
:-end_in_neg.
