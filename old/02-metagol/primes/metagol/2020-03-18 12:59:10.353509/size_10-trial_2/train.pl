:- include('../../unary.pl').
goal :-
    Pos = [f(6469693230)],
    Neg = [f(3234846615),f(2156564410),f(1293938646),f(924241890),f(588153930),f(497668710),f(380570190),f(340510170),f(281291010),f(223092870)],
    learn(Pos,Neg).
