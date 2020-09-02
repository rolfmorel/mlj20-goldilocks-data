:- ['bk-ijcai20'].
:- ['data/train/1-1.pl'].

f(A,B) :- drop(A,B).

%% pos(f(w(1,5,['@', 'f', 'r', 'e', 'd']),s(_,4,['f', 'r', 'e', 'd']))).
%% pos(f(w(1,7,['@', 'i', 'n', 'g', 'r', 'i', 'd']),s(_,6,['i', 'n', 'g', 'r', 'i', 'd']))).
%% pos(f(w(1,4,['@', 'b', 'o', 'b']),s(_,3,['b', 'o', 'b']))).
%% pos(f(w(1,5,['@', 'g', 'i', 'l', 'l']),s(_,4,['g', 'i', 'l', 'l']))).
%% pos(f(w(1,7,['@', 'j', 'e', 'a', 'n', 'n', 'e']),s(_,6,['j', 'e', 'a', 'n', 'n', 'e']))).
a:-
    f(w(1,5,['@', 'f', 'r', 'e', 'd']),w(_,4,['f', 'r', 'e', 'd'])).
%% run:-
%%     findall(A, pos(A), Pos),
%%     findall(A, neg(A), Neg),
%%     learn(Pos,Neg).

test:-
    forall(pos(A),test_pos(A)),
    %% forall(neg(A),test_neg(A)),
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