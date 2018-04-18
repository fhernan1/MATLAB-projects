% 5-8	Write a function called crazyVector that take in a vector and two
% integers (v,m,n) respectively. This function returns a vector containing
% the mth, 2mth, 3mth, and so on elements from the original vector each
% raised to the power n. 
clear
clc
% Examples:
crazyVector([2 3 5 6 7 8 3 5 6 7], 2, 3) 
% -> [27   216   512   125   343]
crazyVector ([2 3 5 6 7 8 3 5 6 7], 3, 2) 
% -> [25    64    36]
