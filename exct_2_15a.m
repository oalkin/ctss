% Script: exct_2_15a.m
t = [0:0.01:3];   % Vector of time instants
% Compute the natural response using Eqn. (2.95)
yh = 2*exp(-t).*cos(5*t)+3*exp(-t).*sin(5*t);
% Graph the natural response
plot(t,yh,'b-'); grid;
axis([0,3,-2,4]);
title('Natural response y_h(t) for Example 2.15 part (a)');
xlabel('t (sec)'); 
ylabel('Amplitude');