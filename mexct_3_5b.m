% Script: mexct_3_5b.m
N = 500;                % Number of samples per period
T0 = 3;                 % Fundamental period
t = [0:N-1]/N*T0;       % Vector of time instants
x = (t<=0.5)|(t>=2.5);  % Describe one period of the signal
k = [-35:35];           % Vector of desired EFS coefficient indices
c = ss_efsapprox(x,k);  % Compute approximate EFS coefficients
% Compute finite-harmonic approximation
t = [-5:0.001:5];       % Create new time vector for graphing
xHat = zeros(size(t));  % Create vector for finite-harmonic approximation
omega0 = 2*pi/T0;       % Fundamental frequency in rad/s
for i = 1:length(k)
  kk = k(i);
  xHat = xHat+c(i)*exp(j*kk*omega0*t);  % Eqn. (3.72)
end
plot(t,real(xHat)); grid;
title('Approximation using m=35 harmonics'); 
xlabel('Time (sec)');
ylabel('Amplitude');