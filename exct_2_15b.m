% Script: exct_2_15b.m
t = [0:0.01:3];   % Vector of time instants
% Compute the natural response using Eqn. (2.96)
yh = 2*exp(-3*t)+10.5*t.*exp(-3*t);
% Graph the natural response
plot(t,yh,'b-'); grid;
axis([0,3,-1,4]);
title('Natural response y_h(t) for Example 2.15 part (b)');
xlabel('t (sec)'); 
ylabel('Amplitude');