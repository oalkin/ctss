% Script: exct_5_16.m
% Set state-space model
A = [-2,-2;1,-5];
B = [1;0];
C = [0,5];
d = 0;
[P,A_bar] = eig(A)  % P has the eigenvectors, 
                    % A_bar is the diagonal state matrix
B_bar = inv(P)*B
C_bar = C*P
% Note: The vectors B_bar and C_bar do not match the ones found in Example
% 5.16, yet they are still valid.  Keep in mind that the two eigenvectors
% can each be scaled by any arbitrary constant.  For eigenvalues, the only
% thing that matters is the direction.
% Let us try a modified transformation matrix P2:
P2 = P*[1/0.4472,0;0,1/0.7071]
A_bar = inv(P2)*A*P2
B_bar = inv(P2)*B
C_bar = C*P2