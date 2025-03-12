% Script: exct_6_5.m
% Set design parameters
epsilon = 0.2;
omg2 = 3;  % Critical frqequency
N = 3;     % Filter order
% Create a vector of indices for the Chebyshev filter poles.
k = [0:2*N-1];
% Compute parameters
alpha_k = (2*k+1)*pi/(2*N)
beta = asinh(1/epsilon)/N
% Compute poles of H(s)H(-s)
pk = j*omg2./(cos(alpha_k)*cosh(beta)-j*sin(alpha_k)*sinh(beta))
% Find zeros of H(s)
k = [1:(N-1)/2]';
zk = j*omg2./cos((2*k-1)*pi/(2*N));
zk = [zk;-zk]
% Compute denominator coefficients
den = real(conv([1,-pk(1)],conv([1,-pk(2)],[1,-pk(3)])))
% Compute numerator coefficients
num = real(conv([1,-zk(1)],[1,-zk(2)]))
% Compute the frequency response
num = num*den(4)/num(3)  % Adjust for unit gain at dc
omg = [-8:0.01:8];
H = freqs(num,den,omg);
% Graph the magnitude and the phase of the frequency response
tiledlayout(2,1);
nexttile;
plot(omg,abs(H)); grid;
axis([-8,8,0,1.2]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H(\omega)|');
nexttile;
plot(omg,angle(H)); grid;
axis([-8,8,-pi,pi]);
xlabel('\omega (rad/s)');
ylabel('Phase');
title('\angle H(\omega)');