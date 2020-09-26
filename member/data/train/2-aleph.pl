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
:- modeh(*,f(+list,-element)).
:- modeb(*,f(+list,-element)).
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
%% :- determination(f/2,element/2).
%% :- determination(f/2,increment/2).
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
f([21, 83, 45, 30, 75, 30, 66, 34, 94, 83, 62, 32, 82, 24, 8, 11, 11, 99, 97, 48, 100, 10, 38, 35, 74, 75, 18, 85, 25, 80, 1, 20, 58, 37, 39, 10],94).
f([34, 100, 53, 41, 85, 47, 23, 14, 91, 50, 40, 68, 99, 40, 21, 75, 40, 53, 74, 1, 91, 38, 45, 60, 56, 49, 63, 76, 7, 58, 15, 9, 73, 22, 69, 82, 77, 62, 89, 66, 25, 18],25).
f([16, 78, 100, 15, 58, 22, 65, 53, 13, 66, 79, 58, 71, 34, 64, 83, 80, 70, 100, 65, 22, 25, 7, 16, 91],22).
f([63],63).
f([10, 82, 53, 97, 96, 24, 11, 35, 59, 20, 60, 57, 36],53).
f([52, 41, 46, 100, 39, 1, 83, 55, 81, 56, 64, 93, 44, 78, 78, 18, 48, 29, 70, 71, 75, 98, 75, 86, 90, 44, 2, 44, 11, 64, 80, 14, 84, 13, 33, 23, 72, 50, 72, 56, 22, 95, 31, 96, 3, 2],1).
f([4, 100, 101, 32, 10, 45, 83, 33, 37, 59, 58, 58, 84, 73],73).
f([48, 45, 35, 60, 96, 26, 3, 85, 5],96).
f([6, 25, 92, 10, 86, 45, 15, 72, 96, 57, 68, 24, 93, 6, 11, 54, 48, 51, 84, 8, 96, 90],6).
f([42, 56, 56, 8, 40, 96, 63, 92, 20, 31, 86, 97, 38, 75, 51, 32, 28, 20, 10],10).
:-end_in_pos.
:-begin_in_neg.
f([55, 48, 95, 44, 74, 93, 71, 61, 7, 71, 72, 69, 46, 100, 101, 15, 45, 37, 68, 85, 50],13).
f([70, 98, 82, 20, 69, 100, 23, 11, 58, 35, 85, 38, 37, 58, 90, 48, 34, 14, 24, 21, 3, 13, 57, 72, 93, 48, 93, 50, 95, 14, 21, 15, 93],88).
f([59, 13, 44, 36, 57, 52, 6, 71, 100, 71, 55, 63, 88, 1, 46, 8, 66, 27, 89, 80, 53, 4],76).
f([34, 52, 73, 91, 76, 38, 17, 32],56).
f([86, 87, 80, 52, 59, 14, 26, 95, 23, 95, 101, 91, 58, 69, 94, 86, 1, 97, 37, 73, 53, 53, 99, 94, 95, 70, 88, 55, 100, 97, 15, 55, 94, 48, 29, 71, 1, 36, 16, 77, 6, 6, 17, 98, 26, 69, 35],50).
f([54, 54, 82, 14, 70, 83, 10, 11, 20, 28, 74, 50, 87, 84, 44, 40, 69, 34, 84, 100, 11, 33, 42, 78, 23, 54, 37, 69, 72, 40, 77, 94, 101, 26, 33, 8, 6, 70, 55, 23, 92, 58, 46, 26, 93, 76, 68, 36],32).
f([55, 5, 17, 15, 2, 35, 42, 30, 43, 47, 1, 10, 9, 17, 18, 51],22).
f([59, 23, 61, 79, 5, 83, 49, 53, 27, 63, 96, 45, 44, 7, 19, 77, 68, 5, 82, 33, 48, 49, 62, 28, 87, 14, 32, 43, 95, 27, 90, 32],46).
f([92, 24, 86, 32, 67, 3, 71, 35, 26, 51, 92, 55, 2, 30, 17, 63, 64, 74, 37, 2, 20, 80, 76, 56, 40, 9, 7, 22, 82, 12, 45, 13, 58, 46, 60, 40, 18, 66, 92, 87, 71, 1, 5, 65, 24, 48],79).
f([72, 45],31).
:-end_in_neg.
