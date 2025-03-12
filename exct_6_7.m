% Script: exct_6_7.m
numLP = [0.6250];
denLP = [1,1.1542,1.4161,0.625];
[numBP,denBP] = lp2bp(numLP,denLP,sqrt(6),1)
% Graph magnitude and phase of the bandpass filter
omg = [-7:0.01:7];
HBP = freqs(numBP,denBP,omg);
tiledlayout(2,1);
nexttile;
plot(omg,abs(HBP)); grid;
axis([-7,7,-0.25,1.25]);
xlabel('\omega (rad/s)');
ylabel('Magnitude');
title('|H_{BP}(\omega)|');
nexttile;
plot(omg,angle(HBP)); grid;
axis([-7,7,-pi,pi]);
xlabel('\omega (rad/s)');
ylabel('Phase (rad)');
title('\angle H_{BP}(\omega)');