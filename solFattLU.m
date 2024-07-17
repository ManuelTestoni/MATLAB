% Script per verificare la correttezza di gauss1

A = [1e-15 1 -2; 1 4 1; 2 5 6];
x = ones(3,1);
b = A*x;

[L,U] = gauss1(A);
y = L \ b;
xc = U \ y;

norm(x-xc)/norm(x) % errore relativo sulla soluzione