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
f([13, 13, 13, 29, 46, 4, 41, 73, 57, 50, 21, 18, 25]).
f([64, 64, 64, 31, 64, 67, 68]).
f([94, 94, 94, 27, 84, 100, 18, 4, 2, 67, 101, 4, 35, 81, 79, 49, 43, 81, 53, 75, 24, 65]).
f([71, 71, 71, 21, 10, 97, 5, 60, 96, 100, 19, 44, 62, 18, 64, 73, 58, 90, 78, 57, 14, 3, 16, 86, 34, 53, 97, 80, 43, 100, 21, 12, 58, 91, 51]).
f([78, 78, 78, 35, 41, 24, 80, 92]).
f([54, 54, 54, 2, 27, 84, 4, 24, 6, 42, 97, 16, 2, 84, 55, 31, 51, 30, 80, 90, 97, 95, 59, 11, 77, 5, 67, 16, 91, 91, 90, 99, 22, 25, 78, 49, 82]).
f([69, 69, 69, 99, 69, 63, 21, 75, 79]).
f([24, 24, 24, 80, 18, 61, 53, 48, 50, 95, 71, 65, 71, 82, 28, 25, 23, 15, 68, 49, 51, 17, 87, 19, 49, 82, 57]).
f([30, 30, 30, 67, 1, 97, 20, 6, 93, 27, 22, 25, 64, 40, 7, 76, 70, 5, 43, 100, 71, 43, 84, 17, 45, 48, 23, 34, 64, 62, 40, 1, 57, 61, 35, 29, 53]).
f([56, 56, 56, 77, 19, 10, 97, 27, 27, 30, 73, 57, 91, 54, 58, 72, 90, 6, 67, 95, 88, 7, 12, 98, 87, 72, 65, 45, 99, 86, 44, 95, 83, 79, 83, 58]).
:-end_in_pos.
:-begin_in_neg.
f([2, 70, 93, 47, 39, 27, 80, 73]).
f([94, 64, 15, 62, 38, 82, 16, 60, 4, 75, 58, 24, 1, 41, 72, 40, 94, 8, 14, 1, 3, 38, 87, 49, 75, 89, 88, 57, 81, 96, 86, 95, 83, 69, 14, 39]).
f([18, 2, 56, 87, 96, 59, 61, 21, 99, 2, 30, 9, 100, 44, 23, 66, 21, 66, 2, 84, 96, 10, 86, 72, 72, 36, 78, 86, 61, 46, 83, 74, 86, 29, 58, 93, 8, 58, 74, 66, 81, 51, 9, 101]).
f([73, 11, 7, 66, 84, 33, 74, 41, 5, 51, 65, 54, 38, 48, 24, 9, 15, 22, 35, 2, 54]).
f([86, 86, 9, 98, 89, 63, 53, 21, 35, 58, 28, 50, 33, 46, 15, 47, 53, 81, 12]).
f([82, 24, 23, 81, 5, 79, 96, 39, 3, 82, 2, 3, 51, 97, 25, 64, 27, 98, 51]).
f([77, 81, 38, 81, 14, 4, 101, 40, 88, 33, 83, 93, 41, 7, 71, 44, 91, 17, 48, 38, 69, 7, 54, 54, 68, 22, 49, 25, 22, 21, 87, 97]).
f([56, 24, 88, 63, 26, 41, 66, 14, 74, 79, 48, 80]).
f([14, 5, 16, 41, 56, 5, 18, 95, 95, 22, 78, 46, 46, 83, 44, 1, 2, 80, 5, 36, 90, 75, 15, 39, 17]).
f([29, 40, 36, 73, 46, 72, 34, 13, 56, 21, 9, 88, 6, 46, 27, 68, 70, 49, 21, 61, 10, 59, 5, 37, 96, 35, 79, 60, 68, 65, 37, 65, 75, 28, 82, 32, 99, 20]).
:-end_in_neg.
