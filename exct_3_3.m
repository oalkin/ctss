% Script: exct_3_3.m
a0 = 1/3;          % Set the dc term
% Set TFS coefficients
k = [1:20];
ak = 2*sin(pi*k/3)./(pi*k);
t = [-6:0.01:6];   % Vector of time instants
omg0 = 2*pi/3;     % Fundamental frequency
% Compute an approximation to the signal using up to 10th harmonic
xtilde = a0;
for kk=1:10
  xtilde = xtilde+ak(kk)*cos(kk*omg0*t);  
end
% Graph the finite-harmonic approximation.
plot(t,xtilde); grid;
xlabel('t');
title('Finite-harmonic approximation to x(t)');