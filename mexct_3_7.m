% Script: mexct_3_7.m
R = 1e6;
C = 1e-6;
fc = 1/(2*pi*R*C);    % The critical frequency
f = [-1:0.01:1];      % Vector of frequency values
Hf = 1./(1+j*f/fc);   % Evaluate system function using Eqn. (3.333)
% Graph the magnitude and the phase of the system function
tiledlayout(2,1);
nexttile;
plot(f,abs(Hf)); grid;
axis([-1,1,-0.2,1.2]);
ylabel('Magnitude');
xlabel('Frequency (Hz)');
nexttile;
plot(f,angle(Hf)); grid;
ylabel('Phase (rad)');
xlabel('Frequency (Hz)');