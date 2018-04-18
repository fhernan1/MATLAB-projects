% 3.20	Write a script called pyramid that processes 
% a positive, odd integer N and produces a N by (2* N - 1)
% array containing a pyramid of numbers. 
% Example:
%  N = 5:
% ans =
% [0 0 0 0 1 0 0 0 0 
%  0 0 0 2 1 2 0 0 0 
%  0 0 3 2 1 2 3 0 0 
%  0 4 3 2 1 2 3 4 0 
%  5 4 3 2 1 2 3 4 5]
clear
clc

n = 7
b = tril(cumsum(ones(n))');
ans = [b(:,end:-1:2) b]


