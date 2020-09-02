head(L,H):-
  ground(L),
  L=[H|_].

tail(L,T):-
  ground(L),
  L=[_|T].



not_uppercase_(A):-
  \+uppercase_(A).
not_lowercase_(A):-
  \+lowercase_(A).
not_letter_(A):-
  \+letter_(A).
not_my_number_(A):-
  \+my_number_(A).
not_space_(A):-
  \+space_(A).

dropWhile(A,B,P):-
  ground(A),
  dropWhile_(A,B,P).

dropWhile_([],[],_P):-!.
dropWhile_([A|As],B,P):-
  call(P,A),!,
  dropWhile_(As,B,P).
dropWhile_(A,A,_P).

dropLast(A,B):-
  ground(A),
  dropLast_(A,B).

dropLast_([_],[]):-!.
dropLast_([H|T],[H|Out]):-
  dropLast_(T,Out).


takeWhile(A,B,P):-
  ground(A),
  takeWhile_(A,B,P).

takeWhile_([],[],_P).
takeWhile_([A|As],[A|Bs],P):-
  call(P,A),!,
  takeWhile_(As,Bs,P).
takeWhile_(_,[],_P).

map(A,B,P):-
  ground(A),
  map_(A,B,P).

map_([],[],_F).
map_([A|As],[B|Bs],F):-
  call(F,A,B),!,
  map_(As,Bs,F).

filter_letter_(A,B):-
  filter(A,B,letter_).
filter_not_letter_(A,B):-
  filter(A,B,not_letter_).
filter_uppercase_(A,B):-
  filter(A,B,uppercase_).
filter_not_uppercase_(A,B):-
  filter(A,B,not_uppercase_).
filter_space_(A,B):-
  filter(A,B,space_).
filter_not_space_(A,B):-
  filter(A,B,not_space_).
filter_my_number_(A,B):-
  filter(A,B,my_number_).
filter_not_my_number_(A,B):-
  filter(A,B,not_my_number_).

takeWhile_letter_(A,B):-
  takeWhile(A,B,letter_).
takeWhile_not_letter_(A,B):-
  takeWhile(A,B,not_letter_).
takeWhile_uppercase_(A,B):-
  takeWhile(A,B,uppercase_).
takeWhile_not_uppercase_(A,B):-
  takeWhile(A,B,not_uppercase_).
takeWhile_space_(A,B):-
  takeWhile(A,B,space_).
takeWhile_not_space_(A,B):-
  takeWhile(A,B,not_space_).
takeWhile_my_number_(A,B):-
  takeWhile(A,B,my_number_).
takeWhile_not_my_number_(A,B):-
  takeWhile(A,B,not_my_number_).

dropWhile_letter_(A,B):-
  dropWhile(A,B,letter_).
dropWhile_not_letter_(A,B):-
  dropWhile(A,B,not_letter_).
dropWhile_uppercase_(A,B):-
  dropWhile(A,B,uppercase_).
dropWhile_not_uppercase_(A,B):-
  dropWhile(A,B,not_uppercase_).
dropWhile_space_(A,B):-
  dropWhile(A,B,space_).
dropWhile_not_space_(A,B):-
  dropWhile(A,B,not_space_).
dropWhile_my_number_(A,B):-
  dropWhile(A,B,my_number_).
dropWhile_not_my_number_(A,B):-
  dropWhile(A,B,not_my_number_).

filter(A,B,P):-
  ground(A),
  filter_(A,B,P).

filter_([],[],_F).
filter_([A|As],[A|Out],F):-
  call(F,A),!,
  filter_(As,Out,F).
filter_([_|As],Out,F):-
  filter_(As,Out,F).

myreverse(A,B):-
  ground(A),
  (ground(B) -> A\=B; true),
  reverse(A,B),
  A\=B.

uppercase_('A').
uppercase_('B').
uppercase_('C').
uppercase_('D').
uppercase_('E').
uppercase_('F').
uppercase_('G').
uppercase_('H').
uppercase_('I').
uppercase_('J').
uppercase_('K').
uppercase_('L').
uppercase_('M').
uppercase_('N').
uppercase_('O').
uppercase_('P').
uppercase_('Q').
uppercase_('R').
uppercase_('S').
uppercase_('T').
uppercase_('U').
uppercase_('V').
uppercase_('W').
uppercase_('X').
uppercase_('Y').
uppercase_('Z').

lowercase_('a').
lowercase_('b').
lowercase_('c').
lowercase_('d').
lowercase_('e').
lowercase_('f').
lowercase_('g').
lowercase_('h').
lowercase_('i').
lowercase_('j').
lowercase_('k').
lowercase_('l').
lowercase_('m').
lowercase_('n').
lowercase_('o').
lowercase_('p').
lowercase_('q').
lowercase_('r').
lowercase_('s').
lowercase_('t').
lowercase_('u').
lowercase_('v').
lowercase_('w').
lowercase_('x').
lowercase_('y').
lowercase_('z').

letter_('A').
letter_('B').
letter_('C').
letter_('D').
letter_('E').
letter_('F').
letter_('G').
letter_('H').
letter_('I').
letter_('J').
letter_('K').
letter_('L').
letter_('M').
letter_('N').
letter_('O').
letter_('P').
letter_('Q').
letter_('R').
letter_('S').
letter_('T').
letter_('U').
letter_('V').
letter_('W').
letter_('X').
letter_('Y').
letter_('Z').
letter_('a').
letter_('b').
letter_('c').
letter_('d').
letter_('e').
letter_('f').
letter_('g').
letter_('h').
letter_('i').
letter_('j').
letter_('k').
letter_('l').
letter_('m').
letter_('n').
letter_('o').
letter_('p').
letter_('q').
letter_('r').
letter_('s').
letter_('t').
letter_('u').
letter_('v').
letter_('w').
letter_('x').
letter_('y').
letter_('z').

my_number_('0').
my_number_('1').
my_number_('2').
my_number_('3').
my_number_('4').
my_number_('5').
my_number_('6').
my_number_('7').
my_number_('8').
my_number_('9').

space_(' ').