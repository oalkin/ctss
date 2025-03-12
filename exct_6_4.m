% Script: exct_6_4.m
% Set design parameters
epsilon = 0.4;
omg1 = 1;  % Critical frqequency
N = 3;     % Filter order
% Create a vector of indices for the Chebyshev filter poles.
k = [0:2*N-1];
% Compute parameters
alpha_k = (2*k+1)*pi/6
beta_k = asinh(1/epsilon)/3
% Compute poles of H(s)H(-s)
theta_k = alpha_k+j*beta_k;
pk = j*cos(theta_k)
% Compute denominator coefficients
den = real(conv([1,-pk(5)],conv([1,-pk(4)],[1,-pk(6)])))
% Compute the frequency response
num = den(4);  % Adjust for unit gain at dc
omg = [-4:0.01:4];
H = freqs(num,den,omg);
% Graph the magnitude and the phase of the frequency response
tiledlayout(2,1);
nexttile;
plot(omg,abs(H)); grid;
axis([-4,4,0,1.2]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)|');
nexttile;
plot(omg,angle(H)); grid;
axis([-4,4,-pi,pi]);
xlabel('\omega (rad/s)');
ylabel('Phase');
title('\angle H(\omega)');