% Script: mexct_3_8b.m
% Set up an anonymous function for the system function
H = @(omg) 10./((26-omg.*omg)+j*2*omg);
t = [0:0.001:4];    % Vector of time instants
omg1 = 2*pi;        % Radian frequency of input signal
x1 = cos(omg1*t);   % Input signal
y1 = abs(H(omg1))*cos(omg1*t+angle(H(omg1)));  % Steady-state output
plot(t,x1,t,y1); grid;
xlabel('Time (sec)');
ylabel('Amplitude');
legend('x_{1}(t)','y_{1}(t)','Location','northeastoutside')