% 5-11	You work for a chopstick company and have been appointed to take an
% overall inventory of chopsticks at every store location. Write a function
% called chopsticks that takes in an array of positive integers
% representing the number of individual chopsticks at each store.
% Unfortunately, one chopstick isn’t very useful, so unpaired chopsticks do
% not count in the overall inventory. Your function chopsticks must return
% the total number of complete pairs of chopsticks in inventory.
% Hint: The built-in MATLAB function mod(x, y) might be useful.
clear
clc

chopsticks([1 1 1 1 1 1]) % -> 0
chopsticks([1 2]) % -> 1
chopsticks([1 2 5 7]) % -> 6
