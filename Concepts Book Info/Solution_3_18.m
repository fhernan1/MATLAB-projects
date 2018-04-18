% 3.18	Write a script to create a multiplication table.
% This should be a 10 by 10 array where the product of 1*1 is in the upper
% left square and the product of 10*10 is in the bottom right. 
% The beginning should look like this: 
clear
clc

a = ones(10,10);
for i = 1:10
    for j = 1:10
        a(i,j) = i*j;
    end
end
a

        