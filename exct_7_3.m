% Script: exct_7_3.m
% Set parameters.
Ac = 4.648;  % Carrier amplitude
fc = 1000;   % Carrier frequency (in Hz)
fm1 = 100;   % Message frequency #1 (in Hz)
fm2 = 200;   % Message frequency #2 (in Hz)
t = [0:0.02:20]*1e-3;  % Vector of time instants
% Compute the message signal
m = 3*cos(2*pi*fm1*t-pi/6)+2*sin(2*pi*fm2*t);
% Compute the AM signal
x_am = (Ac+m).*cos(2*pi*fc*t);
% Compute the envelope
x_env = abs(Ac+m);
% Graph message signal and the AM signal with envelope
tiledlayout(2,1);
nexttile;
plot(1000*t,m); grid;
xlabel('t (ms)');
ylabel('Amplitude');
title('Message signal  m(t)');
nexttile;
plot(1000*t,x_am,'-',1000*t,x_env,'m--'); grid;
xlabel('t (ms)');
ylabel('Amplitude');
title('Tone modulated AM signal x_{AM}(t) and its envelope');
legend('AM signal','Envelope');