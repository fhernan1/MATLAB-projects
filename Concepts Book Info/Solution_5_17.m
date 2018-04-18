% 5-17	Write and test a function called myFactor that consumes a positive
% integer and returns the prime factors of that integer in a vector. If a
% factor is repeated then it should be in the array for each time this
% factor appears. You may not use the built-in functions primes() or
% factor(), but you may use isprime(). 
% Note: The number 1 is not prime, but myFactor(1) should return 1.
clear
clc
% Example:
myFactor(70) % -> [2 5 7]
myFactor(24) % -> [2 2 2 3]
myFactor(169000)