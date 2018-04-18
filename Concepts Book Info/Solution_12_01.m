% 12.1	Do the following matrix exercises:
clear
clc
% a.		Create a 5 × 6 matrix A that contains random numbers between 0 and 10.
A = 10*rand(5,6)
% b.	Create a 6 × 5 matrix B that contains random numbers between 0 and 10.
B = 10*rand(6,5)
% c.		Find the inverse of matrix A*B and store it in the variable, C.
C = inv(A*B)
% d.	Create a new matrix D that is the same as A except that all values
% less than 5 are replaced by zero. (Do not use iteration to create D).
D = A;
D(D<5) = 0
% e.		Create a new matrix F that is the same as A except that all
% values less than 5 are replaced by zero; use iteration to create F.
[rows cols] = size(A);
for r = 1:rows
    for c = 1:cols
        if A(r,c) < 5
            F(r,c) = 0;
        else
            F(r,c) = A(r,c);
        end
    end
end
F
% f.	Create a new matrix G that is the “horizontal” reverse of A. For example:
%  [1 2 3         [3 2 1
%   3 2 5    =>    5 2 3
%   1 7 4]         4 7 1]
G = A(:,end:-1:1)
% g.	Find the minimum value among all the elements in A and store your answer in the variable H.
% 
H = min(min(A))
