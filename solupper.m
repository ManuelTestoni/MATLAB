function x = solupper(U,b)

    dim = size(U);
    det = 1;
    somma = 0;
    x = zeros(1,dim(1));
    for i=1:dim(1)

        det = det * U(i,i);

    end

    if(det == 0)
    
        error("La matrice è singolare, il suo determinante è = 0");

    else

        for i=dim(1):-1:1
            for j=i+1:dim(1)

                somma = somma + U(i,j)*x(j);
                
            end

            x(i) = (b(i)- somma)/U(i,i);

        end

    end
    
    x = x';


end