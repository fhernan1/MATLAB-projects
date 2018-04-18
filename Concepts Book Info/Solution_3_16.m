% 3.16	Write a script called createArray that does the following:
% a.	Considers a positive integer N that is divisible by either two or three.
% b.	Creates an array filled with all the numbers from one to N.
% c.	If N is divisible by two, the script should produce a two-column array; 
%        otherwise, it should produce a three-column array.
% d.	Returns the filled array.
% Note: You can use the MATLAB function rem(x,y) to check if the remainder of
% dividing x by y is equal to zero. Also, it does not matter if your 
% result is in ascending or descending order.
% Examples:
N = 8
% < your script here> 
% ans =
%      8     7
%      6     5
%      4     3
%      2     1
% >> N = 9
% <your script here> 
% ans =
%      9     8     7
%      6     5     4
%      3     2     1

if rem(N,2)==0
    a = ones(N/2,2)
    a(1:N/2,1) = a(1: N/2,1).* N:-2:2
    a(1:N/2,2) = a(1: N/2,2).* N-1:-2:1
elseif rem(N,3)==0
     a = ones(N/3,3)
     a(1: N/3,1) = a(1: N/3,1).* N:-3:3
    a(1: N/3,2) = a(1: N/3,2).* N-1:-3:2
    a(1: N/3,3) = a(1: N/3,3).* N-2:-3:1
end

