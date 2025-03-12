function [A,B,C,d] = ss_tf2ss(num,den)
  nden = length(den);   % Size of denominator vector
  N = nden - 1;         % Order of the system
  % If 'num' has fewer elements than 'den', put zeros in front.
  while (length(num)<nden)
    num = [0,num];
  end;  
  % Divide all coefficients by leading denominator coefficient
  num = num/den(1);
  den = den/den(1);
  num = fliplr(num);    % Reorder numerator coefficients
  den = fliplr(den);    % Reorder denominator coefficients
  A = [zeros(N-1,1),eye(N-1);-den(1:N)];  % Eqn. (5.45)
  B = [zeros(N-1,1);1];                   % Eqn. (5.45)
  C = num(1:N)-num(N+1)*den(1:N);         % Eqn. (5.46)
  d = num(N+1);                           % Eqn. (5.46)
end