% Script: mexct_2_7a.m
% Compute the approximate solution using ode45()
t = [0:0.01:8];
[t,yApprox] = ode45(@RLCnoInput,t,[2,13]);
% Graph the approximate solution
plot(t,yApprox(:,1)); grid;
title('Approximate natural response of RLC circuit');
xlabel('Time (sec)');
ylabel('Amplitude');

function ydot = RLCnoInput(t,y)
  y1 = y(1);
  y2 = y(2);
  y1dot = y2;
  y2dot = -2*y2-26*y1;
  ydot = [y1dot;y2dot];
end