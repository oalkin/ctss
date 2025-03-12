% Script: mexct_7_1.m
Ac = 2;
Mu = 0.7;
fc = 25000;
fm = 2000;
t = [0:1e-6:1e-3];   % Vector of time instants
% Compute the AM signal
x_am = Ac*(1+Mu*cos(2*pi*fm*t)).*cos(2*pi*fc*t);  % Eqn. (7.8)
% Compute the envelope
x_env = abs(Ac*(1+Mu*cos(2*pi*fm*t)));            % Eqn. (7.9)
% Graph the AM signal and the envelope
plot(t,x_am,'-',t,x_env,'m--');
grid;
title('Tone modulated AM signal and its envelope');
xlabel('Time (sec)');
ylabel('Amplitude');
legend('AM signal','Envelope');