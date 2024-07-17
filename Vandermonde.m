function V = Vandermonde(x)

    dim = length(x);

    for i=1:dim

        for j = 1:dim

            V(i,j) = x(i)^(j-1);

        end

    end

end