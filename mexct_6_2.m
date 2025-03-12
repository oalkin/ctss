% Script: mexct_6_2.m
nu = [0:0.005:1.1];
c2 = ss_chebpol(2);   % Polynomial coefficients
p2 = polyval(c2,nu);  % Evaluate polynomial
% Combine two lines into one for computing polynomial coefficients
% and evaluating the polynomial
p3 = polyval(ss_chebpol(3),nu);
p4 = polyval(ss_chebpol(4),nu);
p5 = polyval(ss_chebpol(5),nu);
p6 = polyval(ss_chebpol(6),nu);
plot(nu,p2,nu,p3,nu,p4,nu,p5,nu,p6); grid;
axis([0,1.1,-2,8]);
legend('N=2','N=3','N=4','N=5','N=6','Location','NorthWest');
title('Chebyshev polynomials for N=2,3,4,5,6'); 
xlabel('\nu');
ylabel('C_N(\nu)');