% Chapter 12, Problem 1
function Ch_12_P_01 

clear
clc
% This is a set of simple matrix manipulations. 
% a.	Create a five by six matrix, A, that contains random numbers
% between 0 and 10.
A = 10*rand(5, 6)
% b.	Create a six by five matrix, B, that contains random numbers
% between 0 and 10
B = 10*rand(6, 5)
% c.	Find the inverse of matrix A*B and store it in the variable, C.
C = inv(A*B)
% d.	Without iteration, create a new matrix D that is the same as A
% except that all values less than 5 are replaced by zero.
D = A
D(D<5) = 0
% e.	Using iteration, create a new matrix F that is the same as A except
% that all values less than 5 are replaced by zero.
[a b] = size(A);
F = A;
for i = 1:a
    for j = 1:b
        if A(i, j) < 5
            F(i, j) = 0;
        end
    end
end
F
% f.	Create a new matrix G that is the matrix A with the columns
% reversed. For example: if A is [1 2 3; 3 2 5; 1 7 4] G should be 
% [3 2 1; 5 2 3; 4 7 1]
G = A(:, end:-1:1)
% g.	Find the minimum value amongst all the elements in A and store your
% answer in the variable H.
H = min(min(A))
