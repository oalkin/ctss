% Script: exct_5_13.m
% Set state-space model
A = [-2,-2;1,-5];
B = [1;0];
C = [0,5];
D = [0];
% Using symbolic math, compute the resolvent matrix
s = sym('s');
tmp = s*eye(2)-A;
rsm = inv(tmp)
% Find the Laplace transform of the state vector
Xs = rsm*[3;-2]+rsm*B/s
% Find the state vector using inverse Laplace transform
xt = ilaplace(Xs)
% Find the output signal symbolically
yt = C*xt
% Evaluate and graph the output signal
t = [0:0.003:3];
y = subs(yt,'t',t);
plot(t,y); grid;
xlabel('t');
title('y(t)');