% Script: mexct_2_8.m
syms y(t);                             % Declare y(t) to be a symbolic variable
eqn = diff(y,t,2)==-2*diff(y,t)-26*y;  % Diff. equation
Dy = diff(y,t);                        % Dy is the first derivative
cond = [y(0)==2, Dy(0)==13];           % Initial conditions
solution = dsolve(eqn,cond)            % Solve using dsolve()
fplot(solution,[0,3]); grid;           % Graph the solution