% Script: mexct_1_8.m
t = linspace(-5,5,1000);
x2 = @(t) 0.5*ss_ramp(t)-2.5*ss_ramp(t-2)+3*ss_ramp(t-3)-ss_ramp(t-4);
xe = (x2(t)+x2(-t))/2;  % Eqn. (1.70)
xo = (x2(t)-x2(-t))/2;  % Eqn. (1.71)
tiledlayout(1,2);       % Plots in a 1 by 2 (horizontal) arrangement
nexttile;               % Plot the first tile
plot(t,xe); grid;
title('Even component');
xlabel('t (sec)');
ylabel('Amplitude');
nexttile;               % Plot the second tile
plot(t,xo); grid;
title('Odd component');
xlabel('t (sec)');
ylabel('Amplitude');