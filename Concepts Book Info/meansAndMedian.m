% 5.2	Write a function meansAndMedian that takes in a vector of numbers, V, and returns the arithmetic and geometric means, 
% as well as the median. You can assume that the numbers in V are sorted in ascending order. 
% You may not use the built-in functions mean() or median().
% <begin Hint>
% Hint: The geometric mean is the product of the terms raised to the power 1/n where n is the number of terms.
% <end Hint>

function [arithmetic geometric median] = meansAndMedian(V)

    if mod(length(V), 2) == 1
        median = V(floor(length(V)/2) + 1);
    else
        median = (V(length(V)/2) + V(length(V)/2+1) ) / 2;
    end

    sum = 0;
    prod = 1;
    for x = V
        sum = sum + x;
        prod = prod * x;
    end
    arithmetic = sum / length(V);
    geometric = prod ^ (1/length(V));