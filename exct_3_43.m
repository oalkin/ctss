% Script: exct_3_43.m
R = 1;
C = 1;
omg = [-5:0.01:5];     % Vector of frequency values
H = 1./(1+j*omg*R*C);  % Evaluate the system function
% Graph the magnitude and the phase of the system function.
tiledlayout(2,1);
nexttile;
plot(omg,abs(H)); grid;
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)|');
nexttile;
plot(omg,angle(H)); grid;
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle H(\omega)');