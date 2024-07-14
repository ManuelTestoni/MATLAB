function max = normainf(A)

dim = size(A);
m = dim(1);
n = dim(2);

for i = 1:m

    for j = 1:n

        somma(i) = somma(i)+ A(i,j);

    end
end

max = somma(1);

for i = 1:n

    if (somma(i) > max)

        max = somma(i);

    end

end


end