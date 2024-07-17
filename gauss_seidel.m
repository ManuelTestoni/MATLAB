function [x,err] = gauss_seidel(A,b,kmax,x0,xes)

n = length(x0);
x = x0;

d = diag(A);
for i = 1 : n
    if abs(d(i)) < eps
        error('Un elemento diagonale e'' nullo')
    end
end

for k = 1 : kmax
    for i = 1 : n
        s = 0;
        for j = 1 : n
            if j ~= i
                s = s + A(i,j)*x(j);
            end
        end
        x(i) = (b(i) - s)/A(i,i);
    end
    err(k) = norm(x - xes)/norm(xes);

end