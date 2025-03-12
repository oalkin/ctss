% Script: exct_4_6b.m
% Define an anonymous function for the signal
x = @(t,a) -exp(a*t).*(t<=0);
t = [-4:0.01:1];  % Vector of time instants
% Compute x(t) for a=-0.5+j*4
x3 = x(t,-0.5+j*4);
% Compute and graph x(t) for a=0.7+j4
x4 = x(t,0.7+j*4);
% Graph the two signals.
tiledlayout(2,1);
nexttile;
plot(t,real(x3),t,imag(x3),'--'); grid;
xlabel('t');
title('x(t) with a=-0.5+j4');
nexttile;
plot(t,real(x4),t,imag(x4),'--'); grid;
xlabel('t');
title('x(t) with a=0.7+j4');