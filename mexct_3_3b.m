% Script: mexct_3_3b.m
k = [-25:25];         % Create a vector of index values
ck = 1/3*sinc(k/3);   % Eqn. (3.371)
% Graph the line spectrum
stem(k,ck); 
axis([-25.5,25.5,-0.1,0.4]);
xlabel('Index k');
ylabel('Coefficient'); 