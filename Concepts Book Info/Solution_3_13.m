% 3.13	Write a script that uses a two-dimensional array A and doubles the size of the array
% by replicating each item horizontally, vertically, and diagonally.
% You should not use iteration to solve this problem.
clear
clc
% Example:
A = [1 4 7; 8 9 3]
% < your script here >
% ans =
%      1 1 4 4 7 7
%      1 1 4 4 7 7
%      8 8 5 5 3 3
%      8 8 5 5 3 3

int = [A(1,:);A(1,:);A(2,:);A(2,:)]
ans = [int(:,1),int(:,1),int(:,2),int(:,2),int(:,3),int(:,3)]