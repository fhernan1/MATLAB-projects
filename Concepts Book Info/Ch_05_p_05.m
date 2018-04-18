% Chapter 5, Problem 5
function Ch_05_P_05 

clear
clc
% 5-5	Write a function called myMin4 that will take in 4 numbers  
% and returns the minimum value and an index showing which parameter   
% it was. You may not use the built-in min() function. For example:
[m v] = myMin4(1,3,5,7) % should return 1 and 1
[m v] = myMin4(8,9,2,4) % should return 2 and 3
end


function [val ind] = myMin4(a,b,c,d)
 
    vector= [a b c d];

    ind=1;
    val=a;
    for index= 1:4
        if vector(index) < vector(ind) 
            val=vector(index);
            ind=index;
        end
    end
end
