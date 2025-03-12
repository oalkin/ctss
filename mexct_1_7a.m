% Script: mexct_1_7a.m
t = linspace(-1,4,500);
x1 = 2*ss_step(t)-ss_step(t-1)-2*ss_step(t-2)+ss_step(t-3);
plot(t,x1); grid;