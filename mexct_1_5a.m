% Script: mexct_1_5a.m
t=[-1:0.01:10];   % vector of time instants 
x1 = square(2*pi*t); 
% Graph the signal
plot(t,x1); grid;
axis([-1,10,-1.5,1.5]);