% Script: exct_7_8.m
Am = 2;      % Amplitude
fc = 25000;  % Carrier frequency (in Hz)
fm = 2000;   % Message frequency (in Hz)
t = [0:999]*1e-6;  % Vector of time instants
% Compute the DSB signal
x_dsb = Am*cos(2*pi*fm*t).*cos(2*pi*fc*t); % Eqn. (7.70)
% Compute the envelope
x_env = abs(Am*cos(2*pi*fm*t));            % Eqn. (7.71)
% Graph the DSB signal and the envelope
plot(1000*t,x_dsb,'-',1000*t,x_env,'m--'); grid;
xlabel('t (ms)');
ylabel('Amplitude');
title('Tone modulated DSB signal and its envelope');
legend('DSB signal','Envelope');