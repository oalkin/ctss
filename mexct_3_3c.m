% Script: mexct_3_3c.m
k = [-25:25];        % Create a vector of index values
ck = 1/3*sinc(k/3);  % Eqn. (3.371)
% Graph the line spectrum in polar format
tiledlayout(2,1);
nexttile;
stem(k,abs(ck));
axis([-25.5,25.5,-0.1,0.4]);
xlabel('Index k');
ylabel('Magnitude'); 
nexttile;
stem(k,angle(ck));
axis([-25.5,25.5,-4,4]);
xlabel('Index k');
ylabel('Phase (rad)');