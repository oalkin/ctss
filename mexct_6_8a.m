% Script: mexct_6_8a.m
N = 3;                               % Filter order
omgL1 = 1;                           % Passband edge frequency
epsilon = 0.4;
Rp = 10*log10(1+epsilon^2);          % Passband ripple in dB
[num,den] = cheby1(N,Rp,omgL1,'s');  % Design the lowpass filter
omgB2 = 1.5;                         % Passband edge freq. for bp filter
omgB3 = 2.5;                         % Passband edge freq. for bp filter
omg0 = sqrt(omgB2*omgB3);            % Geometric ctr. freq. for trans.
B = (omgB3-omgB2)/omgL1;             % Parameter for transformation
[numbp,denbp] = lp2bp(num,den,omg0,B); 
tf(numbp,denbp)                      % Display system function
omg = [-10:0.01:10];                 % Vector of radian frequencies
H = freqs(numbp,denbp,omg);          % Evaluate system function
plot(omg,abs(H)); grid;              % Graph the magnitude response
axis([-10,10,-0.1,1.1]);
title('|H(\omega)|');
xlabel('\omega (rad/s)');
ylabel('Magnitude');