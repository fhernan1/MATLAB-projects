% Chapter 5, Problem 8
function Ch_05_P_08 

clear
clc
% 5-8	Write a function called sumAndAverage. It should take in an 
% array of numbers and return the sum and average of the array in that  
% order. For example:
[s a] = sumAndAverage([3 2 3 2]) %should return 10 and 2.5
[s a] = sumAndAverage([5 -5 2 8 0]) %should return 10 and 2
[s a] = sumAndAverage([]) %should return 0 and 0
end

function[mySum myAvg]= sumAndAverage(Arr)
 
myAvg=mean(Arr);
mySum=sum(Arr);
end
