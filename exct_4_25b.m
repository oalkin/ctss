% Script: exct_4_25b.m
t = [-1:0.01:10];                          % Vector of time instants
x = 1/9*(1-cos(3*t)+3*sin(3*t)).*(t>=0);   % Compute the signal x(t)
% Graph the signal
plot(t,x); grid;
axis([-1,10,-0.6,0.6]);
xlabel('t (sec)');
ylabel('Amplitude');
title('The signal x(t) for Example 4.25');