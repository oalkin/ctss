% Script: exct_3_4a.m
A = 1;   % Pulse amplitude
T0 = 1;  % Pulse period
% Set TFS coefficients
k = [1:20];
bk = zeros(size(k));
k2 = [1:2:19];   % Odd indices
bk(k2) = 4*A./(pi*k2);
t=[-2:0.01:6];   % Vector of time instants
omg0 = 2*pi/T0;  % Fundamental frequency
% Compute an approximation to the signal using up to 3rd harmonic
xtilde = 0;
for kk=1:3,
  xtilde = xtilde+bk(kk)*sin(kk*omg0*t);  
end;
% Graph the finite-harmonic approximation
plot(t,xtilde); grid;