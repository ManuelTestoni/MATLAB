clear
close all % chiude tutte le finestre grafiche aperte

% Punti di interpolazione
x = (1:4)';
y = [3;5;6;4];

% Grafico dei punti di interpolazione
plot(x,y,'rx','LineWidth',2) 
hold on

% Grafico del polinomio interpolante
zz = linspace(1,4,50);
pzz = interp_lag(x,y,zz);
plot(zz,pzz,'g')