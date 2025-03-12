% Script: mexct_6_8b.m
N = 3;                               % Filter order
omgL1 = 1;                           % Passband edge frequency
epsilon = 0.4;
Rp = 10*log10(1+epsilon^2);          % Passband ripple in dB
[num,den] = cheby1(N,Rp,omgL1,'s');  % Design the lowpass filter
omgS1 = 1;                           % Stopband edge freq. for bs filter
omgS4 = 3.5;                         % Stopband edge freq. for bs filter
omg0 = sqrt(omgS1*omgS4);            % Geometric ctr. freq. for trans.
B = (omgS4-omgS1)*omgL1;             % Parameter for transformation
[numbs,denbs] = lp2bs(num,den,omg0,B);
tf(numbs,denbs)                      % Display system function
omg = [-10:0.01:10];                 % Vector of radian frequencies
H = freqs(numbs,denbs,omg);          % Evaluate system function
plot(omg,abs(H)); grid;              % Graph the magnitude response
axis([-10,10,-0.1,1.1]);
title('|H(\omega)|');
xlabel('\omega (rad/s)');
ylabel('Magnitude');