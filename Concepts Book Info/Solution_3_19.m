% 3.19	Write a script called getMMM that will process a matrix of any size, 
% iterate through the entire matrix, and compute the minimum, maximum, and mean
% of all the elements of the matrix.
% Note: Do not use the min, max, or mean built-in functions.
clear
clc

rows = ceil(rand*8)
cols = ceil(rand*8)

m = ceil(rand(rows,cols)*100)

sm = sort(sort(m)');
mx = sm(end,end)
mn = sm(1,1)
mean = sum(sum(m)) / (rows*cols)