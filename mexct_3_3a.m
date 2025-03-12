% Script: mexct_3_3a.m
k = [-25:25];      % Create a vector of index values
k = k+eps;         % Avoid division by zero
ck = sin(pi*k/3)./(pi*k);   % Eqn. (3.371)
% Graph the line spectrum
stem(k,ck); 
axis([-25.5,25.5,-0.1,0.4]);
xlabel('Index k');
ylabel('Coefficient'); 