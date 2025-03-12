% Script: mexct_4_3a.m
Xs = @(s) (s+1)./(s.^2+4);
omg = [-4:0.04:4];
Xomg = Xs(j*omg);
plot(omg,abs(Xomg)); grid;