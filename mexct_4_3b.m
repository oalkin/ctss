% Script: mexct_4_3b.m
Xs = @(s) (s+1)./(s.^2+4);
omg = [-4:0.005:4];
Xomg = Xs(j*omg);
plot(omg,abs(Xomg)); grid;