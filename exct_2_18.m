% Script: exct_2_18.m
t = [-1:0.005:1.5];       % Vector of time instants
h = 4*exp(-4*t).*(t>=0);  % Eqn. (2.130)
% Graph the impulse response
plot(t,h); grid;
axis([-1,1.5,-1,5]);
title('Impulse response h(t) found in Example 2.18');
xlabel('t (sec)');
ylabel('Amplitude');