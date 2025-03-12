% Script: mexct_1_4a.m
t = [-10:0.01:10];   % Vector of time instants
w1 = (t>=-1)&(t<2);
w2 = (t>=2)&(t<3);
w3 = (t>=3)&(t<=6);
x = 2*w1+1*w2-0.5*w3;
% Graph the signal
plot(t,x); grid;
axis([-10,10,-1,3]);