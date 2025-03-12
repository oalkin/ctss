% Script: exct_2_14.m
t = [0:0.01:3];   % Vector of time instants
% Compute the natural response using Eqn. (2.86)
yh = 16.5*exp(-2*t)-15*exp(-3*t);
% Graph the output signal
plot(t,yh,'b-'); grid;
axis([0,3,-1,4]);
title('Natural response y_h(t) for Example 2.14.');
xlabel('t (sec)'); 
ylabel('Amplitude');