% 9.6	For this problem you will be required to write three recursive
% functions: recurSum, recurProd, and recurFact. 
% a.	recurSum will take in a vector and compute the sum of the elements
% of the vector with the following header: 
% function ans = recurSum(arr)
clear
clc
vec = ceil(100*rand(1,ceil(5*rand(1,1) + 5)))
if(recurSum(vec) ~= sum(vec))
    disp('bad recurSum')
end
% b.	recurProd will take in a vector and compute the product of the
% elements of the vector with the following header: 
% function ans = recurProd(arr)
if(recurProd(vec) ~= prod(vec))
    disp('bad recurProd')
end
% c.	recurFact will take in a number and return the factorial of the
% number with the following function header:
% function ans = recurFact(num)
n = vec(1);
if(recurFact(n) ~= recurProd(1:n))
    disp('bad recurFact')
end

disp('end of test')