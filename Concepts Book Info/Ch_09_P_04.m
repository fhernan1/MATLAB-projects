% Chapter 9, Problem 4
function Ch_09_P_04 

clear
clc
% 9-4	Create a recursive function with a wrapper to protect it from
% illegal values. The function name should be recursiveFib. It should takes
% in a number n and returns the nth Fibonacci number.  You should ensure
% that n is a non-negative integer, and announce an error if that is not
% the case.
% Fibonacci numbers are defined as:
%       F(n) = 0                if n = 0
%       F(n) = 1                if n = 1
%       F(n) = F(n-1) + F(n-2)  otherwise.
% This produces the following sequence of numbers:
%        0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55...
% For example: 
   a = recursiveFib(0) %should return 0
   b = recursiveFib(1) %should return 1
   d = recursiveFib(8) %should return 21
   c = recursiveFib(-1) %should cause an error
end

function res = recursiveFib(val)
    if val < 0
        error('n cannot be negative');
    elseif mod(val, 1) ~= 0
        error('n must be an integer');
    else
        res = fib(val);
    end
end

function f = fib(val)
    if val == 0
        f = 0;
    elseif val == 1
        f = 1;
    else
        f = fib(val-1) + fib(val-2);
    end
end
