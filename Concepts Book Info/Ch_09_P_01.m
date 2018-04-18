% Chapter 9, Problem 1
function Ch_09_P_01 

clear
clc
% 9-1	For this problem you will be required to write three functions -
% recurSum, recurProd and fibVector. The first one will take in a vector
% and compute the sum of the elements of the vector. The second one will
% take in a vector and compute the product of the elements of the vector.
% The third one will take in a number, N, and return a vector containing
% the first N terms of the Fibonacci sequence. You must use recursion to
% complete these functions. You may not use for loops, while loops or the
% MATLAB functions sum, prod or factorial. Your function headers should be:
% function ans = recurSum(arr)
% function ans = recurProd(arr)
% function vec = fibVector(num)
    vec = floor(rand(1,10) * 20)   
    recSum = recurSum(vec)
    recProd = recurProd(vec)
    fibVec = fibVector(10)
end

function ans = recurSum(arr)
    if length(arr) == 1
        ans = arr;
    else
        ans = arr(end) + recurSum(arr(1:end-1));
    end
end

function ans = recurProd(arr)
    if length(arr) == 1
        ans = arr;
    else
        ans = arr(end)*recurProd(arr(1:end-1));
    end
end

function vec = fibVector(num)
    if num == 1
        vec = 0;
    elseif num == 2
        vec = [0 1];
    else
        a = fibVector(num-1);
        b = fibVector(num-2);
        vec = [fibVector(num-1) a(end) + b(end)];
    end
end
