% Script: mexct_2_4a.m
Ts = 0.1;          % Time increment
t = [0:Ts:1];      % Vector of time instants
% Compute the exact solution
y = 1-exp(-4*t);   % Eqn. (2.52)
% Compute the approximate solution using Euler method
yHat = zeros(size(t));
yHat(1) = 0;      % Initial value.
for k = 1:length(yHat)-1,
  g = -4*yHat(k)+4;          % Eqn. (2.167)
  yHat(k+1) = yHat(k)+Ts*g;  % Eqn. (2.170)
end;
% Graph exact and approximate solutions
tiledlayout(2,1);
nexttile;
plot(t,y,'-',t,yHat,'ro--'); grid;
axis([0,1,0,1]);
title('Exact and approximate solutions for RC circuit');
xlabel('Time (sec)');
ylabel('Amplitude');
legend('Exact solution','Approximate solution',...
  'Location','SouthEast');
% Compute and graph the percent approximation error
nexttile;
err_pct = (yHat-y)./y*100;
plot(t(2:length(t)),err_pct(2:length(t))); grid;
axis([0,1,0,25])
title('Percent approximation error');
xlabel('Time (sec)');
ylabel('Error (%)');