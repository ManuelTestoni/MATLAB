function x = sollower(L,b)

dim = size(L);
    det = 1;
    somma = 0;
    x = zeros(1,dim(1));
    for i=1:dim(1)

        det = det * L(i,i);

    end

    if(det == 0)
    
        error("La matrice è singolare, il suo determinante è = 0");

    else

        for i=1:dim(1)
    
            for j=1:i-1

                somma = somma+L(i,j)*x(j);

            end

            x(i) = (b(i) - somma)/L(i,i);

        end

    x = x';

    end

end