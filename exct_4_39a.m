% Script: exct_4_39a.m
num = [1,1];    % Numerator coefficients
den = [1,2,2];  % Denominator coefficients
% Compute zeros and poles of H(s).
z = roots(num);
p = roots(den);
% Graph zeros and poles
plot(real(z),imag(z),'o',real(p),imag(p),'x'); grid;
axis([-2,1,-2,2]);
xlabel('\sigma');
ylabel('j\omega');