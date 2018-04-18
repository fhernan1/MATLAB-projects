% 16.4	Write and test an in place version of merge sort that makes use of the global array, b.
clear
clc

global b
b = [5 4 10 2 9 6 3 7 8 1]
mergesort(1, length(b))
b