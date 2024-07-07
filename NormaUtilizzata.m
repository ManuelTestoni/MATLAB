l = [5, -8, 7]';
m = [-3.2, 5*10e4, 2.8, 3*10e2]';

g = Norma2(l)
g = Norma2(m)

w(1) = 1;

for i=2:30

    w(i)=(3*i)/(i-1);

end

g = Norma2(w')

norm(l)
norm(m)
norm(w)