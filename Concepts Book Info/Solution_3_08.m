% 3.8	Write the commands that take a vector of numbers, a, and return a new vector b, 
%  containing the cubes of the positive numbers in a. If a particular number is negative, 
%  then 0 is put in its place.
% Example: 
% [1 2 -1 5 6 7 -4 3 -2 0] will produce [1 8 0 125 216 343 0 27 0 0]
% <begin Hint>
% Hints: 
% 1. It might be helpful as an intermediate step to create another vector 
  % consisting of only 1s and 0s, corresponding to the positive and negative values of a, respectively.
% <end Hint>
clear
clc

a = [1 2 -1 5 6 7 -4 3 -2 0];
b = a;
b(a<0)= 0;
b(a>0) = b(a>0).^3