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
f([19, 12, 61, 56, 81, 85, 25, 36, 100, 76, 68, 80, 68, 29, 28, 57, 25, 3, 8, 35, 34, 64],22).
f([28, 86, 84, 70, 78, 13, 23, 78, 5, 59, 101, 86, 96, 49, 95, 12, 52, 23, 12, 101, 12, 65, 93, 75, 83, 49, 41, 58, 17, 94, 27, 76, 82, 79, 95],35).
f([94, 100, 44, 12, 17, 72, 100, 87, 58, 95, 47, 76, 54, 50, 88, 46, 11, 48, 70, 48, 3, 56, 15, 32, 79, 24, 97, 91, 88, 59, 44, 11, 55, 93, 36, 18],36).
f([59, 88, 95, 94, 70, 73, 55, 40, 37, 4, 43, 72, 30, 53, 34, 14, 78, 80, 98, 69, 37, 92, 58, 86, 32, 47, 6, 32, 96, 80, 34, 5, 65, 24, 68, 97, 54, 93],38).
f([93, 80, 63, 71, 37, 83],6).
f([65, 52, 11, 79, 12, 36, 63, 88, 82, 80, 11, 27, 40, 5, 98, 26, 42, 25, 23, 1],20).
f([8, 43, 64, 87, 13, 36, 13, 76, 69, 63, 34, 30, 26, 53, 49, 87, 50, 28, 1, 60, 89, 84, 86, 37, 51, 78, 101, 56, 88, 28, 45, 8, 101, 100, 12, 14, 45, 44, 6, 44, 96, 87, 24, 68, 93, 10, 57, 100, 54],49).
f([73, 61, 17, 98, 29, 45, 70, 58, 47, 38, 48, 74, 64, 41, 36, 20, 53, 44, 43],19).
f([24],1).
f([23, 57, 46, 84, 95, 1, 61, 50, 45, 18, 53, 60, 11, 70, 69, 39, 100, 40, 59, 24, 44, 76, 11, 79, 101, 79, 75, 88, 50, 26, 13, 75, 81, 59, 76, 91, 54, 32, 95, 48, 19],41).
:-end_in_pos.
:-begin_in_neg.
f([63, 72, 63, 93, 22, 54, 84, 98, 52, 43, 56, 76, 67, 36, 98, 99, 76, 15, 76, 71, 66],23).
f([57, 70, 9],33).
f([3, 46, 89, 44, 82, 1, 34, 83, 26],66).
f([43, 6, 32, 13, 78, 95, 70, 60, 6, 37, 73, 2, 86, 78, 78, 57, 90, 3, 27, 72, 45, 38, 84, 97, 93, 30],43).
f([34, 81, 59, 78, 65, 10, 35, 12],68).
f([5, 84, 20, 39, 20, 26, 18, 87, 21, 101, 8, 33, 41, 31, 7, 88, 47, 33, 41, 19, 65, 40, 59, 77, 85, 20, 81, 7, 60, 59, 62, 92, 33, 2, 35, 85, 32, 101, 7, 59, 80, 31, 90, 59, 49, 56, 88, 58, 27, 96],69).
f([4, 4, 86, 12, 14, 89, 8, 25, 80, 25, 35, 40, 78, 3, 27, 71, 78],5).
f([89, 12, 53, 10, 10, 56, 59, 96, 58, 50, 86],35).
f([87, 100, 90, 20, 56, 87, 65, 48, 41, 77, 12, 42, 55, 60, 14, 73, 75, 53, 90, 43, 22, 27, 49, 75, 92, 24, 34, 5, 23, 92, 29, 10, 21, 55, 63, 64, 33, 15, 87, 73, 91, 66, 56, 81, 53, 80, 15, 78],56).
f([3, 73, 52, 31, 94, 18, 15, 37, 52, 14, 45, 76, 9, 26, 6, 69, 24, 60, 87, 44, 25, 55, 95, 48, 51, 12, 55],95).
:-end_in_neg.
