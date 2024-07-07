function n = Norma2(x)

s = size(x);
n=0;

for i=1:s

    n=n+(x(i)^2);

end

n=sqrt(n);

end
