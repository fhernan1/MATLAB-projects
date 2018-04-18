% Chapter 5, Problem 7
function Ch_05_P_07 

clear
clc
% 5-7	Given an array of numbers that could be negative, write a 
% function posavg(a) to calculate and return the average (mean) of  
% the non¬negative numbers in the single dimensional array,  
% a. One such solution is:
% mean(a(find(a>0)))
% In order to test your understanding of class concepts, re-implement  
% the posavg(a) function using iteration. You may not use the  
% built-in functions sum(…), find(…), or mean(…) in your solution.
posavg(-3:10)
v = floor(100*rand(1,10) - 20);
posavg(v)
posavg(-(1:10))
end

function answer = posavg(vec)
    sum = 0;
    count = 0;
    for v = vec
       if v >= 0
          sum = sum + v;
          count = count + 1;
       end
    end
    answer = sum / (count + eps);
end