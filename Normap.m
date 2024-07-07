function c = Normap(x,p)

    if(p < 1)

        error('Il parametro p è minore di 1, riprovare');
    end
    if(p>=1 && p<=realmax)

        s = size(x);
        c = 0;

        for i=1:s

            c = c+(x(i)^p);

        end

        c = c^(1/p);
    else 
        
        s = size(x);
        c = 0;
        max = x(1);
        for i=1:s

            if(x(i)>max)
                max = x(i);
                c = max;
            end
        end
    end
end