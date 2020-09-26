:- include('../../unary.pl').
goal :-
    Pos = [f(510510)],
    Neg = [f(255255),f(170170),f(102102),f(72930),f(46410),f(39270),f(30030)],
    learn(Pos,Neg).
