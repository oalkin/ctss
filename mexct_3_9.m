% Script: mexct_3_9.m
N = 500;                % Number of samples per period
T0 = 3;                 % Fundamental period
t = [0:N-1]/N*T0;       % Vector of time instants
x = (t<=0.5)|(t>=2.5);  % Describe one period of the signal
k = [-35:35];           % Vector of desired EFS coefficient indices
c = ss_efsapprox(x,k);  % Compute approximate EFS coefficients
omega0 = 2*pi/T0;       % Fundamental frequency in rad/s
% Set up an anonymous function for the system function
H = @(omg) 10./((26-omg.*omg)+j*2*omg);
% Use the system function to modify EFS coefficients
d = c.*H(k*omega0).';   % EFS coefficients for the output signal
% Compute finite-harmonic approximation for the output signal
t = [-5:0.001:5];       % Create new time vector for graphing
yHat = zeros(size(t));  % Create vector for finite-harmonic approximation
for i = 1:length(k)
  kk = k(i);
  yHat = yHat+d(i)*exp(j*kk*omega0*t);  % Eqn. (3.358)
end
plot(t,real(yHat)); grid;
title('Steady-state output signal using m=35 harmonics'); 
xlabel('Time (sec)');
ylabel('Amplitude');