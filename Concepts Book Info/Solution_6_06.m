% 6-6	Write a function called myContains that takes in two strings. This
% function checks to see if the second string is located inside the first
% string and returns the starting point of that substring. If the substring
% is not located inside the primary string, then the function returns zero.
clear
clc

if myContains('George Burdell', 'dell') ~= 11 % -> 11
    disp('myContains(''George Burdell'', ''dell'') should be 11')
end
if myContains('CS1371','131') ~= 0 % -> 0
    disp('myContains(''CS1371'', ''131'') should be 0')
end
if myContains('GaTech', 'GaTech') ~= 1 % -> 1 
    disp('myContains(''GaTech'', ''GaTech'') should be 1')
end
disp('end of test')

