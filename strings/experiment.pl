%% metagol:functional.


func_test(Atom1,Atom2,Condition):-
  Atom1 = [P,A,X],
  Atom2 = [P,A,Y],
  Condition = (X=Y).

%% P(A) (abduce A).
%% metarule([P,A], [P,A], []).
%% P(A,B) (abduce B).
%% metarule([P,B], [P,_A,B], []).
%% P(A,B) <- Q(A,B)
%% ident
metarule([P,Q], [P,A,B], [[Q,A,B]]).
%% P(A,B) <- Q(A), R(A,B)
%% precon
metarule([P,Q,R], [P,A,B], [[Q,A],[R,A,B]]).
%% P(A,B) <- Q(A,B), R(B)
%% postcon
metarule([P,Q,R], [P,A,B], [[Q,A,B],[R,B]]).
%% P(A,B) <- Q(A,C), R(C,B)
%% chain
metarule([P,Q,R], [P,A,B], [[Q,A,C],[R,C,B]]).
%% P(A,B) <- Q(A,C), P(C,B)
%% tailrec
metarule([P,Q], [P,A,B], [[Q,A,C],[P,C,B]]).

%% modeh(f/2).
body_pred(drop/2).
body_pred(right/2).
%% body_pred(left/2).
body_pred(make_uppercase/2).
body_pred(make_lowercase/2).
body_pred(is_letter/1).
%% body_pred(not_letter/1).
body_pred(is_uppercase/1).
%% body_pred(not_uppercase/1).
body_pred(is_space/1).
%% body_pred(not_space/1).
body_pred(is_number/1).
%% body_pred(not_number/1).
body_pred(at_start/1).
body_pred(at_end/1).
%% body_pred(f/2).

run:-
    findall(f(A,B),pos(A,B),Pos),
    learn(Pos,[]),
    halt.

test:-
    forall(pos(A,B),do_test(A,B)),
    halt.

do_test(A,B):-
    current_predicate(f/2),!,
    writeln('solved,1'),
    ((f(A,C), C=B) -> writeln('acc,1'); writeln('acc,0')).

do_test(_,_):-
    writeln('solved,0'),
    writeln('acc,0').