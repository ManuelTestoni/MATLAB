% Script esercizio 2

clear
close all

% Dati
t = [0 10 20 30 40 80 90 100]';
s = [68.0 67.1 66.4 65.6 64.6 61.8 61.0 60.0]';

% Calcolo coefficienti della retta ai minimi quadrati
m = length(t);
A = [ones(m,1) t]; % retta ai minimi quadrati
alpha = my_minq(A,s); % vettore dei coefficienti della retta ai minimi quadrati

% Calcolo dei coefficienti del polinomio interpolante
V = vander(t);
V = V(:,m:-1:1);
a = V \ s;
a = a(m:-1:1); % vettore dei coefficienti del polinomio interpolante

% Grafico 
plot(t,s,'ro')
hold on
z = linspace(t(1),t(m));
pz = alpha(1) + alpha(2)*z;
plot(z,pz,'b')
pz_interp = polyval(a,z);
plot(z,pz_interp,'k')

% Stima dei valori di S
s50 = alpha(1) + alpha(2)*50
s60 = alpha(1) + alpha(2)*60
s70 = alpha(1) + alpha(2)*70