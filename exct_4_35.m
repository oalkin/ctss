% Script: exct_4_35.m
num = [1,0,1];      % Numerator coefficients
den = [1,5,17,13];  % Denominator coefficients
% Compute zeros and poles of X(s)
z = roots(num);
p = roots(den);
% Graph zeros and poles
plot(real(z),imag(z),'o',real(p),imag(p),'x'); grid;
axis([-3,1,-4,4]);
xlabel('\sigma');
ylabel('j\omega');