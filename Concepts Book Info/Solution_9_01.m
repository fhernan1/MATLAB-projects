% 9.1	We will write the recursive function oddTotal to solve the
% following problem: the user will input a positive integer N, and your
% function is expected to add up all the odd integers between 1 and N. 
% a.  Identify specifically the three aspects of recursion as they
% apply to this problem.
% b.  Write this function in recursive style
% c.  Write a script to repeatedly ask the user for a number, compute
% oddTotal of that number if it is positive, or otherwise stop the
% iteration.
clear
clc

done = false;
while ~done
    N = input('enter a number: ');
    done = (N <= 0) || (rem(N,1) > 0);
    if ~done
        fprintf('oddTotal(%d) is %d\n', N, oddTotal(N))
    end
end
