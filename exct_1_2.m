% Script: exct_1_2.m
t=[-1:0.005:5];    % Vector of time instants
% Compute x1
x1 = 2*((t>=0)&(t<1))+((t>=1)&(t<2))-((t>=2)&(t<3));
% Compute x2
x2 = 0.5*t.*((t>=0)&(t<2))+(-2*t+5).*((t>=2)&(t<3))+(t-4).*((t>=3)&(t<4));
g1 = x1+x2;
g2 = x1.*x2;
% Graph the results
tiledlayout(2,2);
nexttile;
plot(t,x1); grid;
axis([0,5,-3,3]);
xlabel('t (sec)');
ylabel('Amplitude');
title('x_{1}(t)');
nexttile;
plot(t,x2); grid;
axis([0,5,-3,3]);
xlabel('t (sec)');
ylabel('Amplitude');
title('x_{2}(t)');
nexttile;
plot(t,g1); grid;
axis([0,5,-3,3]);
xlabel('t (sec)');
ylabel('Amplitude');
title('g_{1}(t)=x_{1}(t)+x_{2}(t)');
nexttile;
plot(t,g2); grid;
axis([0,5,-3,3]);
xlabel('t (sec)');
ylabel('Amplitude');
title('g_{2}(t)=x_{1}(t) x_{2}(t)');