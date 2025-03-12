% Script: mexct_6_5.m
omega1 = 3;                             % Passband edge frequency
omega2 = 4;                             % Stopband edge frequency
Rp = 1;                                 % Passband ripple in dB
As = 30;                                % Stopband attenuation in dB
N = cheb2ord(omega1,omega2,Rp,As,'s');  % Compute necessary filter order
[num,den] = cheby2(N,As,omega2,'s');    % Design the filter
tf(num,den)                             % Display system function
omg = [-7:0.01:7];                      % Vector of radian frequencies
H = freqs(num,den,omg);                 % Evaluate system function
tiledlayout(2,1);
nexttile;
plot(omg,20*log10(abs(H))); grid;       % Graph the dB magnitude
axis([-7,7,-60,10]);
title('|H(\omega)|');
xlabel('\omega (rad/s)');
ylabel('Magnitude (dB)');
nexttile;
plot(omg,angle(H)); grid;               % Graph the phase
axis([-7,7,-4,4]);
title('\angle H(\omega)');
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');