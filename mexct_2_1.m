% Script: mexct_2_1.m
t = [0:0.01:4];               % Create a time vector
x1 = cos(2*pi*5*t);           % Test signal 1
x2 = exp(-0.5*t);             % Test signal 2
alpha1 = 2;                   % Set parameters alpha1
alpha2 = 1.25;                %   and alpha2
x = alpha1*x1+alpha2*x2;      % Combined signal
% Define anonymous functions for the systems in Example 2-1
sys_a = @(x) 5*x;
sys_b = @(x) 5*x+3;
sys_c = @(x) 3*x.*x;
sys_d = @(x) cos(x);
% Test the system in part (a) of Example 2-1
y1 = sys_a(x1);
y2 = sys_a(x2);
yExp = alpha1*y1+alpha2*y2;   % Expected response for a linear system
yAct = sys_a(x);              % Actual response
tiledlayout(1,2);       
nexttile;
plot(t,yExp); grid;           % Graph expected response
title('y_{Exp} = \alpha_1 y_1 + \alpha_2 y_2') 
xlabel('t (sec)');
ylabel('Amplitude');
nexttile;
plot(t,yAct); grid;           % Graph actual response   
title('y_{Act} = Sys_a\{\alpha_1 x_1 + \alpha_2 x_2\}') 
xlabel('t (sec)');
ylabel('Amplitude');