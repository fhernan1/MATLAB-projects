% 7.3	We need to be able to transform numerical vectors into cell arrays, and cell arrays to vectors.
% a.	Write a function called vecToCells that converts a vector of numbers into a cell array of strings. 
%       Each item in the string will be the value of the cell array as generated by sprintf(�) using the 
%       format string �%g�.
% b.	To test this function, build a vector with random length (between 20 and 100) of random numbers in
%       the range (0 ... 1,000,000), and pass this vector to your vecToCells function, displaying the results
%       in the Command window.
% c.	Write and test a function that accepts a cell array of strings and builds a vector of numbers of the 
%       same length. Each item in the output vector will be the length of the strings in each cell array.

%% Ans:
%% Part a
function ca = vecToCells(vec)
ca={};
for in = 1 :length(vec)
    ca{in}=sprintf ( '%g', vec(in) );
end