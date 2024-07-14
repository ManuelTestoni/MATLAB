function minimo = minimus(A)

dim = size(A);
m = dim(1);
n = dim(2);
p = 0;
k = 0;

minimo = A(1,1);

for i = 1:m

    for j = 1:n

        if (A(i,j) < minimo)

            minimo = A(i,j);
            p = i;
            k = j;
        end
           
    end

end

p 
k


end