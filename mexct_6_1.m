% Script: mexct_6_1.m
[num,den] = butter(4,3,'s');  % N = 4, cutoff frequency = 3 rad/s
tf(num,den)                   % Display system function
omg = [-8:0.01:8];            % Vector of radian frequencies
H = freqs(num,den,omg);       % Evaluate system function
tiledlayout(2,1);
nexttile;
plot(omg,abs(H)); grid;       % Graph the magnitude
title('|H(\omega)|');
xlabel('\omega (rad/s)');
ylabel('Magnitude');
nexttile;
plot(omg,angle(H)); grid;     % Graph the phase
title('\angle H(\omega)');
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');