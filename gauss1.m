function [L,U] = gauss1(A)

    dim = max(size(A));
    det = 1;
    x = zeros(1,dim);
    L = triu(eye(dim));

        for k=1:dim-1

            if ((abs(A(k,k))) < eps)
                error("Fattorizzazione non calcolabile");
            else

                for i=k+1:dim

                    A(i,k) = A(i,k)/A(k,k);

                    for j = k+1:dim

                        A(i,j) = A(i,j)-A(i,k)*A(k,j);

                    end

                end

            end

        end

    U = triu(A);
    L = (A-U) +eye(dim);

end