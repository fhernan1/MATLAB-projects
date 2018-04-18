% 12.3	Write a short script to solve the system of linear equations:
% 	2x + 5y + 7z = 9
% 	3x + 2y + 3z = 2
% 	  x + 3y + 2z = 5
clear
clc

A = [2 5 7; 3 2 3; 1 3 2];
B = [9; 2; 5]
x = A\B
A*x