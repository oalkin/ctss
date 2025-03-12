% Script: mexct_1_5d.m
t = [-2:0.01:12];   % Vector of time instants
% Define one period as an anonymous function
x4p = @(t) t.*((t>=0)&(t<1))+exp(-5*(t-1)).*((t>=1)&(t<2.5));   
% Periodic extension using modulo arithmetic
x4 = x4p(mod(t,2.5));
% Graph the signal
plot(t,x4); grid;
axis([-1,10,-0.4,1.4]);