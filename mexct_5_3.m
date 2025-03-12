% Script: mexct_5_3.m
A = [-1,-1,0; 1,0,-1; 5,7,-6];  % Construct matrix 'A'
t = [0:0.01:4];                 % Vector of time instants 
phi12 =[];                      % Placeholder for row-1 column-2 element
% Compute the STM for each element in vector 't'
for i=1:length(t)
  time = t(i);                  % Pick a time instant
  stm = expm(A*time);           % Compute the STM at time instant t(i)
  phi12 = [phi12,stm(1,2)];     % Append to vector 'phi12'
end;
% Graph element (1,2) of the STM
plot(t,phi12); grid;
title('Element 1,2 of the state transition matrix');
xlabel('t (sec)');