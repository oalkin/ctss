% Script: exct_3_8a.m
a = 1;
k = [-20:20]+0.001;  % Avoid division by zero at k=0
% Compute the EFS coefficients
c = a*(-exp(-j*2*pi*k)./(j*2*pi*k)+(exp(-j*2*pi*k)-1)./(4*pi*pi*k.*k));
% Graph the magnitude and the phase of the line spectrum
tiledlayout(2,1);
nexttile;
stem(k,abs(c));
axis([-20,20,0,0.6]);
xlabel('Harmonic index');
ylabel('Magnitude');
title('|c_{k}|');
nexttile;
stem(k,angle(c));
axis([-20,20,-pi,pi]);
xlabel('Harmonic index');
ylabel('Phase (rad)');
title('\angle c_{k}');