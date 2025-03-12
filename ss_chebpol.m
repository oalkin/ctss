function [c] = ss_chebpol(N)
  if (N==0)
    c = [1];       % Chebyshev polynomial of order 0
  elseif (N==1)
    c = [1,0];     % Chebyshev polynomial of order 1
  else
    cNm2 = [1];    % Chebyshev polynomial of order N-2
    cNm1 = [1,0];  % Chebyshev polynomial of order N-1
    for i = 2:N
      c = 2*conv([1,0],cNm1)-[0,0,cNm2];  % Eqn. (6.69)
      cNm2 = cNm1; % Update polynomial of order N-2
      cNm1 = c;    % Update polynomial of order N-1
    end
  end
end