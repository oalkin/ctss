% Script: mexct_6_3.m
N = 3;                                % Filter order
omega1 = 1;                           % Passband edge frequency
epsilon = 0.4;
Rp = 10*log10(1+epsilon^2);           % Passband ripple in dB
[num,den] = cheby1(N,Rp,omega1,'s');  % Design the filter
tf(num,den)                           % Display system function
omg = [-4:0.01:4];                    % Vector of radian frequencies
H = freqs(num,den,omg);               % Evaluate system function
tiledlayout(2,1);
nexttile;
plot(omg,abs(H)); grid;               % Graph the magnitude response
title('|H(\omega)|');
xlabel('\omega (rad/s)');
ylabel('Magnitude');
nexttile;
plot(omg,angle(H)); grid;             % Graph the phase response
title('\angle H(\omega)');
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');