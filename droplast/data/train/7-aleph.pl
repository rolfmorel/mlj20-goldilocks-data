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
f([13, 84, 91, 25, 58, 25, 59, 79, 69, 40, 22, 74, 9, 74, 17, 80, 11, 41, 51, 85, 31, 44, 16, 13, 80, 36, 1, 86, 74, 94, 92, 31, 81, 61, 85, 22, 85, 18, 79, 76, 48, 30, 48, 23, 71],[13, 84, 91, 25, 58, 25, 59, 79, 69, 40, 22, 74, 9, 74, 17, 80, 11, 41, 51, 85, 31, 44, 16, 13, 80, 36, 1, 86, 74, 94, 92, 31, 81, 61, 85, 22, 85, 18, 79, 76, 48, 30, 48, 23]).
f([1, 82, 91, 21, 23, 85, 86, 66, 8, 40, 80, 18, 34],[1, 82, 91, 21, 23, 85, 86, 66, 8, 40, 80, 18]).
f([74, 54, 100, 15, 15, 22, 100, 11, 28, 98, 62],[74, 54, 100, 15, 15, 22, 100, 11, 28, 98]).
f([86, 12, 77, 84, 96, 52, 1, 43, 39, 15, 8, 84, 53, 56, 86, 96, 19, 76, 81],[86, 12, 77, 84, 96, 52, 1, 43, 39, 15, 8, 84, 53, 56, 86, 96, 19, 76]).
f([34, 80, 14, 42, 10, 100, 86, 47, 4, 60, 65, 49, 6, 101, 62, 100],[34, 80, 14, 42, 10, 100, 86, 47, 4, 60, 65, 49, 6, 101, 62]).
f([33, 94, 77],[33, 94]).
f([11, 76, 9, 31, 68, 75, 1, 67, 48, 37, 22],[11, 76, 9, 31, 68, 75, 1, 67, 48, 37]).
f([92, 73, 75, 8, 18, 99, 46],[92, 73, 75, 8, 18, 99]).
f([35, 38, 33, 31, 68, 20, 88, 58, 72, 100, 85, 24, 45, 4, 63, 92, 49, 16, 10, 41],[35, 38, 33, 31, 68, 20, 88, 58, 72, 100, 85, 24, 45, 4, 63, 92, 49, 16, 10]).
f([94, 86, 96, 74, 6, 39, 53, 43, 58, 5, 101, 88, 42, 63, 65, 50, 9, 35, 8, 87, 38, 59, 70, 75, 72, 51, 38, 86, 76, 20, 3, 77, 79, 11, 36, 18, 23, 2, 79, 9, 91, 40, 60, 46, 13, 97, 54],[94, 86, 96, 74, 6, 39, 53, 43, 58, 5, 101, 88, 42, 63, 65, 50, 9, 35, 8, 87, 38, 59, 70, 75, 72, 51, 38, 86, 76, 20, 3, 77, 79, 11, 36, 18, 23, 2, 79, 9, 91, 40, 60, 46, 13, 97]).
:-end_in_pos.
:-begin_in_neg.
f([75, 12, 51, 16, 39],[75, 12, 51, 16, 39]).
f([15, 79, 19, 65, 1, 99, 28, 49, 62, 99, 97, 74, 25, 101, 33, 55, 34, 10, 67, 77, 43, 19, 71, 70, 45, 18, 36, 16, 45, 26, 45, 64, 32, 29],[15, 79, 19, 65, 1, 99, 28, 49, 62, 99, 97, 74, 25, 101, 33, 55, 34, 10, 67, 77, 43, 19, 71, 70, 45, 18, 36, 16, 45, 26, 45, 64, 32, 29]).
f([76, 99, 101, 53, 45, 97, 42, 80, 2, 51, 22, 64, 57, 58, 40, 75, 37, 12, 31, 42, 38, 79, 20, 15, 33, 13, 13, 21, 9, 6, 11, 100],[76, 99, 101, 53, 45, 97, 42, 80, 2, 51, 22, 64, 57, 58, 40, 75, 37, 12, 31, 42, 38, 79, 20, 15, 33, 13, 13, 21, 9, 6, 11, 100]).
f([64, 74, 53, 24, 6, 90, 15, 2, 71, 28, 63, 22, 67, 20, 67, 22, 46, 69, 87, 4, 4, 28, 61, 59, 70, 63, 57, 2, 76, 57, 18, 43, 31, 64, 95, 76, 58, 95, 5, 41, 53, 101, 86, 57, 73],[64, 74, 53, 24, 6, 90, 15, 2, 71, 28, 63, 22, 67, 20, 67, 22, 46, 69, 87, 4, 4, 28, 61, 59, 70, 63, 57, 2, 76, 57, 18, 43, 31, 64, 95, 76, 58, 95, 5, 41, 53, 101, 86, 57, 73]).
f([95, 80, 4, 73, 52, 18, 18, 36, 21, 55, 42, 6, 92, 92, 35, 4, 99, 92, 86, 1, 84, 81, 42, 95, 40, 9, 15, 31, 9, 4, 60, 61, 46, 75, 63, 54, 45, 25, 85, 30, 80, 1, 27, 66, 54, 19, 48, 62, 93],[95, 80, 4, 73, 52, 18, 18, 36, 21, 55, 42, 6, 92, 92, 35, 4, 99, 92, 86, 1, 84, 81, 42, 95, 40, 9, 15, 31, 9, 4, 60, 61, 46, 75, 63, 54, 45, 25, 85, 30, 80, 1, 27, 66, 54, 19, 48, 62, 93]).
f([7, 53, 23, 95, 22, 4, 2, 32],[7, 53, 23, 95, 22, 4, 2, 32]).
f([39, 41, 18, 53, 21, 93, 26, 46, 100, 57, 51, 12, 77, 5, 98, 12, 81, 12, 66, 95, 33, 24],[39, 41, 18, 53, 21, 93, 26, 46, 100, 57, 51, 12, 77, 5, 98, 12, 81, 12, 66, 95, 33, 24]).
f([73, 14, 17, 14, 14, 95, 70, 69, 76, 61, 62, 94, 42, 32, 43, 22, 50, 32, 18, 47, 94, 98, 85, 93, 76, 51, 32, 3, 86, 26, 71, 85, 55, 82, 61, 42, 18, 6, 42, 14, 85, 49, 28],[73, 14, 17, 14, 14, 95, 70, 69, 76, 61, 62, 94, 42, 32, 43, 22, 50, 32, 18, 47, 94, 98, 85, 93, 76, 51, 32, 3, 86, 26, 71, 85, 55, 82, 61, 42, 18, 6, 42, 14, 85, 49, 28]).
f([64, 48, 52, 96, 12, 12, 79, 21, 7, 73, 94],[64, 48, 52, 96, 12, 12, 79, 21, 7, 73, 94]).
f([18, 75, 49, 17, 88, 94, 23, 36, 9, 20, 18, 49, 7, 30, 73, 81, 71, 20, 21, 45, 50, 18, 99, 23, 74, 77, 16, 46, 56, 55, 38, 33, 4, 73, 56, 42, 17, 27],[18, 75, 49, 17, 88, 94, 23, 36, 9, 20, 18, 49, 7, 30, 73, 81, 71, 20, 21, 45, 50, 18, 99, 23, 74, 77, 16, 46, 56, 55, 38, 33, 4, 73, 56, 42, 17, 27]).
:-end_in_neg.
