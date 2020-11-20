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
:- modeh(*,f(+list,+element,-list)).
:- modeb(*,f(+list,+element,-list)).

:- determination(f/3,head/2).
:- determination(f/3,tail/2).
:- determination(f/3,geq/2).
:- determination(f/3,empty/1).
:- determination(f/3,even/1).
:- determination(f/3,odd/1).
:- determination(f/3,one/1).
:- determination(f/3,zero/1).
:- determination(f/3,decrement/2).
:- determination(f/3,f/3).
%% :- determination(f/3,increment/2).
%% :- determination(f/3,element/2).
%% :- determination(f/3,cons/3).
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
f([6, 65, 71, 58, 24, 7, 27, 53, 95, 67, 59, 98, 85, 17, 100, 84, 31, 101, 13, 85, 28, 25, 9, 36, 81, 97, 35, 10, 63, 6, 81, 42, 20, 13, 2, 72, 45, 40, 2, 15, 96, 45, 5],31,[42, 20, 13, 2, 72, 45, 40, 2, 15, 96, 45, 5]).
f([90, 57, 45, 19, 5, 64, 73, 22, 7, 7, 22, 32, 101, 45, 87, 4, 2, 66, 80, 97, 23, 78, 88, 68, 84, 46, 51, 27, 64, 98, 23, 67, 48, 7],26,[51, 27, 64, 98, 23, 67, 48, 7]).
f([11, 75, 16],2,[16]).
f([98, 10, 89, 68, 55, 12, 98, 60, 7, 41, 44, 23, 16, 89, 74, 80, 101, 22, 53, 44, 94, 3, 70, 97, 20, 52, 84],25,[52, 84]).
f([15, 72, 15, 43, 66, 34, 69, 63, 4, 70, 63, 97, 99, 80, 55, 4, 88, 72, 25, 5, 5, 85, 80, 77, 41],7,[63, 4, 70, 63, 97, 99, 80, 55, 4, 88, 72, 25, 5, 5, 85, 80, 77, 41]).
f([75, 67, 41, 62, 78, 99, 37, 39],1,[67, 41, 62, 78, 99, 37, 39]).
f([9, 20, 19, 54, 22, 23, 78, 2],5,[23, 78, 2]).
f([15, 24, 92, 65, 61, 34, 61, 24, 86, 57, 22, 33, 12, 89, 35, 90, 69, 48, 14, 96, 61, 11, 97, 64],15,[90, 69, 48, 14, 96, 61, 11, 97, 64]).
f([55, 3, 64, 61, 68, 45, 29],6,[29]).
f([65, 20, 3, 63, 14, 19, 91, 58, 85, 67, 56, 89],5,[19, 91, 58, 85, 67, 56, 89]).
:-end_in_pos.
:-begin_in_neg.
f([60, 75, 89, 30, 15, 64, 61, 65, 6, 88, 48, 78, 68, 83, 16, 84, 46, 5, 100, 76, 1, 7, 80, 23, 66, 77, 97, 48, 93, 20, 78, 18, 62, 98, 4, 19, 76, 83, 32, 19, 96, 47],25,[4, 19, 76, 83, 32, 19, 96, 47]).
f([26, 21, 91, 80, 33, 63, 99, 10, 69, 32, 83, 78, 99, 38, 46, 73, 3, 9, 98, 42, 77, 68, 36, 90, 11, 46, 7, 9],16,[77, 68, 36, 90, 11, 46, 7, 9]).
f([96, 99, 34, 36, 79, 18, 44, 66, 21, 20, 48, 97, 20, 73, 47, 22, 84, 1, 61, 49, 72, 51, 16],9,[79, 18, 44, 66, 21, 20, 48, 97, 20, 73, 47, 22, 84, 1, 61, 49, 72, 51, 16]).
f([101, 2, 74, 12, 23, 11, 88, 22, 78, 96, 76, 12, 49, 37, 77, 80, 48, 92, 91, 67, 65, 52, 80, 18, 69, 36, 8, 79, 14, 71, 36, 101, 14, 80, 22, 88, 41],32,[74, 12, 23, 11, 88, 22, 78, 96, 76, 12, 49, 37, 77, 80, 48, 92, 91, 67, 65, 52, 80, 18, 69, 36, 8, 79, 14, 71, 36, 101, 14, 80, 22, 88, 41]).
f([66, 40, 62, 7, 90, 24, 68, 74, 41, 81, 67, 57, 15, 77, 2, 42, 85, 65, 65, 12, 67, 57, 20, 66, 87, 100, 59, 36, 33],6,[74, 41, 81, 67, 57, 15, 77, 2, 42, 85, 65, 65, 12, 67, 57, 20, 66, 87, 100, 59, 36, 33]).
f([54, 32, 86, 42, 20, 28, 99, 101, 52, 76, 20, 15, 100, 67, 29, 26, 8],10,[67, 29, 26, 8]).
f([35, 96, 82, 56, 75, 69, 16, 50, 61, 87, 84, 92, 79, 66, 28, 101, 2, 72, 17, 21, 100, 35, 74, 3, 51, 36, 27, 69, 91, 26, 68, 21, 83, 27, 60],9,[50, 61, 87, 84, 92, 79, 66, 28, 101, 2, 72, 17, 21, 100, 35, 74, 3, 51, 36, 27, 69, 91, 26, 68, 21, 83, 27, 60]).
f([89, 1, 12, 53, 32, 71, 6, 94, 16, 36, 23, 42, 52, 15, 55, 61, 5, 22, 88, 45, 34, 90, 2, 81, 92, 58, 93, 91, 79, 6, 52, 10, 33, 42, 50, 13, 2, 56, 59, 55, 80, 33, 13, 96, 2, 33, 32, 10, 64, 94, 100],48,[91, 79, 6, 52, 10, 33, 42, 50, 13, 2, 56, 59, 55, 80, 33, 13, 96, 2, 33, 32, 10, 64, 94, 100]).
f([13, 16, 73, 64, 100, 30, 60, 17, 13, 92, 41, 7, 14, 12, 79, 15, 90, 92, 95, 29, 99, 43, 95, 6, 59],23,[95, 29, 99, 43, 95, 6, 59]).
f([60, 18, 13, 68, 32, 70, 25, 85, 15, 93, 75, 62, 86, 80, 78, 18, 80, 100, 96, 37, 97, 77, 61, 3, 50, 49, 11, 5, 17, 8, 5, 79, 58, 93, 18, 3, 77, 88, 6, 44, 28, 35, 1, 89, 85, 19, 78, 74],23,[19, 78, 74]).
:-end_in_neg.
