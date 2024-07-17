function [L,U] = gauss1(A)

    dim = size(A);
    det = 1;
    x = zeros(1,dim(1));
    L = triu(eye(dim(1)));
    for i=1:dim(1)

        det = det * A(i,i);

    end

    if(det == 0)

        error("La matrice inserita in input è singolare, " + ...
            "non possiamo procedere con la fattorizzazione in quanto uno dei suoi perni è = a 0");

    else
        for k=1:dim(1)-1

            if ((abs(A(k,k))) < eps)
                error("Fattorizzazione non calcolabile");
            else

                for i=k+1:dim(1)

                    A(i,k) = A(i,k)/A(k,k);

                    for j = k+1:dim(1)

                        A(i,j) = A(i,j)-A(i,k)*A(k,j);

                    end

                end

            end

        end

    U = triu(A);
    L = (A-U) +eye(dim);

    end

end