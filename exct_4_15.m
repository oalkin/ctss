% Script: exct_4_15.m
t = [-2:0.02:10];  % Vector of time instants
% Create the signal x1(t)
x1 = sin(pi*t).*(t>=0);
% Create the signal x2(t)
x2 = sin(pi*(t-1)).*(t>=1);
% Graph the signals x1(t), x2(t) and x(t)
tiledlayout(3,1);
nexttile;
plot(t,x1); grid;
xlabel('t');
title('x_{1}(t)');
nexttile;
plot(t,x2); grid;
xlabel('t');
title('x_{2}(t)');
nexttile;
plot(t,x1+x2); grid;
xlabel('t');
title('x(t)=x_{1}(t)+x_{2}(t)');