% Chapter 5, Problem 1
function Ch_05_P_01 
% note: this is a sneaky trick to allow all solution functions to be 
%       in one file.  You would normally save the functions in their
%       own file as instructed in the text
clear
clc
% 5-1	Write a function called checkFactor that takes in two numbers,
% and checks if they are divisible, i.e. if the first is divisible 
% by the second. You may assume that both numbers are positive. Your 
% function should return a logical value, true or false. For example,
checkFactor(25,6) % should return false.
checkFactor (9,3) % should return true.
checkFactor (3,9) % should return false.
% Hint: mod(x,y) gives the remainder when x is divided by y.
end

function [answer]= checkFactor(a,b)
    answer = mod(a,b) == 0; 
end
