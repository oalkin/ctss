% Script: mexct_2_5.m
% Compute the approximate solution using ode45()
tSpan = [0,1];         % Time span for approximate solution
[t,yApprox] = ode45(@RCwithUnitStepInput,tSpan,0);
% Compute the exact solution at the time instants in vector 't'
yExact = 1-exp(-4*t);  % Eqn. (2.171)
% Graph exact and approximate solutions
tiledlayout(2,1);
nexttile;
plot(t,yExact,'-',t(1:3:length(t)),yApprox(1:3:length(t)),'ro'); grid;
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

function ydot = RCwithUnitStepInput(t,y)
  ydot = -4*y+4*(t>=0);
end  