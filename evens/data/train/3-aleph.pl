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
f([68, 42, 80, 78, 6, 30, 94, 64, 100, 98, 70, 58, 50, 48, 52, 10, 100, 30, 6, 60, 6, 82, 24, 46, 58, 36, 50, 34, 14, 78, 14, 78, 60, 68, 26, 74, 90]).
f([38, 20, 28, 24, 38, 8, 84, 58, 94, 86, 26, 30, 32, 82, 94, 32, 22, 28, 64, 16, 30, 16, 84, 80, 60, 14, 88, 12, 52, 56, 52, 58, 10, 88, 10, 62, 82, 90, 56, 24]).
f([92, 62, 6, 16, 58, 90, 26, 24, 64, 38, 84, 30, 64, 40, 36, 28, 68, 30, 96, 30, 60, 58, 2, 18, 8, 18, 54, 64, 30, 26, 40]).
f([64, 54, 12, 92, 74, 94, 30, 18, 82, 6, 74, 90, 40, 22, 56, 58]).
f([36, 72, 92, 28, 40, 46, 6, 18, 36, 82, 54, 52, 76, 86, 26, 58, 34, 18, 70, 36, 26, 48, 66, 88, 66]).
f([28, 20, 82, 54, 30, 28, 14]).
f([100, 20, 30, 28, 8, 12, 66, 68, 56, 52, 76, 12, 58, 50, 58, 98, 38, 42, 64, 24, 34]).
f([24, 98, 90, 56, 100, 18, 30, 64, 58, 46, 94, 50, 56, 44, 14, 30, 44, 90, 44, 2, 18]).
f([36, 80, 84, 24, 88, 76, 34, 94, 82, 12, 88, 32, 30, 56, 76, 2, 24, 44, 6, 20, 24, 54, 78, 98, 32, 16, 64, 34]).
f([84, 58, 26, 36, 54, 76, 54, 54, 36, 84, 2, 64, 50, 100, 46, 42, 90, 32, 6, 74, 16, 68, 14, 44, 16, 52, 64, 38, 94]).
:-end_in_pos.
:-begin_in_neg.
f([6, 52, 34, 47, 7, 54, 6, 84, 48]).
f([46, 13, 93, 97, 1, 71, 61, 89, 53, 41, 81, 57, 43, 13, 99, 49, 69, 27, 39, 25, 23, 45, 75, 85, 7, 21, 2, 73, 39, 87, 1, 43, 67, 27, 15, 85, 43, 1, 65, 59, 55, 57, 91, 69, 47, 87, 15, 33, 81, 39, 5]).
f([93, 79, 77, 91, 39, 17]).
f([70, 66, 22, 96, 88, 48, 47, 64, 88, 51, 22, 22, 85, 18, 73, 15, 98, 95, 12, 54]).
f([83, 49, 53, 5, 89, 71, 24, 12, 7]).
f([40, 39, 61, 71, 14, 97, 11, 75, 77, 39]).
f([24, 18, 54, 73, 42, 58, 46, 36, 27, 84, 90, 28, 78, 72, 34, 52, 90, 6, 74, 98, 58, 38, 86, 72, 62, 44, 95, 12, 52, 98, 64, 78, 32, 94]).
f([24, 43, 29, 68, 93, 2, 20, 7, 44, 31, 87, 37, 63, 6, 13, 25, 76, 54, 87, 17, 98, 82, 54, 61, 91, 51, 52, 35, 11, 3, 84, 52, 42, 99, 17, 1, 77, 37, 67, 49, 83, 17, 43, 61, 21, 30, 70, 27, 27]).
f([53, 45, 15, 15, 79, 71, 85, 51, 54, 75, 59, 71, 15, 85, 61, 21, 29, 97, 37, 15, 77, 31, 50, 81, 79, 35]).
f([52, 14, 38, 40, 99, 59, 64, 65, 27, 58, 86, 91, 60, 48, 76]).
:-end_in_neg.
