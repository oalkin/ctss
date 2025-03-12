% Script: mexct_3_4a.m
k = [-25:25];      % Create a vector of index values
k = k+eps;         % Avoid division by zero
cReal = 1./(2*pi*k).*sin(2*pi*k/3);      % EFS coefficients (real part)
cImag = 1./(2*pi*k).*(cos(2*pi*k/3)-1);  % EFS coefficients (imag part)
cMag = abs(cReal+j*cImag);               % Magnitude
cPhs = angle(cReal+j*cImag);             % Phase
% Graph the line spectrum
tiledlayout(2,1);
nexttile;
stem(k,cMag);
axis([-25.5,25.5,-0.1,0.4]);
title('|c_{k}|');
xlabel('Index k'); 
ylabel('Magnitude'); 
nexttile;
stem(k,cPhs);
axis([-25.5,25.5,-4,4]);
title('\angle c_{k}');
xlabel('Index k');
ylabel('Phase (rad)');