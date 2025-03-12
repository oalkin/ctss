% Script: mexct_4_2a.m
% Define an anonymous function for the Laplace transform
Xs = @(s) (s+0.5)./((s+0.5).^2+4*pi*pi);
omg = [-15:0.05:15];  % Vector of radian frequencies
% Compute the Fourier transform by evaluating X(s)
Xomg = Xs(j*omg);
% Graph the magnitude and the phase of the Fourier transform
tiledlayout(2,1);
nexttile;
plot(omg,abs(Xomg)); grid;
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)|');
nexttile;
plot(omg,angle(Xomg)); grid;
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle H(\omega)');