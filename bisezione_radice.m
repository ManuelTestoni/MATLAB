function c = bisezione_radice(N,m,n,tol,maxit)
% Function per il calcolo della radice quadrata di un numero 
% non negativo tramite il metodo di bisezione.
% INPUT:  N, numero non negativo;
%         m,n, estremi dell'intervallo iniziale
%	        tol, tolleranza prefissata
%         maxit, numero massimo di iterazioni 
% OUTPUT: c, approssimazione della radice di N
%         k, numero di iterazioni compiute

% Controllo su N
    if N < 0 
        error('Numero negativo');
    end

    % Controllo su m ed n
    if m < 0 || n < 0 || N <= m^2 || N >= n^2
        error('Intervallo iniziale non accettabile');
    end

    % Algoritmo bisezione
    for k = 1 : maxit
        c = (m+n)/2;
        err = c^2 - N;
        fprintf('It %d, c = %f, abs(err) = %d \n',k,c,abs(err));
        if abs(err) <= tol
            fprintf('Criterio d''arresto soddisfatto \n \n');
            break;
        elseif k == maxit
            fprintf('Maxit raggiunto, criterio non soddisfatto \n \n');
            break;
        elseif err < 0
            m = c;
        else
            n = c;
        end
    end

end