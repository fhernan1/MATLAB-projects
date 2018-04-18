% 8.2	You are provided with a file data.xls, which contains two columns
% of numbers. Each column contains 1371 elements, starting from row 1.
% Create a script that does the following:
% •	The first column, A, represents your x values; read these numbers from
% the file and save to a vector called xData
% •	Column B is your y values; read the numbers from the file and save them
% in the vector yData
% •	Make a plot of the x versus y values, and title your plot Excel Plot
% Hint: See help xlsread() to learn how the xlsread() function reads in
% data from .xls files. 
clear
clc
a = xlsread('data.xls');
x = a(:,1)';
y = a(:,2)';
plot(x, y)
title('Excel Plot')
