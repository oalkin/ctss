% Script: mexct_6_10b.m
Rp = 3;
As = 25;
fp = [2,3];         % Passband edge frequencies in Hz
fs = [1.5,3.5];     % Stopband edge frequencies in Hz
Wp = 2*pi*fp;       % Passband edge frequencies in rad/s
Ws = 2*pi*fs;       % Stopband edge frequencies in rad/s
% Elliptic filter
[N,Wp] = ellipord(Wp,Ws,Rp,As,'s');   % Compute elliptic filter parameters
[zrs,pls,gain] = ellip(N,Rp,As,Wp,'s');   % Design elliptic filter
[sos,gain] = zp2sos(zrs,pls,gain);        % Convert to SOS format
[nRows,nCols] = size(sos);
for k = 1:nRows      
  num = sos(k,1:3);       % Numerator polynomial of section k
  den = sos(k,4:6);       % Denominator polynomial of section k
  section = tf(num,den)   % Display system function for section k
end