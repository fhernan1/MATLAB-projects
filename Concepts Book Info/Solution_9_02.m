% 9.2	You know that SIGMA refers to the function “summation of.” For example:
%    SIGMA(x=2:5)(x(x-1)) = (2 * 1) + (3 * 2) + (4 * 3) + (5 * 4) = 40 
% Similarly, the symbol BigPI is used to represent “product of.” For example:
%    BIGPI(x=2:5)(x(x-1)) =  (2 * 1) * (3 * 2) * (4 * 3) * (5 *4) = 2880
% a.	Identify specifically the three aspects of recursion as they apply to this problem.
% b.	Write a recursive function called myMultiOf that takes in n and
% returns y evaluated as the following: BIGPI(x=2:n)(x(x-1))
%  
% You may assume that n is an integer that is greater than 1.
clear
clc

done = false;
while ~done
    N = input('enter a number: ');
    done = (N <= 0) || (rem(N,1) > 0);
    if ~done
        fprintf('myMultiOf(%d) is %d\n', N, myMultiOf(N))
    end
end
