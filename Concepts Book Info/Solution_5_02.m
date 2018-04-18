% 5.2	Write a function meansAndMedian that takes in a vector of numbers,
% V, and returns the arithmetic and geometric means, as well as the median.
% You can assume that the numbers in V are sorted in ascending order. You
% may not use the built-in functions mean() or median().
% Hint: The geometric mean is the product of the terms raised to the power
% 1/n where n is the number of terms.

clear
clc

vec = rand(1, ceil(100*rand(1,1))) * 100
[mn, med] = meansAndMedian(vec)

