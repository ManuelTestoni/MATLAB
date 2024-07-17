function R = myQR(A)

[n,m] = size(A);
sigma = zeros(n,1);

for k = 1 : n
    sigma(k) = sqrt(sum(A(k:n,k).^2));
    A(k,k) = A(k,k) + sigma(k);
    alpha = sigma(k)*A(k,k);
    for j = k+1 : n
        tau = (A(k:n,k)'*A(k:n,j))/alpha;
        A(k:n,j) = A(k:n,j) - tau*A(k:n,k);
    end
end

R = triu(A) - diag(diag(A)) - diag(sigma);