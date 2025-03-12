% Script: mexct_7_2.m
Ac = 2;
Mu = 0.7;
fc = 25000;
fm = 2000;
t = [0:999]*1e-6;
x_am = Ac*(1+Mu*cos(2*pi*fm*t)).*cos(2*pi*fc*t);  % Eqn. (7.8)
clf;
k=[-30:30];
ck = ss_efsapprox(x_am,k);
stem(k,abs(ck));
title('EFS coefficients for x_{AM}(t)');
xlabel('Index k');