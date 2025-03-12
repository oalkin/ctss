% Script: mexct_1_4d.m
t = [-10:0.01:10];   % Vector of time instants
sx = @(t) 2*((t>=-1)&(t<2))+1*((t>=2)&(t<3))-0.5*((t>=3)&(t<=6));
plot(t,sx(2*t-5));