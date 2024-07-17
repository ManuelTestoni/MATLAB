% Script per verificare la correttezza di cholesky

% Problema test
n = 3; % n = 3,50,100,500,1000
A = ones(n) + (n-1)*eye(n);
x = ones(n,1);
b = A*x;

% Fattorizzazione di Cholesky 
[L1,~] = cholesky(A);
y1 = L1 \ b;
x_chol_1 = L1' \ y1;
err_chol_1 = norm(x-x_chol_1)/norm(x)

% Confronto con la function chol di Matlab
L2 = chol(A,'lower');
y2 = L2 \ b;
x_chol_2 = L2' \ y2;
err_chol_2 = norm(x-x_chol_2)/norm(x)

% Confronto con la function lu di Matlab
[L,U,P] = lu(A);
Pb = P*b;
y = L \ Pb;
x_lu = U \ y; 
err_lu = norm(x_lu-x)/norm(x)