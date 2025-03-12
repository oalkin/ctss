% Script: exct_2_19.m
t = [0:0.01:5];              % Vector of time instants
h = 5.2*exp(-t).*sin(5*t);   % Eqn. (2.133)
% Graph the impulse response
plot(t,h); grid;
axis([0,5,-3,5]);
title('Impulse response h(t) found in Example 2.19');
xlabel('t (sec)');
ylabel('Amplitude');