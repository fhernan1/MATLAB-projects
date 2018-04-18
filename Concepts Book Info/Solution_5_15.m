% 5-15	We need to generate a strange series of numbers. Here are the steps involved:
% a.	Write the function squares that consumes a positive integer n, and
% returns a vector that is the squares of the numbers from 1 to n
% inclusive.
% b.	Write the code for the function mysteryFunction that consumes a
% vector and produces a vector of the same length. Each item in the new
% vector will be the sum of the corresponding item and its predecessor in
% the old vector.
clear
clc
% Examples:
mysteryFunction(1:5) % -> [1 3 5 7 9]
mysteryFunction(squares(12)) % -> 
%    [1  5 13 25  41  61  85 113 145 181 221 265]
