function p = val_pol(a,x)
% val_pol - function per la valutazione di un polinomio
%           p(x) = a(1)+a(2)x+...+a(n)x^n
%           in un vettore di nodi x
% Input: a, vettore di n componenti contenente i coefficienti del 
%           polinomio
%        x, vettore di m componenti contenente i nodi in cui 
%           valutare il polinomio
% Output: p, vettore di m componenti contenente i valori 
%         del polinomio in x_1,...,x_m

n = length(a);
p = a(1);
pot = x;

for i = 2 : n
    p = p + a(i)*pot;
    pot = pot.*x;
end



