% Script: exct_3_8b.m
a = 1;
k = [-20:20]+0.001;  % Avoid division by zero at k=0.
% Compute the EFS coefficients
c = a*(-exp(-j*2*pi*k)./(j*2*pi*k)+(exp(-j*2*pi*k)-1)./(4*pi*pi*k.*k));
% Approximate the signal using EFS terms up to the 20th harmonic.
t = [-3:0.01:3];
xhat = zeros(size(t));
for kk = -20:20
  xhat = xhat+c(kk+21)*exp(j*2*pi*kk*t);
end
xhat = real(xhat);
plot(t,xhat);
xlabel('t (sec)');
title('Finite-harmonic approximation for Example 3.8');