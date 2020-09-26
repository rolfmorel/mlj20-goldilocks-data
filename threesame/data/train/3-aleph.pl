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
f([76, 76, 76, 51, 43, 31, 6, 7, 72, 83, 28, 72, 12, 30, 9, 7, 17, 16]).
f([3, 3, 3, 88, 20, 27, 99, 28, 57, 75, 3, 15, 56, 5, 97, 59, 77, 35, 4, 69, 52, 80, 27, 28, 22, 49, 34, 44, 100]).
f([40, 40, 40, 45, 79, 89, 63, 77, 50, 89, 68, 20, 3, 98, 99, 5, 32, 23, 10, 47, 81, 35, 100, 63, 56, 72, 36, 68, 39, 27, 38, 32, 63, 39, 27, 1, 9]).
f([63, 63, 63, 3, 98, 33, 84, 93, 50, 85, 68, 99, 14, 77, 5, 20, 99, 56, 44, 66, 78]).
f([28, 28, 28, 59, 62, 51, 72, 71, 9, 56, 10, 51, 11, 38, 71, 72, 5, 90, 10, 36, 77, 41, 4, 73, 67, 84, 39, 59, 34, 19, 97, 3, 79, 26, 6, 64, 36, 30, 85, 28, 23, 59, 30, 47, 87, 51]).
f([13, 13, 13, 28, 40, 44, 7, 79, 76, 93, 77, 1, 76, 87, 43, 31, 30, 83, 27, 40, 5, 86, 40, 44, 48, 66, 75, 44, 42, 70, 15, 32, 66, 18, 91, 26, 1, 62, 87, 68, 89, 65, 43, 77, 31, 1, 49]).
f([2, 2, 2, 80, 68, 56, 75, 26, 8, 72, 100, 96, 44, 99, 70, 6, 16]).
f([20, 20, 20, 24, 36, 93, 41, 4, 32, 10, 52, 56, 81, 83, 31, 94, 20, 43, 59, 46, 78, 100, 53, 76, 46, 53, 32, 27, 85, 96, 6, 74, 52]).
f([74, 74, 74, 22, 9, 2, 92, 52, 85, 80, 96, 83, 37, 1, 91, 19, 45, 7, 1, 66, 98, 46, 64, 26, 83, 97]).
f([87, 87, 87, 10, 32, 73]).
:-end_in_pos.
:-begin_in_neg.
f([20, 94, 14, 89, 64, 99, 47, 60, 39, 77, 62]).
f([15, 74, 66, 80, 26, 39, 90, 67, 38, 79, 46, 28, 66, 65, 95, 81, 53, 93, 47, 87, 75, 93, 60, 54, 24, 76, 50, 58, 92, 31, 19, 54, 69, 79, 100, 77, 13, 100, 7, 48, 66, 50, 94, 100]).
f([92, 39, 56, 101, 28, 30, 11, 93, 13, 101, 21, 25, 93, 58, 6, 68, 90, 23, 65, 69, 62, 81, 41, 56, 79, 74, 10, 10, 68, 65, 16]).
f([84, 83, 56, 29, 78, 14, 46, 101, 98, 77, 57, 99, 1, 54, 18, 12, 12, 82, 3, 96, 39, 3, 34, 53, 63, 20, 26, 97, 75, 25]).
f([58, 27, 45, 59, 44, 55, 10, 74, 95, 92, 48, 7, 97, 27, 101, 77, 45, 6, 67, 42, 58, 39, 84, 1, 28, 37, 66, 35, 5, 3, 71, 32, 14, 24, 14, 35, 31, 33, 32, 34, 8, 93, 3, 26, 9, 93, 76]).
f([60, 82, 86, 85, 25, 2, 99, 59, 24, 100, 33, 20, 48, 85, 88, 44, 75, 55, 2, 10, 26, 45, 91, 48, 44, 11, 98, 69, 49, 41, 30, 66, 43, 79, 33]).
f([99, 34, 51, 76, 14, 99, 17, 91, 90, 28, 14, 2, 98, 85, 97, 48, 47, 75, 80, 12, 30, 67, 53, 14, 79, 71, 90, 46, 73, 5, 57, 30, 69, 96, 90, 92, 36, 12, 71, 91, 31, 54, 85, 67, 68, 62, 39]).
f([77, 59, 41, 100]).
f([10, 81, 12, 1, 49, 23, 57, 92, 66]).
f([95, 18, 83, 16, 96, 58, 32, 64, 47]).
:-end_in_neg.
