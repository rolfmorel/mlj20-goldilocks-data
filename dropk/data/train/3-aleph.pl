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
f([48, 32, 85, 52, 63, 22, 44, 13, 47, 14, 79, 86],6,[44, 13, 47, 14, 79, 86]).
f([58, 65, 11, 70, 11, 14, 47, 1, 4, 10, 94, 83, 64, 52, 35, 33, 101, 84, 20, 87, 23, 48, 65, 1, 62, 90, 25, 78, 4, 30, 18, 91, 64, 51, 77],17,[84, 20, 87, 23, 48, 65, 1, 62, 90, 25, 78, 4, 30, 18, 91, 64, 51, 77]).
f([56, 19, 20, 62, 81, 15, 53, 26, 17, 88, 26, 81, 8, 48, 79, 11, 95, 68, 23, 52, 65, 40, 84, 90, 24, 33, 59, 100],23,[90, 24, 33, 59, 100]).
f([12, 15, 72, 38, 89, 27, 23, 90, 38, 96, 89, 42, 95, 44, 55, 87, 45, 100, 98, 53, 26, 87, 98, 44, 87, 37, 81, 5, 28, 22, 99, 77, 83, 60, 63, 66, 45, 12, 82, 36, 18, 19],36,[45, 12, 82, 36, 18, 19]).
f([21, 60, 16],2,[16]).
f([67, 16, 16, 63, 1, 95, 76, 66, 7, 8, 84, 36, 34, 2, 91, 66, 88, 40, 36, 59, 50, 87, 61, 59, 59, 101, 12, 43, 85, 85, 44, 34, 3, 90, 85, 97, 2, 78, 82, 54, 14, 100, 82, 68, 18, 98, 97],3,[63, 1, 95, 76, 66, 7, 8, 84, 36, 34, 2, 91, 66, 88, 40, 36, 59, 50, 87, 61, 59, 59, 101, 12, 43, 85, 85, 44, 34, 3, 90, 85, 97, 2, 78, 82, 54, 14, 100, 82, 68, 18, 98, 97]).
f([21, 35, 90, 97, 93, 82, 17, 34, 9, 48, 99, 26, 40, 24, 92, 36, 59, 87, 78, 54, 8, 44, 70, 57, 67],10,[99, 26, 40, 24, 92, 36, 59, 87, 78, 54, 8, 44, 70, 57, 67]).
f([13, 34, 31, 80, 24, 59, 79, 43, 31, 29, 50, 71, 98, 53, 22, 54, 49, 51, 53, 30, 91, 83, 89, 39, 29, 51, 50, 18, 73, 64, 45, 59, 93, 82, 40, 94, 91, 8, 36, 38, 60, 46, 3, 26, 10, 1, 62, 22, 80, 53],23,[39, 29, 51, 50, 18, 73, 64, 45, 59, 93, 82, 40, 94, 91, 8, 36, 38, 60, 46, 3, 26, 10, 1, 62, 22, 80, 53]).
f([33, 69, 100, 42, 88, 41, 73, 83, 24, 35, 60, 35, 25, 25, 52, 45, 35, 18, 33, 71, 19, 49, 72, 89, 38, 62, 91, 12, 78, 49, 1, 11, 25, 70, 29, 69, 90, 37, 83],26,[91, 12, 78, 49, 1, 11, 25, 70, 29, 69, 90, 37, 83]).
f([64, 41, 93, 17, 70, 47, 21, 36, 17, 25, 59, 24, 37, 67, 84, 74, 90, 51, 84, 6, 81, 48, 30, 57, 16, 63, 67, 26, 32, 36, 57, 91, 4, 33, 68, 45, 57, 5, 5, 9, 73, 90, 80, 36, 23, 74, 70, 26, 62, 82, 5],30,[57, 91, 4, 33, 68, 45, 57, 5, 5, 9, 73, 90, 80, 36, 23, 74, 70, 26, 62, 82, 5]).
:-end_in_pos.
:-begin_in_neg.
f([43, 56, 4, 60, 89, 78, 96, 11, 101, 101, 40, 72, 32, 54, 75, 13, 84, 100, 77, 26, 6, 4, 3, 96, 54, 41, 44, 89, 48, 44, 23, 62, 54, 62, 78, 40, 94, 99, 5, 49, 59, 56, 29, 60, 33],23,[78, 40, 94, 99, 5, 49, 59, 56, 29, 60, 33]).
f([37, 15, 82, 58, 22, 55, 88, 14, 62, 9, 52, 5, 100, 29, 91, 54, 5, 37, 14, 53, 94, 19, 57, 91, 18, 73, 63, 16, 56, 20, 3, 16, 85, 50, 20, 97, 99, 25, 22, 92, 80, 63],38,[22, 55, 88, 14, 62, 9, 52, 5, 100, 29, 91, 54, 5, 37, 14, 53, 94, 19, 57, 91, 18, 73, 63, 16, 56, 20, 3, 16, 85, 50, 20, 97, 99, 25, 22, 92, 80, 63]).
f([19, 95, 79, 86, 87],2,[95, 79, 86, 87]).
f([87, 20, 2, 20, 27, 5, 48, 51, 57, 4, 7, 14, 12, 61, 76, 11, 44, 89, 9, 89, 98, 98, 37, 100, 27, 18, 59, 74, 68, 61, 29, 56, 23, 6, 88, 79, 42, 28, 31, 29, 29, 48, 24, 37, 87],7,[27, 18, 59, 74, 68, 61, 29, 56, 23, 6, 88, 79, 42, 28, 31, 29, 29, 48, 24, 37, 87]).
f([39, 71, 48, 62, 31, 13, 81, 30, 15, 74, 5, 3, 68, 64, 90, 46, 28, 65, 1, 51, 10, 52, 71, 75, 47, 85, 10, 84],24,[71, 48, 62, 31, 13, 81, 30, 15, 74, 5, 3, 68, 64, 90, 46, 28, 65, 1, 51, 10, 52, 71, 75, 47, 85, 10, 84]).
f([76, 13, 61, 1, 98, 33, 69, 21, 74, 9, 72, 52, 51, 77, 77, 72, 86, 7, 80, 42, 62, 43, 71, 42, 7, 34, 40],4,[71, 42, 7, 34, 40]).
f([90, 66, 77, 64, 6, 30, 17, 41, 48, 14, 55, 28, 21, 54, 14, 12, 45, 85, 52, 22, 96, 75, 30, 92, 57, 22, 1, 64, 31, 101, 3, 20, 91, 95, 101, 60, 2, 30, 55, 63, 45, 90, 92],41,[66, 77, 64, 6, 30, 17, 41, 48, 14, 55, 28, 21, 54, 14, 12, 45, 85, 52, 22, 96, 75, 30, 92, 57, 22, 1, 64, 31, 101, 3, 20, 91, 95, 101, 60, 2, 30, 55, 63, 45, 90, 92]).
f([59, 82, 11, 49, 50, 11, 6, 4, 96, 57, 27, 69, 35, 31, 56, 28, 5, 12, 75, 75, 4, 28, 63, 56, 62, 68, 22, 90, 16, 27],18,[11, 49, 50, 11, 6, 4, 96, 57, 27, 69, 35, 31, 56, 28, 5, 12, 75, 75, 4, 28, 63, 56, 62, 68, 22, 90, 16, 27]).
f([42, 57, 62, 10, 19, 15, 66, 2, 4, 31, 57, 46, 74, 64, 22, 20, 68, 64, 56, 31, 65, 88, 46, 96, 47, 91, 69, 31, 101, 51, 11, 59, 81],16,[96, 47, 91, 69, 31, 101, 51, 11, 59, 81]).
f([66, 10, 73, 60, 30, 88, 14, 79, 7, 82, 35, 62, 30, 54, 68, 38, 81, 92, 42, 89, 55, 80, 27, 100, 3],6,[82, 35, 62, 30, 54, 68, 38, 81, 92, 42, 89, 55, 80, 27, 100, 3]).
:-end_in_neg.
