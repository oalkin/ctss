% Script : exct_1_14.m
t = [-1.5:0.001:1.5];                          % Create a vector "t" of time instants
x = ss_pulse(t-0.5);                           % Original signal
xe = 0.5*ss_pulse(t/2);                        % Even component -- Eqn. (1.70)
xo = 0.5*(ss_pulse(t-0.5)-ss_pulse(-t-0.5));   % Odd component -- Eqn. (1.71)
% Graph the signals
subplot(3,1,1);
plot(t,x); grid;
axis([-1.5,1.5,-0.2,1.2]);
xlabel('t (sec)');
title('x(t)');
subplot(3,1,2);
plot(t,xe); grid;
axis([-1.5,1.5,-0.7,0.7]);
xlabel('t (sec)');
title('x_{e}(t)');
subplot(3,1,3);
plot(t,xo); grid;
axis([-1.5,1.5,-0.7,0.7]);
xlabel('t (sec)');
title('x_{o}(t)');