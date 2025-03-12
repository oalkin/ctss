% Script: mexct_2_2.m
t = [0:0.01:10];               % Create a time vector
x = @(t) exp(-0.5*t).*(t>=0);  % Anonymous function for test signal
% Define anonymous functions for the systems in Example 2.2
sys_a = @(x) 5*x;
sys_b = @(x) 3*cos(x);
sys_c = @(x) 3*cos(t).*x;
% Test the system in part (c) of Example 2.2
y1 = sys_c(x(t));
y2 = sys_c(x(t-2));
plot(t,y1,'b-',t,y2,'r-'); grid;   % Graph the two responses
title('Responses to x(t) and x(t-2)') 
xlabel('t (sec)');
ylabel('Amplitude');
legend('Sys\{x(t)\}','Sys\{x(t-2)\}');