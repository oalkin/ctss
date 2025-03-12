% Script: mexct_4_10a.m
% Symbolically compute the Laplace transform
syms s t
xt = exp(-t)*cos(2*t);
Xs = laplace(xt)
% Display the result in cleaner form
pretty(Xs)