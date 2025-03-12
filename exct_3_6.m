% Script: exct_3_6.m
% Set EFS coefficients
k = [-20:20]+eps;  % Avoid division by zero at k=0
ck = -1./(j*2*pi*k).*(exp(-j*2*pi*k/3)-1)
% Graph the magnitude and the phase of the line spectrum
tiledlayout(2,1);
nexttile;
stem(k,abs(ck));
xlabel('Harmonic index');
ylabel('Magnitude');
title('|c_{k}|');
nexttile;
stem(k,angle(ck));
xlabel('Harmonic index');
ylabel('Phase (rad)');
title('\angle c_{k}');