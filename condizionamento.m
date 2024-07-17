function xc = condizionamento(A,b)
dim = size(A);
n = dim(1);
A = hillbert(n);

x_es = ones(n,1);
b = A*x_es;
xc = A \ b;
r = b-A*xc;
f = norm(r);

d = cond(A,2)*(r/b);


end