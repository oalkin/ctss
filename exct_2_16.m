% Script: exct_2_16.m
t = [0:0.01:3];   % Vector of time instants
% Compute the transient response using Eqn. (2.107)
yt = 4*exp(-4*t);
% Compute the steady-state response using Eqn. (2.108)
yss = cos(8*t)+2*sin(8*t);
% Compute the forced response as the sum of the two
y = yt+yss;
% Graph the three signals
tiledlayout(3,1);
nexttile;
plot(t,yt); grid;
axis([0,3,-4,5.5]);
title('Transient response y_t(t) for Example 2.16');
xlabel('t (sec)'); 
ylabel('Amplitude');
nexttile;
plot(t,yss); grid;
axis([0,3,-4,5.5]);
title('Steady-state y_{ss}(t) for Example 2.16');
xlabel('t (sec)'); 
ylabel('Amplitude');
nexttile;
plot(t,y); grid;
axis([0,3,-4,5.5]);
title('Forced response y(t)=y_t(t)+y_{ss}(t) for Example 2.16');
xlabel('t (sec)'); 
ylabel('Amplitude');