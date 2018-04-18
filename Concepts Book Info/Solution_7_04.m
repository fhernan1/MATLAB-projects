% 7.4	In this exercise, we will use a somewhat artificial cell array to build
%       some fundamental cell array operations. We will use a cell array containing vectors
%       with random sizes and contents, and then process it with a number of standard operations.
% a.	Write a function called randomVector that first generates a random size (between 1 and 5)
%       and then fills a vector of that size with random integers in the range (0 …100).
% b.	Generate another random number between 5 and 25 that is the size of the cell array, and 
%       build a cell array randVCells of that size by calling randomVector that many times.
% c.	Write a function called traverse that iterates across randVCells displaying each vector 
%       on a separate line in the Command window.
% d.	Write a function called map that consumes rvca, a random vector cell array, and produces 
%       a new cell array of the same size with each of the vectors in rcva reversed. Test this new
%       cell array with traverse.
% e.	Write a function called filter that consumes rvca, a random vector cell array, and produces
%       a new, shorter cell array containing only those cells from the original array whose lengths 
%       are greater than 3.
% f.	Write a function called fold that consumes rvca, a random vector cell array, and produces a
%       number that is the total value of all the items in all the vectors in the cell array.
% g.	Write a function called largest that consumes rvca, a random vector cell array, and produces
%       the largest vector. The largest vector is that with the greatest length. If two are of equal
%       length, the vector with the greatest sum will be returned.
% h.	Write a function called search that consumes rvca, a random vector cell array, and finds the
%       first vector of length 1 (a scalar).

%% Ans:
clear
clc

%% Part b
n = round(rand*20 +5);
randVCells={};
for in = 1:n
    randVCells{in}=randomVector;
end

%% Part d
disp('Testing the map function using the traverse function')
for in = 1:n
    disp(sprintf('Original %dth value is -',in))
    traverse(randVCells(in))
    disp(sprintf('%dth value after putting through the map function is -',in))
traverse(map(randVCells(in)))
end


