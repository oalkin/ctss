% Script: mexct_6_10a.m
Rp = 3;
As = 25;
fp = [2,3];         % Passband edge frequencies in Hz
fs = [1.5,3.5];     % Stopband edge frequencies in Hz
Wp = 2*pi*fp;       % Passband edge frequencies in rad/s
Ws = 2*pi*fs;       % Stopband edge frequencies in rad/s
f = [0:0.005:7];    % Set vector of frequencies for graphing
omg = 2*pi*f;
% Elliptic filter
[N,Wp] = ellipord(Wp,Ws,Rp,As,'s');   % Compute elliptic filter parameters
[zrs,pls,gain] = ellip(N,Rp,As,Wp,'s');    % Design elliptic filter
[sos,gain] = zp2sos(zrs,pls,gain);         % Convert to SOS format
H4dB = dBMagnitudeFromSOS(sos,gain,omg);   % Compute dB magnitude
% Graph the results
plot(f,H4dB); grid;
axis([0,7,-40,5]);
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');

function HdB = dBMagnitudeFromSOS(sos,gain,omg)
  % Function to compute dB magnitude from SOS matrix.
  [nRows,nCols] = size(sos);               % Get the size of SOS matrix
  HdB = 20*log10(gain)*ones(size(omg));    % Start with gain factor
  for k = 1:nRows      
    num = sos(k,1:3);  % Numerator polynomial of section k
    den = sos(k,4:6);  % Denominator polynomial of section k
    HdB = HdB + dBMagnitude(num,den,omg);  % Add the contribution
  end
end

function HdB = dBMagnitude(num,den,omg)
  % Function to compute dB magnitude from numerator and denominator
  H = freqs(num,den,omg);
  HdB = 20*log10(abs(H));
end