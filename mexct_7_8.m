% Script: mexct_7_8.m
time = [1:999]*1e-6;    % Vector of time instants
fc = 10000;             % Carrier frequency
fm = 1500;              % Single-tone message frequency
tau = 0.0001;           % Time constant for envelope detector
mu = 0.6;               % Modulation index
% Compute the AM waveform.
x_AM = (1+mu*cos(2*pi*fm*time)).*cos(2*pi*fc*time);
% Compute the ideal envelope.
x_env = abs(1+mu*cos(2*pi*fm*time));
% Compute the envelope detector output.
x_det = ss_envdet(x_AM,1e-6,tau);
% Graph the AM waveform, its envelope, and the detector output.
plot(1000*time,x_AM,1000*time,x_env,1000*time,x_det);
title('Envelope detector simulation');
ylabel('Amplitude');
xlabel('t (ms)');
legend('AM waveform','Ideal envelope','Detector output');