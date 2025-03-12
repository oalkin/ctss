% Script: exct_4_26b.m
t = [-5:0.01:5];  % Vector of time instants
% Compute right and left-sided components
xR = -0.8333*exp(-t).*ss_step(t)+0.75*exp(-2*t).*ss_step(t);
xL = 0.4167*exp(2*t).*ss_step(-t)-0.5*exp(3*t).*ss_step(-t);
% Compute the signal x(t)
x = xR + xL;   
% Graph the signals
tiledlayout(3,1);
nexttile;
plot(t,xR); grid;
axis([-5,5,-0.25,0.25]);
xlabel('t (sec)');
ylabel('Amplitude');
title('x_{R}(t)');
nexttile;
plot(t,xL); grid;
axis([-5,5,-0.25,0.25]);
xlabel('t (sec)');
ylabel('Amplitude');
title('x_{L}(t)');
nexttile;
plot(t,x); grid;
axis([-5,5,-0.25,0.25]);
xlabel('t (sec)');
ylabel('Amplitude');
title('x(t)');