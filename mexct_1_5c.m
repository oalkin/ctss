% Script: mexct_1_5c.m
t=[-1:0.01:10];   % Vector of time instants    
x3 = sawtooth(2*pi*t/1.5);
% Graph the signal
plot(t,x3); grid;
axis([-1,10,-1.5,1.5]);