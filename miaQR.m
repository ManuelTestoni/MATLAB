function R = miaQR(A)

    n = max(size(A));
    sigma = ones(n);
    alpha = ones(n);

    for k=1:n

        sigma(k) = sqrt(sum(A(k:n,k).^2));
        A(k,k) = A(k,k)+sigma(k);
        alpha(k) = sigma(k)*A(k,k);

        for j = k+1:n

            tau = sum(A(k:n,k)*A(k,j)/alpha(k));
            for i = k:n
                A(i,j) = A(i,j)-tau*A(i,k);
            end
        end

    end

R = triu(A) - diag(diag(A)) - diag(sigma);

end