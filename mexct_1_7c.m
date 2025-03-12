% Script: mexct_1_7c.m
t = linspace(-1,5,500);
x2 = 0.5*ss_ramp(t)-2.5*ss_ramp(t-2)+3*ss_ramp(t-3)-ss_ramp(t-4);
plot(t,x2); grid;