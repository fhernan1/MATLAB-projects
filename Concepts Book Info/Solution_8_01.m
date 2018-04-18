% 8.1	You have a client who wants you to work on her old data files.
% She’s an engineer, and wants you to use MATLAB for the project. Luckily,
% all of the old data is stored in simple tab-delimited text files.
% Unluckily, the first row of every data file is full of meaningless
% numbers. As a quick check to verify that you’re capable of solving her
% problems, she has asked you to write a few MATLAB functions.
% a.	Write a MATLAB function called readData that takes the name of a
% tab-delimited text file and returns a 2-dimensional array of the data in
% the file, skipping the first row of data.
clear
clc
A = readData('File_1.txt')
B = readData('File_2.txt')

% b.	Using your readData function from part a, write another function
% maxMerge that takes the name of two of these tab-delimited files and
% returns a single 2-dimensional array where each element of the array is
% the larger of the corresponding elements from the two data files. For
% example,
% File 1	File 2	maxMerge
%  0  0  0	  0   0   0	
% 10 20 30	  2   4   8	 10  20  30
% 45 55 63	 16  32  64	 45  55  64
% 80 90 99	128  56 512	128  90 512
% Notice that the first row is ignored, as specified by the requirements of
% the readData function.
maxMerge('File_1.txt','File_2.txt')
