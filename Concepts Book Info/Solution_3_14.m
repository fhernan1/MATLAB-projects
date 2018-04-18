% 3.14	Write a script that changes one array a into another array b of the
% same size.The first number in each row of b is the “macho” number; it cannot
% stand to have any larger numbers following it on the row. Any number larger 
% than it on the row is set to zero.
clear
clc
% Example:
a = [1 2 3; 5 4 3; 9 10 8]
% < your script here> 
% ans = 
%   1  0  0
%   5  4  3
%   9  0  8

ans = a;
[row col] = size(a)
for i = 1:row
    for j = 2:col
        if ans(i,j)> ans(i,1)
            ans(i,j) = 0
        end
    end
end
