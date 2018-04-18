% 5.6	The U.S. Postal Service has given you the task of calculating the
% “check digit” of its Zip codes. The check digit is calculated by adding
% the digits of the five-digit Zip code and seeing what would have to be
% added to the sum to get a multiple of 10. For example, the check digit
% for the Zip code 51220 would be 0 (as 5 + 1 + 2 + 2 + 0 = 10), while the
% check digit for 82125 would be 2 (as 8 + 2 + 1 + 2 + 5 = 18). Write a
% MATLAB function called checkDigit that takes in a vector of Zip code
% digits that range from 0 to 9 and returns the check digit. Also check
% that the Zip code provided is a valid Zip code; that is, it is of length
% 5. If it is not a valid Zip code, return –1.
clear
clc

% Examples:
checkDigit([9 8 0 3 4]) % should return 6.
checkDigit([7 2 1 4]) % should return –1.
