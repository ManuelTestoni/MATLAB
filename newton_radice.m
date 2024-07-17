function [x,k] = newton_radice(x,N,tau,Nmax)

if x <= 0
    error('Dato iniziale non compatibile')
end

for k = 1 : Nmax
    
    if x == 0
        error('Metodo non applicabile, x = 0')
    end

    fx = x^2 - N;
    dfx = 2*x;
    xnew = x - fx/dfx;
    fxnew = xnew^2 - N;

    if abs(fxnew) <= tau & abs(x - xnew)/abs(xnew) <= tau
        fprintf('Criterio di arresto raggiunto')
        break;
    end

    x = xnew;
end

    if k == Nmax
        fprintf('Criterio di arresto non raggiunto')
    end 
end





