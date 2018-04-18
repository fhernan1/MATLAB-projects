% Chapter 9, Problem 6
function Ch_09_P_06 

clear
clc
% 9-6	Write a recursive function named sumRings that consumes an M by N
% array and outputs a vector of the sums of its consecutive rings.  If the
% input array is a 1xN or Mx1 (row or column vector), find the sum of its
% elements.  If the input array is empty, the output should be an empty
% vector (not zero).
% You may only use the following built-in functions: size, sum, isempty, or
% length.  You must use recursion to solve this problem.
% For example:
      A = [1 2 3
           4 5 6
           7 8 9]
      sumA = sumRings(A) %should return [40 5]
      B = [1   2   3   4
           5   6   7   8
           9  10  11  12]
      sumB = sumRings(B) %should return [65 13]
      C = [1   2   3   4
           5   6   7   8
           9  10  11  12
          13  14  15  16]
      sumC = sumRings(C) %should return [102 34]
      D = [1 2 3 4]'
      sumD = sumRings(D) %should return 10
end


function ringsum = sumRings(arr)
    [a b] = size(arr);
    if a == []
        ringsum = [];
    elseif a == 1 || b == 1
        ringsum = sum(arr);
    elseif a == 2 || b == 2
        ringsum = sum(sum(arr));
    else
        ringsum = sum(sum(arr(:, [1 end]))) + sum(sum(arr([1 end], 2:end-1)));
        ringsum = [ringsum sumRings(arr(2:end-1, 2:end-1))];
    end
end

