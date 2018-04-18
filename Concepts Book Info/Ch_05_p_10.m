% Chapter 5, Problem 10
function Ch_05_P_10 

clear
clc
% 5-10	Write a function called multiSum(A). This particular function 
% should take in a N × M array,  A, and  return four results:
% A 1 × M vector with the sum of the columns, 
% A N × 1 vector with the sum of the rows, and 
% Two numbers containing the sums of the two diagonals,  
% the major diagonal first.
% For example:
[sc sr da db] = multiSum([1 2 3; 4 5 6; 7 8 9]) % should return 
% [12 15 18], [6 15 24]’, 15 and 15
[sc sr da db] = multiSum([0 2 3; 4 0 6; 7 8 0]) %should return 
% [11 10 9], [5 10 15]’, 0 and 10
[sc sr da db] = multiSum(eye(5,5)) %should return 
% [1 1 1 1 1], [1 1 1 1 1]’, 5 and 1
[sc sr da db] = multiSum([]) %should return [], [], 0 and 0
%
end


function [colSum rowSum D1Sum D2Sum] = multiSum(Array)
 
    colSum = sum(Array);
    rowSum =sum(Array')';
    D1Sum = sum(diag(Array));
    D2Sum = sum(diag(Array(end:-1:1,:)));
end
