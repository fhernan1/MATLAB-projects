% Chapter 5, Problem 6
function Ch_05_P_06 

clear
clc
% 5-6	Write the function meansAndMedian which takes in a vector of 
% numbers and returns the arithmetic and geometric means, as well as  
% the median.  You may not use the built-in functions mean(), median(),  
% or geomean().  However, you could type "help geomean" to familiarize  
% yourself with computing the geometric mean of a group of numbers.  
% Hint:  the built-in function sort() might help to compute the median  
% of the vector.
[a g m] = meansandmedian(1:10)
v = floor(100*rand(1,10));
[a g m] = meansandmedian(v)
end

function[aMean gMean myMed]= meansandmedian(vector)
 
    aMean= sum(vector)/length(vector);
    gMean= (prod(vector)).^(1/length(vector));

    sVector = sort(vector);
    index = ceil(length(sVector)/2);
    myMed=sVector(index);
end
