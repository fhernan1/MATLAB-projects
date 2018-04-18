% Chapter 9, Problem 2
function Ch_09_P_02 

clear
clc
% 9-2	Write a recursive function called oddfact(n) which takes in a
% number and returns the factorial of the odd numbers between the given
% number and 1. For example:
 oddfact(4) %returns 3
 oddfact(9) %returns  945 = 9*7*5*3*1
end

function fact = oddfact(n)
    if n == 1
        fact = 1;
    elseif mod(n, 2) == 0
        fact = oddfact(n-1);
    else
        fact = n*oddfact(n-2);
    end
end
