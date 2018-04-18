% Chapter 9, Problem 5
function Ch_09_P_05 

clear
clc
% 9-5	Create and test a function called recursiveMin that takes in a
% vector and returns the element with the minimum value and the index of
% that element as separate returned values, much as the standard min(…)
% function.  If the input vector is of length zero, your function should
% return two empty vectors.  If the input vector contains two minimum
% elements of equal value, your function should return the index of the
% first element.  Create suitable test cases and use the built-in function
% min(…) only to test your answers.
% For example: 
      [m n] = recursiveMin([]) %should return [] and []
      [m n] = recursiveMin([5]) %should return 5 and 1
      [m n] = recursiveMin([5 2]) %should return 2 and 2
      [m n] = recursiveMin([2 5 2]) %should return 2 and 1
      [m n] = recursiveMin([2 5 2 1 6 7]) %should return 1 and 4
end

function [min ind] = recursiveMin(vect)
    if length(vect) == 0
        min = [];
        ind = [];
    elseif length(vect) == 1
        min = vect(1);
        ind = 1;
    elseif length(vect) > 1
        [a b] = recursiveMin(vect(2:end));
        if vect(1) <= a
            min = vect(1);
            ind = 1;
        else
            min = a;
            ind = b + 1;
        end
    end
end
