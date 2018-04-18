% 3.7	Write a single MATLAB statement that does each of the following:
% a.	Creates a plot of the square root of all the odd numbers from 1 to 99. 
% The values on the y-axis should line up with the appropriate places on the x-axis.
% b.	Multiply all the even columns of all the odd rows of a 10x10 array called A by 2.
% c.	Given a vector X, return the number of positive elements in X.
clear
clc
A = magic(10)
x = rand(1,100) * 100 - 10
%a. 
    plot([1:2:99],sqrt([1:2:99]))
%b. 
    A(1:2:10,2:2:10).*2
%c. 
    length(find(x>0))