% Script: mexct_4_11.m
syms s t Ys
xt = heaviside(t)-heaviside(t-2);  % x(t)=u(t)-u(t-2)
Xs = laplace(xt);                  % Laplace transform of x(t)
Y1 = s*Ys+2;                       % Laplace transform of dy/dt  
Ys = solve(Y1+4*Ys-4*Xs,Ys);       % Solve for Y(s)
yt = ilaplace(Ys)                  % Inv. Laplace transform of Y(s)
fplot(yt,[0,5]); grid;
axis([0,5,-2.5,1.5]);