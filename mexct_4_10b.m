% Script: mexct_4_10b.m
% Compute the inverse Laplace transform
syms s t
Xs = (s+1)/(s*(s+2));
xt = ilaplace(Xs)
% Display the result in cleaner form
pretty(xt)
% Graph the inverse transform
ezplot(xt,[0,5]); grid;
axis([0,5,0,1.2]);
xlabel('t (sec)');
ylabel('Amplitude');
title('x(t)');