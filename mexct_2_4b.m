% Script: mexct_2_4b.m
Ts = 0.02;         % Time increment
t = [0:Ts:1];      % Vector of time instants
% Compute the exact solution.
y = 1-exp(-4*t);   % Eqn. (2.52)
% Compute the approximate solution using Euler method
yhat = zeros(size(t));
yhat(1) = 0;      % Initial value.
for k = 1:length(yhat)-1,
  g = -4*yhat(k)+4;          % Eqn. (2.167)
  yhat(k+1) = yhat(k)+Ts*g;  % Eqn. (2.170)
end;
% Graph exact and approximate solutions
clf;
tiledlayout(2,1);
nexttile;
plot(t,y,'-',t,yhat,'ro'); grid;
axis([0,1,0,1]);
title('Exact and approximate solutions for RC circuit');
xlabel('Time (sec)');
ylabel('Amplitude');
legend('Exact solution','Approximate solution',...
  'Location','SouthEast');
% Compute and graph the percent approximation error
err_pct = (yhat-y)./y*100;
nexttile;
plot(t(2:length(t)),err_pct(2:length(t)),'ro--'); grid
axis([0,1,0,25])
title('Percent approximation error');
xlabel('Time (sec)');
ylabel('Error (%)');