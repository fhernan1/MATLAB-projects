% Chapter 4, Problem 2

clear
clc

% 4-2	You must use either for or while to solve the following problems.    
% a.Iterate through a vector, A, using a for loop and create a new vector,
% B, containing logical values. The new vector should contain true for
% positive values and false for all other values. For example, if
A = [-300 2 5 -63 4 0 -46]
% B = [false true true false true true false]
for i = 1:length(A)
    if A(i) < 0
        B(i) = false;
    else
        B(i) = true;
    end
end
B
% b.	 Iterate through the vector, A, using a while loop and return a new
% vector, C, containing true for positive values and false for all other
% values.
count = 1;
while length(A) ~= 0
    if A(1) < 0
        C(count) = false;
    else
        C(count) = true;
    end
    A(1) = [];
    count = count + 1;
end
C
% c.	Iterate through a logical array, N, using a for loop and return a
% new vector, M, containing the value 2 wherever an element of N is true
% and the value -1 (not a logical value) wherever N is false. For example,
% if
N = [true false false true true false true] % the result should be
%   M = [2 -1 -1 2 2 -1 2]
for i = 1:length(N)
    if N(i)
        M(i) = 2;
    else
        M(i) = -1;
    end
end
M
% d.	Iterate through an array, Z, using a while loop. Replace every
% element with the number 3 until you reach a number larger than 50. Leave
% the rest unchanged. For example, if
Z = [4 3 2 5 7 9 0 64 34 43]  %, after running your script,
% Z = [3 3 3 3 3 3 3 3 34 43]
count = 1;
while Z(count) <= 50
    Z(count) = 3;
    count = count + 1;
end
Z(count) = 3;
Z
