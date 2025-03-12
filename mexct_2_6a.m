% Script: mexct_2_6a.m
% Compute the approximate solution using ode45()
t = [0:0.01:3];        % Vector of time instants
[t,yApprox] = ode45(@RCnoInput,t,5);
% Compute the exact solution
yExact = 5*exp(-4*t);  % Eqn. (2.70)
% Graph exact and approximate solutions.
tiledlayout(2,1);
nexttile;
plot(t,yExact,'-',t(1:10:length(t)),yApprox(1:10:length(t)),'ro'); grid;
title('Exact and approximate solutions for RC circuit');
xlabel('Time (sec)');
ylabel('Amplitude');
legend('Exact solution','Approximate solution','Location','SouthEast');
% Compute and graph the percent approximation error
nexttile;
errPct = (yApprox-yExact)./yExact*100;
plot(t(2:length(t)),errPct(2:length(t))); grid;
title('Percent approximation error');
xlabel('Time (sec)');
ylabel('Percent error');

function ydot = RCnoInput(t,y)
  ydot = -4*y;
end