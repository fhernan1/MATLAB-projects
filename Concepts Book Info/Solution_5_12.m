% 5.12	Write a function called replace that takes in a vector v and
% returns a modified vector of the same size. The function will replace all
% values in V greater than 60 with a –1 and all numbers in v perfectly
% divisible by 10 with the number 10. All other numbers in the vector
% should be changed to zeros. 
% Hint: mod(30,10) gives the remainder of 30/10. 
% Example:
replace([0 12 30 50 42 81 10]) % -> [0 0 10 10 0 -1 10]
