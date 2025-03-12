% Script: mexct_6_9.m
Rp = 3;
As = 25;
fp = [2,3];         % Passband edge frequencies in Hz
fs = [1.5,3.5];     % Stopband edge frequencies in Hz
Wp = 2*pi*fp;       % Passband edge frequencies in rad/s
Ws = 2*pi*fs;       % Stopband edge frequencies in rad/s
f = [0:0.005:7];    % Set vector of frequencies for graphing
omg = 2*pi*f;
% Butterworth filter
[N,Wn] = buttord(Wp,Ws,Rp,As,'s');   % Compute Butterworth parameters
[num1,den1] = butter(N,Wn,'s');      % Design Butterworth filter
H1 = tf(num1,den1)
H1dB = dBMagnitude(num1,den1,omg);
% Chebyshev type-I filter
[N,Wp] = cheb1ord(Wp,Ws,Rp,As,'s');  % Compute Chebyshev type-I parameters
[num2,den2] = cheby1(N,Rp,Wp,'s');   % Design Chebyshev type-I filter
H2 = tf(num2,den2)
H2dB = dBMagnitude(num2,den2,omg);
% Chebyshev type-II filter
[N,Ws] = cheb2ord(Wp,Ws,Rp,As,'s');  % Compute Chebyshev type-II parameters
[num3,den3] = cheby2(N,As,Ws,'s');   % Design Chebyshev type-II filter
H3 = tf(num3,den3)
H3dB = dBMagnitude(num3,den3,omg);
% Elliptic filter
[N,Wp] = ellipord(Wp,Ws,Rp,As,'s');  % Compute elliptic filter parameters
[num4,den4] = ellip(N,Rp,As,Wp,'s'); % Design elliptic filter
H4 = tf(num4,den4)
H4dB = dBMagnitude(num4,den4,omg);
% Graph the results
p = plot(f,H1dB,f,H2dB,f,H3dB,f,H4dB); grid;
axis([0,7,-40,5]);
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
legend('Butterworth','Chebyshev type-I','Chebyshev type-II','Elliptic',...
    'Location','NorthEast');

function HdB = dBMagnitude(num,den,omg)
  % Function to compute dB magnitude from numerator and denominator
  H = freqs(num,den,omg);
  HdB = 20*log10(abs(H));
end