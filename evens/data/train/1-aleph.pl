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
f([62, 92, 10, 14, 10, 28, 38, 54, 92, 74, 50, 60, 56, 92, 12, 50, 48, 70, 86, 86, 92, 82, 100, 84, 78, 18, 12, 62, 90, 100, 94, 14, 82, 98, 56, 54, 8, 38, 4]).
f([12, 68, 58, 72, 2, 76, 92, 24, 24, 92, 2, 14, 12, 16, 54, 16, 62, 86, 10, 88, 68, 62, 100, 4, 22, 14, 88, 10, 70, 36]).
f([86, 6, 58, 100, 48, 48, 88, 66, 62, 32, 74, 70, 14, 18, 78, 18, 6, 52, 32, 62, 4, 68, 44, 20, 18, 80, 4, 40, 16, 50, 26, 86, 38, 16, 52, 88, 70]).
f([44, 68]).
f([74, 68, 4, 70, 96, 34, 2, 32, 20, 24, 40, 28, 54, 58, 6, 18, 98, 12, 26, 44, 46, 22, 32, 26, 52, 24, 36, 92, 76, 22, 66, 40, 98, 20, 52, 16, 64, 22, 28, 90, 90, 8, 34, 64, 42, 24, 68, 76]).
f([30, 82, 34, 50, 80, 10, 24, 36, 30, 44, 82]).
f([48, 94, 38, 48, 66, 82, 66, 72, 72, 28, 22, 70, 52, 12, 60, 88, 24]).
f([60, 4, 48, 76, 14, 50, 18, 18, 24, 54, 90, 14, 74, 38, 32, 50, 46, 68, 40, 42, 58, 74, 48, 76, 32, 86, 64, 94, 48, 20, 16]).
f([46, 44, 82, 30, 64, 54, 28, 94, 62, 74, 4, 80, 98, 24, 48, 56, 64, 6, 26, 44, 88, 58, 80]).
f([24, 6, 36, 32, 12, 70, 22, 36, 10, 94, 18, 24, 54, 4, 64, 72, 30, 66, 56, 32, 64, 60, 72, 76, 30, 86, 94, 8, 30, 12, 28, 68, 58, 46]).
:-end_in_pos.
:-begin_in_neg.
f([79, 24, 19, 93, 17, 36, 98, 46, 82]).
f([54, 24, 64, 24, 4, 10, 21, 26, 40, 30, 46, 58, 14, 88, 22, 22, 78, 96, 46, 72, 54, 60, 37, 14, 18, 54, 92, 86, 65, 98, 52, 84, 32, 74, 28, 54, 23]).
f([21, 67, 93, 37, 27, 83, 10, 86, 5, 86, 99, 96, 31, 83, 9, 41, 57, 58, 49, 73, 73, 37, 89, 29, 55, 9, 97, 12, 67, 8, 73]).
f([72, 78, 52, 56, 40, 40, 40, 97, 50, 78, 73, 92, 90, 87, 18, 76, 2, 22, 96, 76, 37, 98, 60, 4, 56, 96, 80, 6, 73, 74, 10, 60, 80, 72]).
f([50, 85, 41, 10, 96]).
f([72, 9, 75]).
f([17, 69, 33, 53, 39, 29, 55, 11, 44, 95, 59, 63, 7, 33, 77, 11]).
f([81, 32, 33, 26, 88, 8, 72, 40, 95, 81, 68, 89, 12, 2, 91, 28, 39, 45, 67, 70, 68, 41, 3, 59, 14, 8, 25, 3, 92, 18, 7, 45, 63, 12, 40, 90, 5, 31, 64, 7, 42, 61, 52]).
f([49, 9, 83, 31, 99, 46, 77, 35, 96, 48, 18, 85, 43, 9, 5, 11, 98, 67, 53, 69, 17, 25, 91, 4]).
f([20, 94, 66, 20, 50, 46, 62, 39, 13, 88, 75, 40, 26, 36, 62, 86, 26, 20, 56, 64, 50, 28, 64, 32, 76, 38, 54, 88, 6]).
:-end_in_neg.
