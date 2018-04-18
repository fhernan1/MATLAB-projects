% 2.4 Write a script to compute the sum of the cubes of:
% a.	The first 10 numbers
% b.	The first 65 numbers
% c.	The sum of cubes from 100 through 150
clear
clc

% Hint: The sum of the cubes of the first n numbers is n^2 * (n+1)^2 / 4.
%% check the hint:
n = 5;
v = 1:n
v3 = v.^3
sv3 = sum(v3)
formula = n^2 * (n+1)^2 / 4

n = 10
sn3 = n^2 * (n+1)^2 / 4
n = 65
sn3 = n^2 * (n+1)^2 / 4
n = 100
sn100 = n^2 * (n+1)^2 / 4
n = 150
sn150 = n^2 * (n+1)^2 / 4
diff  = sn150 - sn100



