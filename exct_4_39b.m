% Script : exct_4_39b.m
t = [-1:0.01:6];  % Vector of time instants
% Compute and graph the impulse response
h = exp(-t).*cos(t).*(t>=0);
plot(t,h); grid;
axis([-1,6,-0.2,1.2]);
xlabel('t (sec)');
ylabel('Amplitude');
title('h(t)');