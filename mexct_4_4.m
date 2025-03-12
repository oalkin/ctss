% Script: mexct_4_4.m
num = [1,-1,-4,4];     % Numerator coefficients
den = [1,7,21,37,30];  % Denominator coefficients
% Compute zeros and poles of the transform
z = roots(num);
p = roots(den);
% Graph zeros and poles along with the axes
plot(real(z),imag(z),'o',real(p),imag(p),'x',...
     [-4,4],[0,0],'k:',[0,0],[-3,3],'k:');
axis([-4,4,-3,3]);
xlabel('\sigma');
ylabel('j\omega');