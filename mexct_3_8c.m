% Script: mexct_3_8c.m
% Set up an anonymous function for the system function
H = @(omg) 10./((26-omg.*omg)+j*2*omg);
t = [0:0.001:4];    % Vector of time instants
omg2 = 4*pi;        % Radian frequency of input signal
x2 = cos(omg2*t);   % Input signal
y2 = abs(H(omg2))*cos(omg2*t+angle(H(omg2)));  % Steady-state output
plot(t,x2,t,y2); grid;
xlabel('Time (sec)');
ylabel('Amplitude');
legend('x_{2}(t)','y_{2}(t)','Location','northeastoutside')