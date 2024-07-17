function [L,U,p] = gauss2(A)
% Function per calcolare la fattorizzazione PA = LU di una matrice A
% Input: A, matrice nxn
% Output: L, matrice nxn triangolare inferiore con diagonale unitaria
%         U, matrice nxn triangolare superiore, L*U = P*A

% Dimensioni di A
[m,n] = size(A);
if m ~= n
    error('La matrice non è quadrata')
end

% Inizializzazione di p
p = 1 : n;

% Algoritmo di Gauss
for k = 1 : n-1 % passo del metodo
    % Pivoting parziale
    [amax,ind] = max(abs( A(k:n,k) ));
    ind = ind + k-1; % indice di riga di A su cui si trova il massimo
    if ind ~= k
        % Scambio degli indici
        aux = p(k);
        p(k) = p(ind);
        p(ind) = aux;
        % p([k ind]) = p([ind k]);
        % Scambio delle righe
        temp = A(k,:);
        A(k,:) = A(ind,:);
        A(ind,:) = temp;
        % A([k ind],:) = A([ind k],:);
    end

    % Metodo di eliminazione Gaussiana
    if abs(A(k,k)) < eps
        error('Fattorizzazione non calcolabile')
    else
        A(k+1:n,k) = A(k+1:n,k)/A(k,k); % moltiplicatori di Gauss
        A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k)*A(k,k+1:n); % trasformazioni di Gauss
    end
end
U = triu(A);
L = (A-U) + eye(n);