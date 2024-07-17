% Script per la verifica di jacobi2

clear

v1 = -3*ones(20,1); % diagonale principale
v2 = ones(19,1); % prima diagonale superiore / prima diagonale inferiore
A = diag(v1) + diag(v2,1) + diag(v2,-1);
b = ones(20,1);
xes = A \ b; % soluzione esatta

x0 = zeros(20,1); % iterata iniziale
kmax = 10; % numero massimo di iterazioni
[x,err] = jacobi2(A,b,kmax,x0,xes); % kmax iterazioni di jacobi

err'