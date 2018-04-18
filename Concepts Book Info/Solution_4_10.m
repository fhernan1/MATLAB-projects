% 4.10	You are given a variable named sideCount specifying the number of
% sides on a geometric figure. You need a string containing the name of the
% shape according to the value of sideCount. Write the instructions to
% calculate the variable ans using the following table:
% Value of sideCount	Value of ans
% Less than 3	'Not a shape'
% 3	'Triangle'
% 4	'Quadrilateral'
% 5	'Pentagon'
% Greater than 5	'Other'
clear
clc

% Solution 4-10
sideCount = ceil(rand*6)
if sideCount < 3
    ans = 'Not a shape'
elseif sideCount==3
    ans = 'Triangle'
elseif sideCount==4
    ans = 'Quadrilateral'
elseif sideCount==5
    ans = 'Pentagon'
else
    ans = 'Other'
end