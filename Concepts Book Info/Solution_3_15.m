% 3.15	Write a script to process a two-dimensional array named A. 
% This script will calculate the product of the even values in each row and store that
% product in a vector. If a row has one even value, the product will be simply that value.
% If there aren’t any even values, the product is one. 
clear
clc
% Example:
A = [1 2 4; 3 6 9; 0 6 8; 5 7 9]
% < your script here> 
% ans = [8 6 0 1]

A(mod(A,2) > 0) = 1;
ans = prod(A')