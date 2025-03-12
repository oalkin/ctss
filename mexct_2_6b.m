% Script: mexct_2_6b.m
% Compute the approximate solution using ode45()
t = [0:0.01:3];        % Vector of time instants
[t,yApprox] = ode45(@RCwithCosineInput,t,5);
% Compute the exact solution
yExact = 4*exp(-4*t)+cos(8*t)+2*sin(8*t);  % Eqn. (2.105)
% Graph exact and approximate solutions.
tiledlayout(2,1);
nexttile;
plot(t,yExact,'-',t(1:5:length(t)),yApprox(1:5:length(t)),'ro'); grid;
title('Exact and approximate solutions for RC circuit');
xlabel('Time (sec)');
ylabel('Amplitude');
legend('Exact solution','Approximate solution','Location','NorthEast');
% Compute and graph the percent approximation error
nexttile;
errPct = (yApprox-yExact)./(yExact)*100;
plot(t(2:length(t)),errPct(2:length(t))); grid;
title('Percent approximation error');
xlabel('Time (sec)');
ylabel('Percent error');

function ydot = RCwithCosineInput(t,y)
  ydot = -4*y+20*cos(8*t);
end