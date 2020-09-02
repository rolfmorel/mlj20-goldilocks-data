:-[leven].

distance(w(_,_,S),w(_,_,S),0):-!.
distance(w(_,_,_),w(_,_,_),1).

make_uppercase(w(Pos,Len,String1),w(Pos,Len,String2)):-
  Len > 0,
  PreN is Pos-1,
  length(Pre,PreN),
  append(Pre,[A|Post],String1),
  convert_case(B,A),
  append(Pre,[B|Post],String2).

make_lowercase(w(Pos,Len,String1),w(Pos,Len,String2)):-
  Len > 0,
  PreN is Pos-1,
  length(Pre,PreN),
  append(Pre,[A|Post],String1),
  convert_case(A,B),
  append(Pre,[B|Post],String2).


%% if at the last position then drop and reshape array
drop(w(Pos1,Len1,String1),w(Pos2,Len2,String2)):-
  Len1 > 0,
  Pos1 == Len1,!,
  N is Pos1-1,
  Pos2 is N,
  Len2 is N,
  append(String2,[_],String1).

drop(w(Pos,Len1,String1),w(Pos,Len2,String2)):-
  Len1 > 0,
  Len2 is Len1-1,
  N is Pos-1,
  length(Pre,N),
  append(Pre,[_|Post],String1),
  append(Pre,Post,String2).


right(w(Pos1,Len,String),w(Pos2,Len,String)):-
  Pos1 < Len,
  Pos2 is Pos1+1.

left(w(Pos1,Len,String),w(Pos2,Len,String)):-
  Pos1 > 1,
  Pos2 is Pos1-1.

at_start(w(1,_,_)).
at_end(w(Len,Len,_)).

is_letter(w(Pos,_,String)):-
  nth1(Pos,String,Letter),
  is_letter_(Letter).
not_letter(A):-
  \+ is_letter(A).

is_uppercase(w(Pos,_,String)):-
  nth1(Pos,String,Letter),
  is_uppercase_(Letter).
not_uppercase(A):-
  \+ is_uppercase(A).

is_lowercase(w(Pos,_,String)):-
  nth1(Pos,String,Letter),
  is_lowercase_(Letter).
not_lowercase(A):-
  \+ is_lowercase(A).

is_number(w(Pos,_,String)):-
  nth1(Pos,String,Letter),
  is_number_(Letter).
not_number(A):-
  \+ is_number(A).

is_space(w(Pos,_,String)):-
  nth1(Pos,String,Letter),
  is_space_(Letter).
not_space(A):-
  \+ is_space(A).











is_uppercase_('A').
is_uppercase_('B').
is_uppercase_('C').
is_uppercase_('D').
is_uppercase_('E').
is_uppercase_('F').
is_uppercase_('G').
is_uppercase_('H').
is_uppercase_('I').
is_uppercase_('J').
is_uppercase_('K').
is_uppercase_('L').
is_uppercase_('M').
is_uppercase_('N').
is_uppercase_('O').
is_uppercase_('P').
is_uppercase_('Q').
is_uppercase_('R').
is_uppercase_('S').
is_uppercase_('T').
is_uppercase_('U').
is_uppercase_('V').
is_uppercase_('W').
is_uppercase_('X').
is_uppercase_('Y').
is_uppercase_('Z').

is_lowercase_('a').
is_lowercase_('b').
is_lowercase_('c').
is_lowercase_('d').
is_lowercase_('e').
is_lowercase_('f').
is_lowercase_('g').
is_lowercase_('h').
is_lowercase_('i').
is_lowercase_('j').
is_lowercase_('k').
is_lowercase_('l').
is_lowercase_('m').
is_lowercase_('n').
is_lowercase_('o').
is_lowercase_('p').
is_lowercase_('q').
is_lowercase_('r').
is_lowercase_('s').
is_lowercase_('t').
is_lowercase_('u').
is_lowercase_('v').
is_lowercase_('w').
is_lowercase_('x').
is_lowercase_('y').
is_lowercase_('z').

is_letter_('A').
is_letter_('B').
is_letter_('C').
is_letter_('D').
is_letter_('E').
is_letter_('F').
is_letter_('G').
is_letter_('H').
is_letter_('I').
is_letter_('J').
is_letter_('K').
is_letter_('L').
is_letter_('M').
is_letter_('N').
is_letter_('O').
is_letter_('P').
is_letter_('Q').
is_letter_('R').
is_letter_('S').
is_letter_('T').
is_letter_('U').
is_letter_('V').
is_letter_('W').
is_letter_('X').
is_letter_('Y').
is_letter_('Z').
is_letter_('a').
is_letter_('b').
is_letter_('c').
is_letter_('d').
is_letter_('e').
is_letter_('f').
is_letter_('g').
is_letter_('h').
is_letter_('i').
is_letter_('j').
is_letter_('k').
is_letter_('l').
is_letter_('m').
is_letter_('n').
is_letter_('o').
is_letter_('p').
is_letter_('q').
is_letter_('r').
is_letter_('s').
is_letter_('t').
is_letter_('u').
is_letter_('v').
is_letter_('w').
is_letter_('x').
is_letter_('y').
is_letter_('z').

is_number_('0').
is_number_('1').
is_number_('2').
is_number_('3').
is_number_('4').
is_number_('5').
is_number_('6').
is_number_('7').
is_number_('8').
is_number_('9').
is_space_(' ').

convert_case('A','a').
convert_case('B','b').
convert_case('C','c').
convert_case('D','d').
convert_case('E','e').
convert_case('F','f').
convert_case('G','g').
convert_case('H','h').
convert_case('I','i').
convert_case('J','j').
convert_case('K','k').
convert_case('L','l').
convert_case('M','m').
convert_case('N','n').
convert_case('O','o').
convert_case('P','p').
convert_case('Q','q').
convert_case('R','r').
convert_case('S','s').
convert_case('T','t').
convert_case('U','u').
convert_case('V','v').
convert_case('W','w').
convert_case('X','x').
convert_case('Y','y').
convert_case('Z','z').