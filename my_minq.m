function alpha = my_minq(A,y)

% Controlli sugli input
[m,n] = size(A);
if n > m
    error('n maggiore di m')
end

if rank(A) < n
    error('Caso degenere')
end

% Calcolo della soluzione del problema ai minimi quadrati
y = y(:); % forzo y ad essere colonna
[Q,R] = qr(A);
R = R(1:n,1:n); % R = R(1:n,:)
ytilde = Q'*y;
alpha = R \ ytilde(1:n);




