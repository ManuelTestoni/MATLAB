% Script per la verifica di Gauss-Seidel versus Jacobi

clear

v1 = -3*ones(20,1); % diagonale principale
v2 = ones(19,1); % prima diagonale superiore / prima diagonale inferiore
A = diag(v1) + diag(v2,1) + diag(v2,-1);
b = ones(20,1);
xes = A \ b; % soluzione esatta

x0 = zeros(20,1); % iterata iniziale
kmax = 10; % numero massimo di iterazioni
[x,err_jacobi] = jacobi2(A,b,kmax,x0,xes); % kmax iterazioni di jacobi
[x,err_GS] = gaussSeidel(A,b,kmax,x0,xes); % kmax iterazioni di Gauss-Seidel
err = [err_jacobi' err_GS']; % tabella con gli errori di jacobi nella 1a colonna
                             % e di Gauss-Seidel nella 2a colonna
err