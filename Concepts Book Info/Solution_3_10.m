% 3.10	The Taylor polynomial is a powerful mathematical tool that helps approximate the 
% value of various functions within a reasonable range of approximation. 
% For example, it helps in the calculation of an irrational number like e.
% The Taylor polynomial of degree n for  any x is given by:
%  
% Using n = 10, write the MATLAB commands to calculate the value of   
% ( x = 2, in the formula). Your final answer should be stored in the variable
% e2approx. You cannot use iteration.
clear
clc

n= 0:10;
x=2;
y =(x.^n)./ factorial(n);
s=sum(y)