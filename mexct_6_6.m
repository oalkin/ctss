% Script: mexct_6_6.m
omg1 = 2;                               % Passband edge frequency
omg2 = 2.5;                             % Stopband edge frequency
Rp = 3;                                 % Passband ripple in dB
As = 30;                                % Stopband attenuation in dB
[N,omg1] = ellipord(omg1,omg2,Rp,As,'s');  % Compute necessary filter order
[num,den] = ellip(N,Rp,As,omg1,'s');    % Design the filter
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