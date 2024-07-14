function lambda = MatriceScalare(A,x)

dim = size(A);
m = dim(1);
n = dim(2);

x = x';

for i = 1:m

    for j = 1:n

        lambda(i) = A(i,j)*x(j);

    end

end

lambda = lambda';

end