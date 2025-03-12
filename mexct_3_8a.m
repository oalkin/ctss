% Script: mexct_3_8a.m
% Set up an anonymous function for the system function
H = @(omg) 10./((26-omg.*omg)+j*2*omg);
f = [-4:0.01:4];  % Vector of frequencies in Hz
omg = 2*pi*f;     % Vector of frequencies in rad/s
% Graph magnitude and phase of the system function
tiledlayout(2,1);
nexttile;
plot(f,abs(H(omg))); grid
xlabel('f (Hz)');
ylabel('Magnitude');
nexttile;
plot(f,angle(H(omg))); grid;
xlabel('f (Hz)');
ylabel('Phase (rad)');