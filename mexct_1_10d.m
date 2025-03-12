% Script: mexct_1_10d.m
tq = [0,0.05,0.15,0.4,0.45,0.5];
xq = [0,1.5,0.9,0.9,0,0];
t = linspace(0,0.5,5000);
q = interp1(tq,xq,t,'linear');
plot(t,q); grid;