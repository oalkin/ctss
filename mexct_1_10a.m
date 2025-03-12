% Script: mexct_1_10a.m
t = linspace(0,0.5,5000);
f = 261.63;
x = 0.6*sin(2*pi*f*t);
sound(x,10000);