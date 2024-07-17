[L,U] = gauss1(A);
D = diag(A);
B = L.*D.*L';
A
B