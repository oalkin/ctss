% Script: mexct_4_8c.m
zrs = [0,1];       % Zeros of the system function
pls = [-1,-2,-3];  % Poles of the system function
% Create a system object using locations of zeros and poles
sys2 = zpk(zrs,pls,10)
% Compute the response to sinusoidal input signal
t = [0:0.01:3];    % Vector of time instants
x = cos(4*pi*t);
[y,t] = lsim(sys2,x,t);
% Graph the input and the output signals together
plot(t,x,t,y); grid;
xlabel('t (sec)');
ylabel('Amplitude');
legend('Input signal','Output signal');