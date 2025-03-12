% Script: mexct_3_6b.m
N = 1000;          % Number of samples per period
T0 = 3;            % Fundamental period
t = [0:N-1]/N*T0;  % Vector of time instants
x = (t<=1);        % Describe one period of the signal
M = 10;            % Number of harmonics
[a0,a,b] = ss_tfsapprox(x,M);  % Compute approximate TFS coefficients
% Compute finite-harmonic approximation
t = [-6:0.01:6];   % Create new time vector for graphing
xHat = a0*ones(size(t));  % Vector for finite-harmonic approximation
omega0 = 2*pi/T0;  % Fundamental frequency in rad/s
for i = 1:M
  xHat = xHat+a(i)*cos(i*omega0*t)+b(i)*sin(i*omega0*t);  % Eqn. (3.47)  
end
plot(t,real(xHat)); grid;
title('Approximation using m=10 harmonics'); 
xlabel('Time (sec)');
ylabel('Amplitude');