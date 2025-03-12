% Script: mexct_6_7.m
N = 3;                               % Filter order
omgL1 = 1;                           % Passband edge frequency
epsilon = 0.4;
Rp = 10*log10(1+epsilon^2);          % Passband ripple in dB
[num,den] = cheby1(N,Rp,omgL1,'s');  % Design the lowpass filter
omgH2 = 3;                           % Passband edge freq. for hp filter
[numhp,denhp] = lp2hp(num,den,omgH2); 
tf(numhp,denhp)                      % Display system function
omg = [-7:0.01:7];                   % Vector of radian frequencies
H = freqs(numhp,denhp,omg);          % Evaluate system function
plot(omg,abs(H)); grid;              % Graph the magnitude response
axis([-7,7,-0.1,1.1]);
title('|H(\omega)|');
xlabel('\omega (rad/s)');
ylabel('Magnitude');