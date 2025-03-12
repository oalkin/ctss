function [a0,a,b] = ss_tfsapprox(x,M)
  k = [-M:M];
  c = ss_efsapprox(x,k);  % Start with EFS coefficients
  a0 = real(c(M+1));      % Constant term is in the middle of vector 'c'
  a = zeros(M,1);         % Create a vector for 'a' coefficients
  b = zeros(M,1);         % Create a vector for 'b' coefficients
  for i=1:M
    a(i) = real(c(M+1+i)+c(M+1-i));      % Eqn. (3.59)
    b(i) = real(j*(c(M+1+i)-c(M+1-i)));  % Eqn. (3.60)
  end
end