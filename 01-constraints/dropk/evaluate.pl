test:-
    forall(pos(A),test_pos(A)),
    forall(neg(A),test_neg(A)),
    halt.

test_pos(A):-
    current_predicate(f/2),
    call(A),!,
    writeln('acc,1').
test_pos(_):-
    writeln('acc,0').

test_neg(A):-
    current_predicate(f/2),
    call(A),!,
    writeln('acc,0').
test_neg(_):-
    writeln('acc,1').