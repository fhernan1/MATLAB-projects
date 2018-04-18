% 3.11	You are given a vector excalibur of undeterminable length. However, 
% you do know that it has an odd number of elements. excalibur is said to be magical if 
% its middle element is a prime number. Write a MATLAB script that will create the
% variable sword that holds the value magical if excalibur is magical or the phrase 
% just a plain sword if it isn’t magical.
% You may use the following functions:
% a.	isprime(…) e.g.: isprime(3)=1
% b.	floor(…) For example: floor(3.999999)=3
clear
clc
l = floor(rand * 40 + 10)
l = 2*l + 1
excalibur = floor(rand(1,l) * 1000)
middleindex = floor(length(excalibur)/2)+1
if isprime(excalibur(middleindex))
    sword = 'magical'
else
    sword = 'plain sword'
end
