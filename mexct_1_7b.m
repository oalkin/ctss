% Script: mexct_1_7b.m
t = linspace(-1,4,500);
x1 = 2*ss_pulse(t-0.5)+ss_pulse(t-1.5)-ss_pulse(t-2.5);
plot(t,x1); grid;