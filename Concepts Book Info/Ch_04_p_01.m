% Chapter 4, Problem 1

clear
clc

% 4-1	Write a script to solve this problem. Assume you have a vector
% named D. Using iteration (for and/or while) and conditionals (if and/or
% switch), separate vector D into four vectors posEven, negEven, posOdd and
% negOdd. 
% posEven contains all of the positive even numbers in D.
% negEven contains all of the negative even numbers in D.
% posOdd contains all of the positive odd numbers in D.
% negOdd contains all of the negative odd numbers in D.

D = [-4,-3,-2,-1,0,1,2,3,4]; 
posEven = [];
negEven = [];
posOdd = [];
negOdd = [];
for v = D
    if v >= 0
       if mod(v,2) == 0
          posEven = [posEven v]; 
       else
          posOdd = [posOdd v]; 
       end
    else
       if mod(v,2) == 0
          negEven = [negEven v]; 
       else
          negOdd = [negOdd v]; 
       end
    end
end
posEven
negEven
posOdd
negOdd
