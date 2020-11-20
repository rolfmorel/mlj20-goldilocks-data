from os import listdir
from os.path import isfile, join

path = 'data/train/'
for fname in listdir(f'{path}'):
    if 'aleph' in fname:
        # print(fname)
        x = open(path + fname).read()

        # REPLACE
        # a = ':- modeh(*,f(+state,-state)).'
        # b = a + '\n:- modeb(*,f(+state,-state)).'
        # x = x.replace(a, b)


        # a = ':- determination(f/2,at_right/1).'
        # b = a + '\n:- determination(f/2,f/2).'
        # x = x.replace(a, b)
        # with open(path + fname, 'w') as f:
        #     f.write(x)

        # x = x.replace('#<', '<')
        # x = x.replace('#>', '>')
        # x = x.replace('#=', ' is ')

        # a = 'move_right(w(X1,Y),w(X2,Y)):-'
        # b = a + '\nnonvar(X1),\n'
        # x = x.replace(a, b)

        a = ':- modeb(1,f(+state,-state)).'
        b = ':- modeb(*,f(+state,-state)).'
        x = x.replace(a, b)

        # a = 'move_up(w(X,Y1),w(X,Y2)):-'
        # b = a + '\n\tnonvar(Y1),'
        # x = x.replace(a, b)

        # a = 'move_down(w(X,Y1),w(X,Y2)):-'
        # b = a + '\n\tnonvar(Y1),'
        # x = x.replace(a, b)

        # a = ':- determination(f/2,f/2).'
        # a = ':- modeb(*,f(+state,-state)).'
        # b = a = ':- determination(f/2,f/2).'
        # x = x.replace(a, '')
        with open(path + fname, 'w') as f:
            f.write(x)