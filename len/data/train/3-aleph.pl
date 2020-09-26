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
:- modeh(*,f(+list,-int)).
:- modeb(*,f(+list,-int)).
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
:- determination(f/2,element/2).
:- determination(f/2,increment/2).
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
f([40, 32, 58, 44, 23, 95, 53, 75, 19, 49, 1, 7, 31, 15, 55, 83],16).
f([61, 26, 64, 48, 92, 93, 40, 12, 70, 62, 41, 40, 34, 77, 49, 73, 35, 55, 76, 22, 95, 47, 75, 11, 4, 52, 51, 99, 50, 73, 13, 85, 43, 58, 34, 6, 54, 42, 3, 32, 89, 97, 19, 64],44).
f([22, 82, 40, 27, 51, 22, 49, 16, 12, 80, 43, 9, 93, 50, 77, 55, 97, 32, 72, 65, 23, 2, 5, 22, 22, 70, 94, 81, 40, 80, 40, 79, 98, 6],34).
f([82, 68, 73, 86, 72, 58, 59, 34, 49, 18],10).
f([40, 43, 10, 9, 69, 20, 70, 20, 57, 79, 96, 69, 57, 93, 70, 45, 54, 68, 76, 35, 101, 6, 59, 88, 14, 37, 99, 101, 44, 89, 101, 7, 16, 40, 41, 38],36).
f([82, 41, 101, 75, 46, 67, 65, 3, 58, 43, 31, 51, 80, 29, 6, 27, 50, 57, 97, 80, 27, 88, 51, 33, 9, 87, 78, 34, 48, 35, 11, 14, 30, 70, 74, 41, 12, 64],38).
f([15, 84, 86, 54, 78, 96, 60, 50, 46, 27, 45, 62, 4, 57, 46, 65, 87, 40, 20, 38, 78, 55, 15, 19, 92, 76, 61, 96, 38, 45, 100, 76, 11, 30, 17, 68, 52, 68, 2, 4, 97, 59, 79, 91, 101, 24, 63, 97],48).
f([1, 73, 49, 44, 35, 65, 4, 75, 2, 67, 30, 57, 50, 40, 79, 52, 94, 45, 43, 38, 51, 57, 7, 1, 78, 28, 99, 49, 22, 67, 1, 44, 97, 40, 89, 90, 9, 14, 90, 6, 16, 52, 24],43).
f([26, 53, 84, 58, 82, 61, 90, 78],8).
f([90, 47, 97, 24, 32, 74, 91, 29, 83, 22, 84, 92, 39],13).
:-end_in_pos.
:-begin_in_neg.
f([11, 46, 5, 80, 3, 35, 89, 37, 78, 69, 58, 67, 17, 16, 14, 6, 50, 76, 46, 78, 39, 75],44).
f([70, 99, 3, 99, 88, 28, 72, 28, 69, 81, 61, 80, 68, 61, 50, 53, 40, 5, 25, 90, 59, 24, 23, 82, 70, 31, 60, 24, 14, 89, 54, 55, 59, 84, 48, 12, 48],21).
f([87, 18, 62, 66, 97, 62],73).
f([88, 82, 81, 62, 70, 97, 57, 3, 24, 24, 13, 76, 30, 81, 68, 4, 69, 49, 93, 38, 24, 89, 81, 10, 72, 95, 27, 45, 52, 61, 33, 46],21).
f([71, 83, 16, 100, 26, 86, 61, 18, 26, 94, 88, 35, 3, 98, 99, 11, 66, 97, 52, 87, 88, 32, 5, 42, 97, 37, 36, 56, 53, 97, 12, 44, 30],98).
f([57, 65, 84, 74, 12, 53, 101, 10, 75, 7, 69],86).
f([8, 88, 29, 16, 8, 70, 51, 54, 59, 65, 86, 34, 54, 99, 35, 100, 95, 74, 88, 5, 6, 94, 47, 11, 9, 48, 10, 87, 60, 71, 61, 96, 19],8).
f([52, 93, 99, 97, 5, 4, 3, 24, 57, 19, 52, 29, 88, 32, 86, 69, 94, 57, 12, 93, 40, 39, 41, 50],59).
f([28, 46, 85, 6, 45, 88, 95, 9, 51, 5, 68, 72, 67, 78],58).
f([3, 8, 57, 83, 57, 20, 61, 19, 59, 94, 73, 4, 13, 65, 67, 4, 72, 87, 82, 81, 64, 27, 94, 90, 36, 12, 36, 17, 48, 36, 4, 56, 83, 55, 82, 22, 41, 33, 5, 91, 28, 86, 82, 17, 48, 75, 42, 58, 38, 79],74).
:-end_in_neg.
