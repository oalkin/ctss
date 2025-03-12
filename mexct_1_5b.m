% Script: mexct_1_5b.m
t=[-1:0.01:10];   % Vector of time instants   
x2 = square(2*pi*t,20);
% Graph the signal
plot(t,x2); grid;
axis([-1,10,-1.5,1.5]);