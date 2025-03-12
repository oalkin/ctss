% Script: exct_3_14.m
f = [-4:0.01:4];  % Vector of frequencies
% Anonymous function to compute the transform of q(t)
Q = @(f,a) sinc(f*a);
% Graph the transform
tiledlayout(2,2);
nexttile;
plot(f,Q(f,2)); grid;
axis([-4,4,-0.25,1.25]);
xlabel('f (Hz)');
title('Q(f)  for  a=2');
nexttile;
plot(f,Q(f,1)); grid;
axis([-4,4,-0.25,1.25]);
xlabel('f (Hz)');
title('Q(f)  for  a=1');
nexttile;
plot(f,Q(f,0.2)); grid;
axis([-4,4,-0.25,1.25]);
xlabel('f (Hz)');
title('Q(f)  for  a=0.2');
nexttile;
plot(f,Q(f,0.1)); grid;
axis([-4,4,-0.25,1.25]);
xlabel('f (Hz)');
title('Q(f)  for  a=0.1');